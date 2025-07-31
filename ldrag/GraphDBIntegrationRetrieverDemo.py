import json
import os
from pathlib import Path

from ldrag import retriever
from ldrag import ontology
from langchain_neo4j import Neo4jGraph
import dotenv
dotenv.load_dotenv(dotenv_path=Path(__file__).parent / ".env")

def retrieve_information(query, ontology: ontology.Ontology  ):
    """
    Retrieve information based on the question using the GraphDB integration.
    """

    retrieved_info = retriever.information_retriever(
        user_query=question,
        ontology=ontology
    )
    return retrieved_info


def build_ontology_from_neo4j():
    """
    Build an Ontology object from the Neo4j database, dynamically using all labels and properties.
    """
    neo4j_pass = os.getenv("NEO4J_PASSWORD")
    neo4j_url = os.getenv("NEO4J_URL") or os.getenv("NEO4J_URI")
    neo4j_user = os.getenv("NEO4J_USER")
    graph = Neo4jGraph(
        url=neo4j_url,
        username=neo4j_user,
        password=neo4j_pass
    )

    # Query all nodes with their labels and properties
    node_query = """
    MATCH (n)
    RETURN labels(n) AS labels, n.node_id AS node_id, n AS props
    """
    node_results = graph.query(node_query)
    print(f"Found {len(node_results)} nodes in the database.")
    # Query all relationships
    rel_query = """
    MATCH (n)-[r]->(m)
    RETURN n.node_id AS source, type(r) AS relation, m.node_id AS target
    """
    rel_results = graph.query(rel_query)

    # Build class map (label -> GenericClass)
    class_map = {}
    for row in node_results:
        labels = row["labels"]
        node_class_id = labels[0] if labels else "Unknown"
        if node_class_id not in class_map:
            # Find all outgoing class-level relations for this label
            class_connections = []
            for rel in rel_results:
                # Only add if both source and target have this label
                src = rel["source"]
                tgt = rel["target"]
                src_label = next((r["labels"][0] for r in node_results if r["node_id"] == src), None)
                tgt_label = next((r["labels"][0] for r in node_results if r["node_id"] == tgt), None)
                if src_label == node_class_id and tgt_label:
                    class_connections.append({"relation": rel["relation"], "target": tgt_label})
            explanation = row["props"].get("usecase") or row["props"].get("explanation") or ""
            class_map[node_class_id] = ontology.GenericClass(node_class_id=node_class_id, class_connections=class_connections, explanation=explanation)

    # Build Ontology
    onto = ontology.Ontology()
    for cls in class_map.values():
        onto.add_node_class(cls)

    # Build nodes with connections
    for row in node_results:
        node_id = row["node_id"]
        labels = row["labels"]
        node_class_id = labels[0] if labels else "Unknown"
        node_class = class_map.get(node_class_id)
        # Find all outgoing relationships for this node
        connections = [
            {"relation": rel["relation"], "target": rel["target"]}
            for rel in rel_results if rel["source"] == node_id and rel["target"]
        ]
        # Remove node_id and class_id from properties
        props = row["props"]
        kwargs = {k: v for k, v in props.items() if k not in {"node_id", "node_class_id"}}
        node = ontology.GenericNode(node_id=node_id, node_class=node_class, connections=connections, **kwargs)
        onto.add_node(node)
    return onto






if __name__ == "__main__":
    onto = build_ontology_from_neo4j()
    question = "what is the best model for a screw placement task?"
    result = retrieve_information(question, onto)
    print(result)
