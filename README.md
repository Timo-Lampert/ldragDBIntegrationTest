# LDrag - Ontology-Based Retrieval Augmented Generation

LDrag is a Python library for creating, managing, and querying knowledge graphs through an ontology-based approach combined with Large Language Models for Retrieval Augmented Generation (RAG).

## Disclaimer

This project is a work in progress and is not yet ready for production use. The codebase is under active development and subject to change. The Project is a Proof of Concept and is not intended for any specific use case. It is developed for the Carl-Zeiss Research Project KIDZ.

## Overview

This library provides tools to represent domain knowledge as an ontology, with machine learning models, datasets, and other entities as nodes within this knowledge graph. It enables:

- Converting trained scikit-learn models into ontology structures
- Adding dataset metadata from pandas DataFrames to the ontology
- Calculating and incorporating SHAP values for model explainability
- Converting between JSON and OWL ontology formats
- Visualizing ontology structures as interactive graphs
- Querying the ontology using natural language with GPT-powered retrieval

## Features

### Ontology Management
- Create and manipulate ontological structures with nodes, relationships, and classes
- Deserialize from and serialize to JSON
- Convert between JSON and OWL formats
- Generate graphical representations (static and interactive)

### Model Integration
- Convert sklearn models into ontology nodes
- Store model performance metrics (accuracy, precision, recall, F1, ROC AUC)
- Capture model weights and parameters
- Link models to their training datasets and tasks

### Dataset Handling
- Store dataset metadata including statistics for numerical attributes
- Link datasets to their attributes and models

### Explainability
- Calculate and store SHAP values for model explainability
- Link explanations to models and features

### Retrieval Augmented Generation
- Query the ontology using natural language
- Traverse the knowledge graph to find relevant information
- Visualize query exploration paths
- Use GPT to interpret and reason over ontology data

## Installation

```bash
# Installation instructions to be added
```

## Dependencies

- networkx
- matplotlib
- pyvis
- rdflib
- numpy
- pandas
- scikit-learn
- shap
- openai

## Usage Examples

### Loading an Ontology

```python
from ldrag.ontology import Ontology

# Load from JSON file
ontology = Ontology()
ontology.deserialize("ontology_base.json")
```

### Adding a Model to the Ontology

```python
from ldrag.ontology_io import sklearn_model_to_ontology
import sklearn

# Train a model
model = sklearn.ensemble.RandomForestClassifier()
model.fit(X_train, y_train)

# Add to ontology
sklearn_model_to_ontology(
    model=model,
    model_id="forest_model_1",
    dataset_id="my_dataset",
    task_id="classification_task",
    X_train=X_train,
    X_test=X_test,
    y_test=y_test,
    output_file="ontology.json"
)
```

### Adding Dataset Metadata

```python
from ldrag.ontology_io import add_dataset_metadata_from_dataframe
import pandas as pd

# Load dataset
df = pd.read_csv("data.csv")

# Add to ontology
add_dataset_metadata_from_dataframe(
    dataset_id="my_dataset",
    df=df,
    domain="finance",
    location="database",
    date="2023-01-01",
    models=["forest_model_1"],
    output_file="ontology.json"
)
```

### Visualizing the Ontology

```python
from ldrag.ontology import Ontology

ontology = Ontology()
ontology.deserialize("ontology.json")

# Create dynamic HTML visualization
ontology.create_dynamic_instance_graph("my_graph")
```

### Querying with Natural Language

```python
from ldrag.ontology import Ontology
from ldrag.retriever import information_retriever

ontology = Ontology()
ontology.deserialize("ontology.json")

# Query the ontology
result = information_retriever(
    ontology=ontology,
    user_query="How many rows does the dataset from September have?"
)
```

## Database Integration considerations
This Library contains demos to retrieve using a Neo4j database.
Migration towards a full database is subject to a few considerations:
- **Data Model**: A graphDB might be necessary to store the ontology as well as relationships.
- **Performance**: Optimization using the retriever function is necessary for larger datasets. The current implementation
loads the entire ontology into memory, which may not be feasible for very large graphs, very long paths to travel may pose additional issues. To combat this, a second demo is provided,
utilizing an approach using Cypher queries, as well as embeddings to retrieve relevant nodes from the database at scale.
However, The quality of the output is highly dependent on how the question is worded, as some Cypher queries
may not be able to retrieve the correct nodes. For example, finding the right node might not be possible unless the user is using the exact name of the node in their query. 

## Project Structure

- `ontology.py` - Core ontology classes and data structures
- `ontology_io.py` - Input/output operations for the ontology including ML model integration
- `retriever.py` - Retrieval Augmented Generation functionality
- `gptconnector.py` - OpenAI API connector for GPT model integration
- `config.py` - Configuration settings

## License

[Add license information]

## Contributing

[Add contribution guidelines]