CREATE CONSTRAINT IF NOT EXISTS FOR (n:SHAPValue) REQUIRE n.node_id IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:ProcessedAttribute) REQUIRE n.node_id IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:Preprocessing) REQUIRE n.node_id IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:Dataset) REQUIRE n.node_id IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:Screw) REQUIRE n.node_id IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:Material) REQUIRE n.node_id IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:Mechanical_Component) REQUIRE n.node_id IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:TestCase) REQUIRE n.node_id IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:Robotarm) REQUIRE n.node_id IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:Gripper) REQUIRE n.node_id IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:Task) REQUIRE n.node_id IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:GlobalInsight) REQUIRE n.node_id IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:Attribute) REQUIRE n.node_id IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:Model) REQUIRE n.node_id IS UNIQUE;

MERGE (ScrewPlacement:Task {node_id: 'ScrewPlacement'}) ON CREATE SET ScrewPlacement.usecase = 'This Task is part of a non-critical research experiment to demonstrate the capabilities of a training robot. A Robot has to place different screws into different holes, placed at different angles.';

MERGE (ScrewPicking:Task {node_id: 'ScrewPicking'}) ON CREATE SET ScrewPicking.usecase = 'This Task is part of a non-critical research experiment to demonstrate the capabilities of a training robot. A Robot has to pick up screws from different positions.';

MERGE (testRun:Attribute {node_id: 'testRun'}) ON CREATE SET testRun.mean = 2.0, testRun.min = 1.0, testRun.max = 3.0, testRun.std_dev = 0.816689;

MERGE (screwId:Attribute {node_id: 'screwId'}) ON CREATE SET screwId.mean = 770.508475, screwId.min = 530.0, screwId.max = 1080.0, screwId.std_dev = 191.102918;

MERGE (screwType:Attribute {node_id: 'screwType'});

MERGE (headWidth:Attribute {node_id: 'headWidth'}) ON CREATE SET headWidth.mean = 14.061017, headWidth.min = 8.0, headWidth.max = 24.65, headWidth.std_dev = 4.649031;

MERGE (headThickness:Attribute {node_id: 'headThickness'}) ON CREATE SET headThickness.mean = 5.471525, headThickness.min = 3.3, headThickness.max = 10.0, headThickness.std_dev = 1.885954;

MERGE (length:Attribute {node_id: 'length'}) ON CREATE SET length.mean = 50.169492, length.min = 30.0, length.max = 80.0, length.std_dev = 14.558003;

MERGE (weight:Attribute {node_id: 'weight'}) ON CREATE SET weight.mean = 20.823729, weight.min = 5.1, weight.max = 57.5, weight.std_dev = 12.894885;

MERGE (diameter:Attribute {node_id: 'diameter'}) ON CREATE SET diameter.mean = 7.20339, diameter.min = 5.0, diameter.max = 10.0, diameter.std_dev = 1.902986;

MERGE (coating:Attribute {node_id: 'coating'}) ON CREATE SET coating.mean = 0.254237, coating.min = 0.0, coating.max = 1.0, coating.std_dev = 0.435534;

MERGE (bracketType:Attribute {node_id: 'bracketType'});

MERGE (angle:Attribute {node_id: 'angle'}) ON CREATE SET angle.mean = 45.0, angle.min = 0.0, angle.max = 90.0, angle.std_dev = 33.548918;

MERGE (result:Attribute {node_id: 'result'}) ON CREATE SET result.mean = 0.578625, result.min = 0.0, result.max = 1.0, result.std_dev = 0.493896;

MERGE (niryo_2024:Dataset {node_id: 'niryo_2024'}) ON CREATE SET niryo_2024.amountOfRows = 2124, niryo_2024.amountOfAttributes = 12, niryo_2024.domain = 'RWU', niryo_2024.locationOfDataRecording = 'RWU', niryo_2024.dateOfRecording = '2024';

MERGE (cat__screwType_Schloss:ProcessedAttribute {node_id: 'cat__screwType_Schloss'});

MERGE (cat__screwType_Sechskant:ProcessedAttribute {node_id: 'cat__screwType_Sechskant'});

MERGE (cat__screwType_Zylinder:ProcessedAttribute {node_id: 'cat__screwType_Zylinder'});

MERGE (cat__bracketType_Einkerbung:ProcessedAttribute {node_id: 'cat__bracketType_Einkerbung'});

MERGE (cat__bracketType_Silicon:ProcessedAttribute {node_id: 'cat__bracketType_Silicon'});

MERGE (cat__bracketType_Standard:ProcessedAttribute {node_id: 'cat__bracketType_Standard'});

MERGE (num__screwId:ProcessedAttribute {node_id: 'num__screwId'});

MERGE (num__headWidth:ProcessedAttribute {node_id: 'num__headWidth'});

MERGE (num__headThickness:ProcessedAttribute {node_id: 'num__headThickness'});

MERGE (num__length:ProcessedAttribute {node_id: 'num__length'});

MERGE (num__weight:ProcessedAttribute {node_id: 'num__weight'});

MERGE (num__diameter:ProcessedAttribute {node_id: 'num__diameter'});

MERGE (num__angle:ProcessedAttribute {node_id: 'num__angle'});

MERGE (remainder__coating:ProcessedAttribute {node_id: 'remainder__coating'});

MERGE (logReg_2025_03_alx:Model {node_id: 'logReg_2025_03_alx'}) ON CREATE SET logReg_2025_03_alx.training_information = 'Trained using sklearn in Python. A split validation was used.', logReg_2025_03_alx.algorithm = 'LogisticRegression', logReg_2025_03_alx.accuracy = 0.9006622516556292, logReg_2025_03_alx.precision_Class_0 = 0.9464285714285714, logReg_2025_03_alx.precision_Class_1 = 0.8736842105263158, logReg_2025_03_alx.recall_Class_0 = 0.8153846153846154, logReg_2025_03_alx.recall_Class_1 = 0.9651162790697675, logReg_2025_03_alx.f1Score_Class_0 = 0.8760330578512396, logReg_2025_03_alx.f1Score_Class_1 = 0.9171270718232044, logReg_2025_03_alx.cm_00 = 53, logReg_2025_03_alx.cm_01 = 12, logReg_2025_03_alx.cm_10 = 3, logReg_2025_03_alx.cm_11 = 83, logReg_2025_03_alx.rocAucScore = 0.962701252236136, logReg_2025_03_alx.weight_screwId = -0.8101098182094377, logReg_2025_03_alx.weight_screwType = 1.7487559311153094, logReg_2025_03_alx.weight_headWidth = -0.9033147571486331, logReg_2025_03_alx.weight_headThickness = -2.1865505599061983, logReg_2025_03_alx.weight_length = 2.5382413138793742, logReg_2025_03_alx.weight_weight = -0.3163593982159402, logReg_2025_03_alx.weight_diameter = 0.11571086530969993, logReg_2025_03_alx.weight_coating = -0.9884235045528238, logReg_2025_03_alx.weight_bracketType = 0.1869261632407393, logReg_2025_03_alx.weight_angle = -1.129386501705466;

MERGE (decTree_2025_03_alx:Model {node_id: 'decTree_2025_03_alx'}) ON CREATE SET decTree_2025_03_alx.training_information = 'Trained using sklearn in Python. A split validation was used.', decTree_2025_03_alx.algorithm = 'DecisionTreeClassifier', decTree_2025_03_alx.accuracy = 0.8410596026490066, decTree_2025_03_alx.precision_Class_0 = 0.759493670886076, decTree_2025_03_alx.precision_Class_1 = 0.9305555555555556, decTree_2025_03_alx.recall_Class_0 = 0.9230769230769231, decTree_2025_03_alx.recall_Class_1 = 0.7790697674418605, decTree_2025_03_alx.f1Score_Class_0 = 0.8333333333333334, decTree_2025_03_alx.f1Score_Class_1 = 0.8481012658227848, decTree_2025_03_alx.cm_00 = 60, decTree_2025_03_alx.cm_01 = 5, decTree_2025_03_alx.cm_10 = 19, decTree_2025_03_alx.cm_11 = 67, decTree_2025_03_alx.rocAucScore = 0.8801431127012522, decTree_2025_03_alx.weight_screwId = 0.004109390332352065, decTree_2025_03_alx.weight_screwType = 0.1425274379978398, decTree_2025_03_alx.weight_headWidth = 0.004457954690899779, decTree_2025_03_alx.weight_headThickness = 0.008001970298143339, decTree_2025_03_alx.weight_length = 0.15612564060361425, decTree_2025_03_alx.weight_weight = 0.04497573305236316, decTree_2025_03_alx.weight_diameter = 0.10781211727656656, decTree_2025_03_alx.weight_coating = 0.10521521646932618, decTree_2025_03_alx.weight_bracketType = 0.014804812492000516, decTree_2025_03_alx.weight_angle = 0.10195130395390237;

MERGE (ranFor_2025_03_alx:Model {node_id: 'ranFor_2025_03_alx'}) ON CREATE SET ranFor_2025_03_alx.training_information = 'Trained using sklearn in Python. A split validation was used.', ranFor_2025_03_alx.algorithm = 'RandomForestClassifier', ranFor_2025_03_alx.accuracy = 0.8874172185430463, ranFor_2025_03_alx.precision_Class_0 = 0.8428571428571429, ranFor_2025_03_alx.precision_Class_1 = 0.9259259259259259, ranFor_2025_03_alx.recall_Class_0 = 0.9076923076923077, ranFor_2025_03_alx.recall_Class_1 = 0.872093023255814, ranFor_2025_03_alx.f1Score_Class_0 = 0.8740740740740741, ranFor_2025_03_alx.f1Score_Class_1 = 0.8982035928143712, ranFor_2025_03_alx.cm_00 = 59, ranFor_2025_03_alx.cm_01 = 6, ranFor_2025_03_alx.cm_10 = 11, ranFor_2025_03_alx.cm_11 = 75, ranFor_2025_03_alx.rocAucScore = 0.948211091234347, ranFor_2025_03_alx.weight_screwId = 0.04146499281715181, ranFor_2025_03_alx.weight_screwType = 0.07342121779329025, ranFor_2025_03_alx.weight_headWidth = 0.0183246142799581, ranFor_2025_03_alx.weight_headThickness = 0.0853838547995461, ranFor_2025_03_alx.weight_length = 0.11856121953867468, ranFor_2025_03_alx.weight_weight = 0.041420103859823115, ranFor_2025_03_alx.weight_diameter = 0.0788569482953092, ranFor_2025_03_alx.weight_coating = 0.07815593598937173, ranFor_2025_03_alx.weight_bracketType = 0.040321079648713176, ranFor_2025_03_alx.weight_angle = 0.08768231608350335;

MERGE (nn_2025_03_alx:Model {node_id: 'nn_2025_03_alx'}) ON CREATE SET nn_2025_03_alx.training_information = 'Trained using sklearn in Python. A split validation was used.', nn_2025_03_alx.algorithm = 'MLPClassifier', nn_2025_03_alx.accuracy = 0.9271523178807947, nn_2025_03_alx.precision_Class_0 = 0.9354838709677419, nn_2025_03_alx.precision_Class_1 = 0.9213483146067416, nn_2025_03_alx.recall_Class_0 = 0.8923076923076924, nn_2025_03_alx.recall_Class_1 = 0.9534883720930233, nn_2025_03_alx.f1Score_Class_0 = 0.9133858267716536, nn_2025_03_alx.f1Score_Class_1 = 0.9371428571428572, nn_2025_03_alx.cm_00 = 58, nn_2025_03_alx.cm_01 = 7, nn_2025_03_alx.cm_10 = 4, nn_2025_03_alx.cm_11 = 82, nn_2025_03_alx.rocAucScore = 0.9716457960644007;

MERGE (SHAP_logReg_2025_03_alx_cat__screwType_Schloss:SHAPValue {node_id: 'SHAP_logReg_2025_03_alx_cat__screwType_Schloss'}) ON CREATE SET SHAP_logReg_2025_03_alx_cat__screwType_Schloss.feature = 'cat__screwType_Schloss', SHAP_logReg_2025_03_alx_cat__screwType_Schloss.mean_shap_value = 0.37157752323964016;

MERGE (SHAP_logReg_2025_03_alx_cat__screwType_Sechskant:SHAPValue {node_id: 'SHAP_logReg_2025_03_alx_cat__screwType_Sechskant'}) ON CREATE SET SHAP_logReg_2025_03_alx_cat__screwType_Sechskant.feature = 'cat__screwType_Sechskant', SHAP_logReg_2025_03_alx_cat__screwType_Sechskant.mean_shap_value = 0.7159476268976716;

MERGE (SHAP_logReg_2025_03_alx_cat__screwType_Zylinder:SHAPValue {node_id: 'SHAP_logReg_2025_03_alx_cat__screwType_Zylinder'}) ON CREATE SET SHAP_logReg_2025_03_alx_cat__screwType_Zylinder.feature = 'cat__screwType_Zylinder', SHAP_logReg_2025_03_alx_cat__screwType_Zylinder.mean_shap_value = 0.4187551854331413;

MERGE (SHAP_logReg_2025_03_alx_cat__bracketType_Einkerbung:SHAPValue {node_id: 'SHAP_logReg_2025_03_alx_cat__bracketType_Einkerbung'}) ON CREATE SET SHAP_logReg_2025_03_alx_cat__bracketType_Einkerbung.feature = 'cat__bracketType_Einkerbung', SHAP_logReg_2025_03_alx_cat__bracketType_Einkerbung.mean_shap_value = 0.9804724398095938;

MERGE (SHAP_logReg_2025_03_alx_cat__bracketType_Silicon:SHAPValue {node_id: 'SHAP_logReg_2025_03_alx_cat__bracketType_Silicon'}) ON CREATE SET SHAP_logReg_2025_03_alx_cat__bracketType_Silicon.feature = 'cat__bracketType_Silicon', SHAP_logReg_2025_03_alx_cat__bracketType_Silicon.mean_shap_value = 1.1208604689369317;

MERGE (SHAP_logReg_2025_03_alx_cat__bracketType_Standard:SHAPValue {node_id: 'SHAP_logReg_2025_03_alx_cat__bracketType_Standard'}) ON CREATE SET SHAP_logReg_2025_03_alx_cat__bracketType_Standard.feature = 'cat__bracketType_Standard', SHAP_logReg_2025_03_alx_cat__bracketType_Standard.mean_shap_value = 0.14156559296325213;

MERGE (SHAP_logReg_2025_03_alx_num__screwId:SHAPValue {node_id: 'SHAP_logReg_2025_03_alx_num__screwId'}) ON CREATE SET SHAP_logReg_2025_03_alx_num__screwId.feature = 'num__screwId', SHAP_logReg_2025_03_alx_num__screwId.mean_shap_value = 0.10108173095042684;

MERGE (SHAP_logReg_2025_03_alx_num__headWidth:SHAPValue {node_id: 'SHAP_logReg_2025_03_alx_num__headWidth'}) ON CREATE SET SHAP_logReg_2025_03_alx_num__headWidth.feature = 'num__headWidth', SHAP_logReg_2025_03_alx_num__headWidth.mean_shap_value = 0.8112177585724517;

MERGE (SHAP_logReg_2025_03_alx_num__headThickness:SHAPValue {node_id: 'SHAP_logReg_2025_03_alx_num__headThickness'}) ON CREATE SET SHAP_logReg_2025_03_alx_num__headThickness.feature = 'num__headThickness', SHAP_logReg_2025_03_alx_num__headThickness.mean_shap_value = 0.14143414986834457;

MERGE (SHAP_logReg_2025_03_alx_num__length:SHAPValue {node_id: 'SHAP_logReg_2025_03_alx_num__length'}) ON CREATE SET SHAP_logReg_2025_03_alx_num__length.feature = 'num__length', SHAP_logReg_2025_03_alx_num__length.mean_shap_value = 0.9869370430341108;

MERGE (SHAP_logReg_2025_03_alx_num__weight:SHAPValue {node_id: 'SHAP_logReg_2025_03_alx_num__weight'}) ON CREATE SET SHAP_logReg_2025_03_alx_num__weight.feature = 'num__weight', SHAP_logReg_2025_03_alx_num__weight.mean_shap_value = 0.5483126929735552;

MERGE (SHAP_logReg_2025_03_alx_num__diameter:SHAPValue {node_id: 'SHAP_logReg_2025_03_alx_num__diameter'}) ON CREATE SET SHAP_logReg_2025_03_alx_num__diameter.feature = 'num__diameter', SHAP_logReg_2025_03_alx_num__diameter.mean_shap_value = 0.18017549198920607;

MERGE (SHAP_logReg_2025_03_alx_num__angle:SHAPValue {node_id: 'SHAP_logReg_2025_03_alx_num__angle'}) ON CREATE SET SHAP_logReg_2025_03_alx_num__angle.feature = 'num__angle', SHAP_logReg_2025_03_alx_num__angle.mean_shap_value = 0.9396663750455099;

MERGE (SHAP_logReg_2025_03_alx_remainder__coating:SHAPValue {node_id: 'SHAP_logReg_2025_03_alx_remainder__coating'}) ON CREATE SET SHAP_logReg_2025_03_alx_remainder__coating.feature = 'remainder__coating', SHAP_logReg_2025_03_alx_remainder__coating.mean_shap_value = 0.48270887545724006;

MERGE (SHAP_decTree_2025_03_alx_cat__screwType_Schloss:SHAPValue {node_id: 'SHAP_decTree_2025_03_alx_cat__screwType_Schloss'}) ON CREATE SET SHAP_decTree_2025_03_alx_cat__screwType_Schloss.feature = 'cat__screwType_Schloss', SHAP_decTree_2025_03_alx_cat__screwType_Schloss.mean_shap_value = 0.005444488822393084;

MERGE (SHAP_decTree_2025_03_alx_cat__screwType_Sechskant:SHAPValue {node_id: 'SHAP_decTree_2025_03_alx_cat__screwType_Sechskant'}) ON CREATE SET SHAP_decTree_2025_03_alx_cat__screwType_Sechskant.feature = 'cat__screwType_Sechskant', SHAP_decTree_2025_03_alx_cat__screwType_Sechskant.mean_shap_value = 0.13289011622281474;

MERGE (SHAP_decTree_2025_03_alx_cat__screwType_Zylinder:SHAPValue {node_id: 'SHAP_decTree_2025_03_alx_cat__screwType_Zylinder'}) ON CREATE SET SHAP_decTree_2025_03_alx_cat__screwType_Zylinder.feature = 'cat__screwType_Zylinder', SHAP_decTree_2025_03_alx_cat__screwType_Zylinder.mean_shap_value = 0.0038435504620484688;

MERGE (SHAP_decTree_2025_03_alx_cat__bracketType_Einkerbung:SHAPValue {node_id: 'SHAP_decTree_2025_03_alx_cat__bracketType_Einkerbung'}) ON CREATE SET SHAP_decTree_2025_03_alx_cat__bracketType_Einkerbung.feature = 'cat__bracketType_Einkerbung', SHAP_decTree_2025_03_alx_cat__bracketType_Einkerbung.mean_shap_value = 0.01245525396310666;

MERGE (SHAP_decTree_2025_03_alx_cat__bracketType_Silicon:SHAPValue {node_id: 'SHAP_decTree_2025_03_alx_cat__bracketType_Silicon'}) ON CREATE SET SHAP_decTree_2025_03_alx_cat__bracketType_Silicon.feature = 'cat__bracketType_Silicon', SHAP_decTree_2025_03_alx_cat__bracketType_Silicon.mean_shap_value = 0.18773844804237028;

MERGE (SHAP_decTree_2025_03_alx_cat__bracketType_Standard:SHAPValue {node_id: 'SHAP_decTree_2025_03_alx_cat__bracketType_Standard'}) ON CREATE SET SHAP_decTree_2025_03_alx_cat__bracketType_Standard.feature = 'cat__bracketType_Standard', SHAP_decTree_2025_03_alx_cat__bracketType_Standard.mean_shap_value = 0.07699039548130955;

MERGE (SHAP_decTree_2025_03_alx_num__screwId:SHAPValue {node_id: 'SHAP_decTree_2025_03_alx_num__screwId'}) ON CREATE SET SHAP_decTree_2025_03_alx_num__screwId.feature = 'num__screwId', SHAP_decTree_2025_03_alx_num__screwId.mean_shap_value = 0.034754996478887454;

MERGE (SHAP_decTree_2025_03_alx_num__headWidth:SHAPValue {node_id: 'SHAP_decTree_2025_03_alx_num__headWidth'}) ON CREATE SET SHAP_decTree_2025_03_alx_num__headWidth.feature = 'num__headWidth', SHAP_decTree_2025_03_alx_num__headWidth.mean_shap_value = 0.06466225856895295;

MERGE (SHAP_decTree_2025_03_alx_num__headThickness:SHAPValue {node_id: 'SHAP_decTree_2025_03_alx_num__headThickness'}) ON CREATE SET SHAP_decTree_2025_03_alx_num__headThickness.feature = 'num__headThickness', SHAP_decTree_2025_03_alx_num__headThickness.mean_shap_value = 0.006739024723001604;

MERGE (SHAP_decTree_2025_03_alx_num__length:SHAPValue {node_id: 'SHAP_decTree_2025_03_alx_num__length'}) ON CREATE SET SHAP_decTree_2025_03_alx_num__length.feature = 'num__length', SHAP_decTree_2025_03_alx_num__length.mean_shap_value = 0.0829863088421652;

MERGE (SHAP_decTree_2025_03_alx_num__weight:SHAPValue {node_id: 'SHAP_decTree_2025_03_alx_num__weight'}) ON CREATE SET SHAP_decTree_2025_03_alx_num__weight.feature = 'num__weight', SHAP_decTree_2025_03_alx_num__weight.mean_shap_value = 0.05407827168865764;

MERGE (SHAP_decTree_2025_03_alx_num__diameter:SHAPValue {node_id: 'SHAP_decTree_2025_03_alx_num__diameter'}) ON CREATE SET SHAP_decTree_2025_03_alx_num__diameter.feature = 'num__diameter', SHAP_decTree_2025_03_alx_num__diameter.mean_shap_value = 0.0018490110539436553;

MERGE (SHAP_decTree_2025_03_alx_num__angle:SHAPValue {node_id: 'SHAP_decTree_2025_03_alx_num__angle'}) ON CREATE SET SHAP_decTree_2025_03_alx_num__angle.feature = 'num__angle', SHAP_decTree_2025_03_alx_num__angle.mean_shap_value = 0.10847428778897455;

MERGE (SHAP_decTree_2025_03_alx_remainder__coating:SHAPValue {node_id: 'SHAP_decTree_2025_03_alx_remainder__coating'}) ON CREATE SET SHAP_decTree_2025_03_alx_remainder__coating.feature = 'remainder__coating', SHAP_decTree_2025_03_alx_remainder__coating.mean_shap_value = 0.02418798833488171;

MERGE (SHAP_ranFor_2025_03_alx_cat__screwType_Schloss:SHAPValue {node_id: 'SHAP_ranFor_2025_03_alx_cat__screwType_Schloss'}) ON CREATE SET SHAP_ranFor_2025_03_alx_cat__screwType_Schloss.feature = 'cat__screwType_Schloss', SHAP_ranFor_2025_03_alx_cat__screwType_Schloss.mean_shap_value = 0.056773256525065464;

MERGE (SHAP_ranFor_2025_03_alx_cat__screwType_Sechskant:SHAPValue {node_id: 'SHAP_ranFor_2025_03_alx_cat__screwType_Sechskant'}) ON CREATE SET SHAP_ranFor_2025_03_alx_cat__screwType_Sechskant.feature = 'cat__screwType_Sechskant', SHAP_ranFor_2025_03_alx_cat__screwType_Sechskant.mean_shap_value = 0.07915538373417479;

MERGE (SHAP_ranFor_2025_03_alx_cat__screwType_Zylinder:SHAPValue {node_id: 'SHAP_ranFor_2025_03_alx_cat__screwType_Zylinder'}) ON CREATE SET SHAP_ranFor_2025_03_alx_cat__screwType_Zylinder.feature = 'cat__screwType_Zylinder', SHAP_ranFor_2025_03_alx_cat__screwType_Zylinder.mean_shap_value = 0.012823896969963408;

MERGE (SHAP_ranFor_2025_03_alx_cat__bracketType_Einkerbung:SHAPValue {node_id: 'SHAP_ranFor_2025_03_alx_cat__bracketType_Einkerbung'}) ON CREATE SET SHAP_ranFor_2025_03_alx_cat__bracketType_Einkerbung.feature = 'cat__bracketType_Einkerbung', SHAP_ranFor_2025_03_alx_cat__bracketType_Einkerbung.mean_shap_value = 0.09465128257968398;

MERGE (SHAP_ranFor_2025_03_alx_cat__bracketType_Silicon:SHAPValue {node_id: 'SHAP_ranFor_2025_03_alx_cat__bracketType_Silicon'}) ON CREATE SET SHAP_ranFor_2025_03_alx_cat__bracketType_Silicon.feature = 'cat__bracketType_Silicon', SHAP_ranFor_2025_03_alx_cat__bracketType_Silicon.mean_shap_value = 0.11574874286594443;

MERGE (SHAP_ranFor_2025_03_alx_cat__bracketType_Standard:SHAPValue {node_id: 'SHAP_ranFor_2025_03_alx_cat__bracketType_Standard'}) ON CREATE SET SHAP_ranFor_2025_03_alx_cat__bracketType_Standard.feature = 'cat__bracketType_Standard', SHAP_ranFor_2025_03_alx_cat__bracketType_Standard.mean_shap_value = 0.016671821055310926;

MERGE (SHAP_ranFor_2025_03_alx_num__screwId:SHAPValue {node_id: 'SHAP_ranFor_2025_03_alx_num__screwId'}) ON CREATE SET SHAP_ranFor_2025_03_alx_num__screwId.feature = 'num__screwId', SHAP_ranFor_2025_03_alx_num__screwId.mean_shap_value = 0.02958200827384468;

MERGE (SHAP_ranFor_2025_03_alx_num__headWidth:SHAPValue {node_id: 'SHAP_ranFor_2025_03_alx_num__headWidth'}) ON CREATE SET SHAP_ranFor_2025_03_alx_num__headWidth.feature = 'num__headWidth', SHAP_ranFor_2025_03_alx_num__headWidth.mean_shap_value = 0.04414373281399807;

MERGE (SHAP_ranFor_2025_03_alx_num__headThickness:SHAPValue {node_id: 'SHAP_ranFor_2025_03_alx_num__headThickness'}) ON CREATE SET SHAP_ranFor_2025_03_alx_num__headThickness.feature = 'num__headThickness', SHAP_ranFor_2025_03_alx_num__headThickness.mean_shap_value = 0.012715247115154663;

MERGE (SHAP_ranFor_2025_03_alx_num__length:SHAPValue {node_id: 'SHAP_ranFor_2025_03_alx_num__length'}) ON CREATE SET SHAP_ranFor_2025_03_alx_num__length.feature = 'num__length', SHAP_ranFor_2025_03_alx_num__length.mean_shap_value = 0.06027588825103045;

MERGE (SHAP_ranFor_2025_03_alx_num__weight:SHAPValue {node_id: 'SHAP_ranFor_2025_03_alx_num__weight'}) ON CREATE SET SHAP_ranFor_2025_03_alx_num__weight.feature = 'num__weight', SHAP_ranFor_2025_03_alx_num__weight.mean_shap_value = 0.04287951112459562;

MERGE (SHAP_ranFor_2025_03_alx_num__diameter:SHAPValue {node_id: 'SHAP_ranFor_2025_03_alx_num__diameter'}) ON CREATE SET SHAP_ranFor_2025_03_alx_num__diameter.feature = 'num__diameter', SHAP_ranFor_2025_03_alx_num__diameter.mean_shap_value = 0.009038073628872515;

MERGE (SHAP_ranFor_2025_03_alx_num__angle:SHAPValue {node_id: 'SHAP_ranFor_2025_03_alx_num__angle'}) ON CREATE SET SHAP_ranFor_2025_03_alx_num__angle.feature = 'num__angle', SHAP_ranFor_2025_03_alx_num__angle.mean_shap_value = 0.08695020855102492;

MERGE (SHAP_ranFor_2025_03_alx_remainder__coating:SHAPValue {node_id: 'SHAP_ranFor_2025_03_alx_remainder__coating'}) ON CREATE SET SHAP_ranFor_2025_03_alx_remainder__coating.feature = 'remainder__coating', SHAP_ranFor_2025_03_alx_remainder__coating.mean_shap_value = 0.024417092878139472;

MERGE (SHAP_nn_2025_03_alx_cat__screwType_Schloss:SHAPValue {node_id: 'SHAP_nn_2025_03_alx_cat__screwType_Schloss'}) ON CREATE SET SHAP_nn_2025_03_alx_cat__screwType_Schloss.feature = 'cat__screwType_Schloss', SHAP_nn_2025_03_alx_cat__screwType_Schloss.mean_shap_value = 0.09132219815735555;

MERGE (SHAP_nn_2025_03_alx_cat__screwType_Sechskant:SHAPValue {node_id: 'SHAP_nn_2025_03_alx_cat__screwType_Sechskant'}) ON CREATE SET SHAP_nn_2025_03_alx_cat__screwType_Sechskant.feature = 'cat__screwType_Sechskant', SHAP_nn_2025_03_alx_cat__screwType_Sechskant.mean_shap_value = 0.10340150280965556;

MERGE (SHAP_nn_2025_03_alx_cat__screwType_Zylinder:SHAPValue {node_id: 'SHAP_nn_2025_03_alx_cat__screwType_Zylinder'}) ON CREATE SET SHAP_nn_2025_03_alx_cat__screwType_Zylinder.feature = 'cat__screwType_Zylinder', SHAP_nn_2025_03_alx_cat__screwType_Zylinder.mean_shap_value = 0.03615216512655518;

MERGE (SHAP_nn_2025_03_alx_cat__bracketType_Einkerbung:SHAPValue {node_id: 'SHAP_nn_2025_03_alx_cat__bracketType_Einkerbung'}) ON CREATE SET SHAP_nn_2025_03_alx_cat__bracketType_Einkerbung.feature = 'cat__bracketType_Einkerbung', SHAP_nn_2025_03_alx_cat__bracketType_Einkerbung.mean_shap_value = 0.10936571994564685;

MERGE (SHAP_nn_2025_03_alx_cat__bracketType_Silicon:SHAPValue {node_id: 'SHAP_nn_2025_03_alx_cat__bracketType_Silicon'}) ON CREATE SET SHAP_nn_2025_03_alx_cat__bracketType_Silicon.feature = 'cat__bracketType_Silicon', SHAP_nn_2025_03_alx_cat__bracketType_Silicon.mean_shap_value = 0.16308914339530664;

MERGE (SHAP_nn_2025_03_alx_cat__bracketType_Standard:SHAPValue {node_id: 'SHAP_nn_2025_03_alx_cat__bracketType_Standard'}) ON CREATE SET SHAP_nn_2025_03_alx_cat__bracketType_Standard.feature = 'cat__bracketType_Standard', SHAP_nn_2025_03_alx_cat__bracketType_Standard.mean_shap_value = 0.0037177436539416408;

MERGE (SHAP_nn_2025_03_alx_num__screwId:SHAPValue {node_id: 'SHAP_nn_2025_03_alx_num__screwId'}) ON CREATE SET SHAP_nn_2025_03_alx_num__screwId.feature = 'num__screwId', SHAP_nn_2025_03_alx_num__screwId.mean_shap_value = 0.03591622545971659;

MERGE (SHAP_nn_2025_03_alx_num__headWidth:SHAPValue {node_id: 'SHAP_nn_2025_03_alx_num__headWidth'}) ON CREATE SET SHAP_nn_2025_03_alx_num__headWidth.feature = 'num__headWidth', SHAP_nn_2025_03_alx_num__headWidth.mean_shap_value = 0.06318054615231926;

MERGE (SHAP_nn_2025_03_alx_num__headThickness:SHAPValue {node_id: 'SHAP_nn_2025_03_alx_num__headThickness'}) ON CREATE SET SHAP_nn_2025_03_alx_num__headThickness.feature = 'num__headThickness', SHAP_nn_2025_03_alx_num__headThickness.mean_shap_value = 0.009280039774372306;

MERGE (SHAP_nn_2025_03_alx_num__length:SHAPValue {node_id: 'SHAP_nn_2025_03_alx_num__length'}) ON CREATE SET SHAP_nn_2025_03_alx_num__length.feature = 'num__length', SHAP_nn_2025_03_alx_num__length.mean_shap_value = 0.12373648353756948;

MERGE (SHAP_nn_2025_03_alx_num__weight:SHAPValue {node_id: 'SHAP_nn_2025_03_alx_num__weight'}) ON CREATE SET SHAP_nn_2025_03_alx_num__weight.feature = 'num__weight', SHAP_nn_2025_03_alx_num__weight.mean_shap_value = 0.05018676476410518;

MERGE (SHAP_nn_2025_03_alx_num__diameter:SHAPValue {node_id: 'SHAP_nn_2025_03_alx_num__diameter'}) ON CREATE SET SHAP_nn_2025_03_alx_num__diameter.feature = 'num__diameter', SHAP_nn_2025_03_alx_num__diameter.mean_shap_value = 0.0300117551590834;

MERGE (SHAP_nn_2025_03_alx_num__angle:SHAPValue {node_id: 'SHAP_nn_2025_03_alx_num__angle'}) ON CREATE SET SHAP_nn_2025_03_alx_num__angle.feature = 'num__angle', SHAP_nn_2025_03_alx_num__angle.mean_shap_value = 0.0956397328938698;

MERGE (SHAP_nn_2025_03_alx_remainder__coating:SHAPValue {node_id: 'SHAP_nn_2025_03_alx_remainder__coating'}) ON CREATE SET SHAP_nn_2025_03_alx_remainder__coating.feature = 'remainder__coating', SHAP_nn_2025_03_alx_remainder__coating.mean_shap_value = 0.054665173496392466;

MATCH (ScrewPlacement:Task {node_id: 'ScrewPlacement'})
MATCH (logReg_2025_03_alx:Model {node_id: 'logReg_2025_03_alx'})
MERGE (ScrewPlacement)-[:achieves]->(logReg_2025_03_alx);
MATCH (ScrewPlacement:Task {node_id: 'ScrewPlacement'})
MATCH (decTree_2025_03_alx:Model {node_id: 'decTree_2025_03_alx'})
MERGE (ScrewPlacement)-[:achieves]->(decTree_2025_03_alx);
MATCH (ScrewPlacement:Task {node_id: 'ScrewPlacement'})
MATCH (ranFor_2025_03_alx:Model {node_id: 'ranFor_2025_03_alx'})
MERGE (ScrewPlacement)-[:achieves]->(ranFor_2025_03_alx);
MATCH (ScrewPlacement:Task {node_id: 'ScrewPlacement'})
MATCH (nn_2025_03_alx:Model {node_id: 'nn_2025_03_alx'})
MERGE (ScrewPlacement)-[:achieves]->(nn_2025_03_alx);


MATCH (testRun:Attribute {node_id: 'testRun'})
MATCH (niryo_2024:Dataset {node_id: 'niryo_2024'})
MERGE (testRun)-[:partOf]->(niryo_2024);

MATCH (screwId:Attribute {node_id: 'screwId'})
MATCH (niryo_2024:Dataset {node_id: 'niryo_2024'})
MERGE (screwId)-[:partOf]->(niryo_2024);

MATCH (screwType:Attribute {node_id: 'screwType'})
MATCH (niryo_2024:Dataset {node_id: 'niryo_2024'})
MERGE (screwType)-[:partOf]->(niryo_2024);

MATCH (headWidth:Attribute {node_id: 'headWidth'})
MATCH (niryo_2024:Dataset {node_id: 'niryo_2024'})
MERGE (headWidth)-[:partOf]->(niryo_2024);

MATCH (headThickness:Attribute {node_id: 'headThickness'})
MATCH (niryo_2024:Dataset {node_id: 'niryo_2024'})
MERGE (headThickness)-[:partOf]->(niryo_2024);

MATCH (length:Attribute {node_id: 'length'})
MATCH (niryo_2024:Dataset {node_id: 'niryo_2024'})
MERGE (length)-[:partOf]->(niryo_2024);

MATCH (weight:Attribute {node_id: 'weight'})
MATCH (niryo_2024:Dataset {node_id: 'niryo_2024'})
MERGE (weight)-[:partOf]->(niryo_2024);

MATCH (diameter:Attribute {node_id: 'diameter'})
MATCH (niryo_2024:Dataset {node_id: 'niryo_2024'})
MERGE (diameter)-[:partOf]->(niryo_2024);

MATCH (coating:Attribute {node_id: 'coating'})
MATCH (niryo_2024:Dataset {node_id: 'niryo_2024'})
MERGE (coating)-[:partOf]->(niryo_2024);

MATCH (bracketType:Attribute {node_id: 'bracketType'})
MATCH (niryo_2024:Dataset {node_id: 'niryo_2024'})
MERGE (bracketType)-[:partOf]->(niryo_2024);

MATCH (angle:Attribute {node_id: 'angle'})
MATCH (niryo_2024:Dataset {node_id: 'niryo_2024'})
MERGE (angle)-[:partOf]->(niryo_2024);

MATCH (result:Attribute {node_id: 'result'})
MATCH (niryo_2024:Dataset {node_id: 'niryo_2024'})
MERGE (result)-[:partOf]->(niryo_2024);

MATCH (niryo_2024:Dataset {node_id: 'niryo_2024'})
MATCH (testRun:Attribute {node_id: 'testRun'})
MERGE (niryo_2024)-[:has]->(testRun);
MATCH (niryo_2024:Dataset {node_id: 'niryo_2024'})
MATCH (screwId:Attribute {node_id: 'screwId'})
MERGE (niryo_2024)-[:has]->(screwId);
MATCH (niryo_2024:Dataset {node_id: 'niryo_2024'})
MATCH (screwType:Attribute {node_id: 'screwType'})
MERGE (niryo_2024)-[:has]->(screwType);
MATCH (niryo_2024:Dataset {node_id: 'niryo_2024'})
MATCH (headWidth:Attribute {node_id: 'headWidth'})
MERGE (niryo_2024)-[:has]->(headWidth);
MATCH (niryo_2024:Dataset {node_id: 'niryo_2024'})
MATCH (headThickness:Attribute {node_id: 'headThickness'})
MERGE (niryo_2024)-[:has]->(headThickness);
MATCH (niryo_2024:Dataset {node_id: 'niryo_2024'})
MATCH (length:Attribute {node_id: 'length'})
MERGE (niryo_2024)-[:has]->(length);
MATCH (niryo_2024:Dataset {node_id: 'niryo_2024'})
MATCH (weight:Attribute {node_id: 'weight'})
MERGE (niryo_2024)-[:has]->(weight);
MATCH (niryo_2024:Dataset {node_id: 'niryo_2024'})
MATCH (diameter:Attribute {node_id: 'diameter'})
MERGE (niryo_2024)-[:has]->(diameter);
MATCH (niryo_2024:Dataset {node_id: 'niryo_2024'})
MATCH (coating:Attribute {node_id: 'coating'})
MERGE (niryo_2024)-[:has]->(coating);
MATCH (niryo_2024:Dataset {node_id: 'niryo_2024'})
MATCH (bracketType:Attribute {node_id: 'bracketType'})
MERGE (niryo_2024)-[:has]->(bracketType);
MATCH (niryo_2024:Dataset {node_id: 'niryo_2024'})
MATCH (angle:Attribute {node_id: 'angle'})
MERGE (niryo_2024)-[:has]->(angle);
MATCH (niryo_2024:Dataset {node_id: 'niryo_2024'})
MATCH (result:Attribute {node_id: 'result'})
MERGE (niryo_2024)-[:has]->(result);
MATCH (niryo_2024:Dataset {node_id: 'niryo_2024'})
MATCH (logReg_2025_03_alx:Model {node_id: 'logReg_2025_03_alx'})
MERGE (niryo_2024)-[:usedBy]->(logReg_2025_03_alx);

MATCH (cat__screwType_Schloss:ProcessedAttribute {node_id: 'cat__screwType_Schloss'})
MATCH (screwType:Attribute {node_id: 'screwType'})
MERGE (cat__screwType_Schloss)-[:derivedFrom]->(screwType);

MATCH (cat__screwType_Sechskant:ProcessedAttribute {node_id: 'cat__screwType_Sechskant'})
MATCH (screwType:Attribute {node_id: 'screwType'})
MERGE (cat__screwType_Sechskant)-[:derivedFrom]->(screwType);

MATCH (cat__screwType_Zylinder:ProcessedAttribute {node_id: 'cat__screwType_Zylinder'})
MATCH (screwType:Attribute {node_id: 'screwType'})
MERGE (cat__screwType_Zylinder)-[:derivedFrom]->(screwType);

MATCH (cat__bracketType_Einkerbung:ProcessedAttribute {node_id: 'cat__bracketType_Einkerbung'})
MATCH (bracketType:Attribute {node_id: 'bracketType'})
MERGE (cat__bracketType_Einkerbung)-[:derivedFrom]->(bracketType);

MATCH (cat__bracketType_Silicon:ProcessedAttribute {node_id: 'cat__bracketType_Silicon'})
MATCH (bracketType:Attribute {node_id: 'bracketType'})
MERGE (cat__bracketType_Silicon)-[:derivedFrom]->(bracketType);

MATCH (cat__bracketType_Standard:ProcessedAttribute {node_id: 'cat__bracketType_Standard'})
MATCH (bracketType:Attribute {node_id: 'bracketType'})
MERGE (cat__bracketType_Standard)-[:derivedFrom]->(bracketType);

MATCH (num__screwId:ProcessedAttribute {node_id: 'num__screwId'})
MATCH (screwId:Attribute {node_id: 'screwId'})
MERGE (num__screwId)-[:derivedFrom]->(screwId);

MATCH (num__headWidth:ProcessedAttribute {node_id: 'num__headWidth'})
MATCH (headWidth:Attribute {node_id: 'headWidth'})
MERGE (num__headWidth)-[:derivedFrom]->(headWidth);

MATCH (num__headThickness:ProcessedAttribute {node_id: 'num__headThickness'})
MATCH (headThickness:Attribute {node_id: 'headThickness'})
MERGE (num__headThickness)-[:derivedFrom]->(headThickness);

MATCH (num__length:ProcessedAttribute {node_id: 'num__length'})
MATCH (length:Attribute {node_id: 'length'})
MERGE (num__length)-[:derivedFrom]->(length);

MATCH (num__weight:ProcessedAttribute {node_id: 'num__weight'})
MATCH (weight:Attribute {node_id: 'weight'})
MERGE (num__weight)-[:derivedFrom]->(weight);

MATCH (num__diameter:ProcessedAttribute {node_id: 'num__diameter'})
MATCH (diameter:Attribute {node_id: 'diameter'})
MERGE (num__diameter)-[:derivedFrom]->(diameter);

MATCH (num__angle:ProcessedAttribute {node_id: 'num__angle'})
MATCH (angle:Attribute {node_id: 'angle'})
MERGE (num__angle)-[:derivedFrom]->(angle);

MATCH (remainder__coating:ProcessedAttribute {node_id: 'remainder__coating'})
MATCH (coating:Attribute {node_id: 'coating'})
MERGE (remainder__coating)-[:derivedFrom]->(coating);

MATCH (logReg_2025_03_alx:Model {node_id: 'logReg_2025_03_alx'})
MATCH (niryo_2024:Dataset {node_id: 'niryo_2024'})
MERGE (logReg_2025_03_alx)-[:trainedWith]->(niryo_2024);
MATCH (logReg_2025_03_alx:Model {node_id: 'logReg_2025_03_alx'})
MATCH (ScrewPlacement:Task {node_id: 'ScrewPlacement'})
MERGE (logReg_2025_03_alx)-[:achieves]->(ScrewPlacement);
MATCH (logReg_2025_03_alx:Model {node_id: 'logReg_2025_03_alx'})
MATCH (cat__screwType_Schloss:ProcessedAttribute {node_id: 'cat__screwType_Schloss'})
MERGE (logReg_2025_03_alx)-[:used]->(cat__screwType_Schloss);
MATCH (logReg_2025_03_alx:Model {node_id: 'logReg_2025_03_alx'})
MATCH (cat__screwType_Sechskant:ProcessedAttribute {node_id: 'cat__screwType_Sechskant'})
MERGE (logReg_2025_03_alx)-[:used]->(cat__screwType_Sechskant);
MATCH (logReg_2025_03_alx:Model {node_id: 'logReg_2025_03_alx'})
MATCH (cat__screwType_Zylinder:ProcessedAttribute {node_id: 'cat__screwType_Zylinder'})
MERGE (logReg_2025_03_alx)-[:used]->(cat__screwType_Zylinder);
MATCH (logReg_2025_03_alx:Model {node_id: 'logReg_2025_03_alx'})
MATCH (cat__bracketType_Einkerbung:ProcessedAttribute {node_id: 'cat__bracketType_Einkerbung'})
MERGE (logReg_2025_03_alx)-[:used]->(cat__bracketType_Einkerbung);
MATCH (logReg_2025_03_alx:Model {node_id: 'logReg_2025_03_alx'})
MATCH (cat__bracketType_Silicon:ProcessedAttribute {node_id: 'cat__bracketType_Silicon'})
MERGE (logReg_2025_03_alx)-[:used]->(cat__bracketType_Silicon);
MATCH (logReg_2025_03_alx:Model {node_id: 'logReg_2025_03_alx'})
MATCH (cat__bracketType_Standard:ProcessedAttribute {node_id: 'cat__bracketType_Standard'})
MERGE (logReg_2025_03_alx)-[:used]->(cat__bracketType_Standard);
MATCH (logReg_2025_03_alx:Model {node_id: 'logReg_2025_03_alx'})
MATCH (num__screwId:ProcessedAttribute {node_id: 'num__screwId'})
MERGE (logReg_2025_03_alx)-[:used]->(num__screwId);
MATCH (logReg_2025_03_alx:Model {node_id: 'logReg_2025_03_alx'})
MATCH (num__headWidth:ProcessedAttribute {node_id: 'num__headWidth'})
MERGE (logReg_2025_03_alx)-[:used]->(num__headWidth);
MATCH (logReg_2025_03_alx:Model {node_id: 'logReg_2025_03_alx'})
MATCH (num__headThickness:ProcessedAttribute {node_id: 'num__headThickness'})
MERGE (logReg_2025_03_alx)-[:used]->(num__headThickness);
MATCH (logReg_2025_03_alx:Model {node_id: 'logReg_2025_03_alx'})
MATCH (num__length:ProcessedAttribute {node_id: 'num__length'})
MERGE (logReg_2025_03_alx)-[:used]->(num__length);
MATCH (logReg_2025_03_alx:Model {node_id: 'logReg_2025_03_alx'})
MATCH (num__weight:ProcessedAttribute {node_id: 'num__weight'})
MERGE (logReg_2025_03_alx)-[:used]->(num__weight);
MATCH (logReg_2025_03_alx:Model {node_id: 'logReg_2025_03_alx'})
MATCH (num__diameter:ProcessedAttribute {node_id: 'num__diameter'})
MERGE (logReg_2025_03_alx)-[:used]->(num__diameter);
MATCH (logReg_2025_03_alx:Model {node_id: 'logReg_2025_03_alx'})
MATCH (num__angle:ProcessedAttribute {node_id: 'num__angle'})
MERGE (logReg_2025_03_alx)-[:used]->(num__angle);
MATCH (logReg_2025_03_alx:Model {node_id: 'logReg_2025_03_alx'})
MATCH (remainder__coating:ProcessedAttribute {node_id: 'remainder__coating'})
MERGE (logReg_2025_03_alx)-[:used]->(remainder__coating);

MATCH (decTree_2025_03_alx:Model {node_id: 'decTree_2025_03_alx'})
MATCH (niryo_2024:Dataset {node_id: 'niryo_2024'})
MERGE (decTree_2025_03_alx)-[:trainedWith]->(niryo_2024);
MATCH (decTree_2025_03_alx:Model {node_id: 'decTree_2025_03_alx'})
MATCH (ScrewPlacement:Task {node_id: 'ScrewPlacement'})
MERGE (decTree_2025_03_alx)-[:achieves]->(ScrewPlacement);
MATCH (decTree_2025_03_alx:Model {node_id: 'decTree_2025_03_alx'})
MATCH (cat__screwType_Schloss:ProcessedAttribute {node_id: 'cat__screwType_Schloss'})
MERGE (decTree_2025_03_alx)-[:used]->(cat__screwType_Schloss);
MATCH (decTree_2025_03_alx:Model {node_id: 'decTree_2025_03_alx'})
MATCH (cat__screwType_Sechskant:ProcessedAttribute {node_id: 'cat__screwType_Sechskant'})
MERGE (decTree_2025_03_alx)-[:used]->(cat__screwType_Sechskant);
MATCH (decTree_2025_03_alx:Model {node_id: 'decTree_2025_03_alx'})
MATCH (cat__screwType_Zylinder:ProcessedAttribute {node_id: 'cat__screwType_Zylinder'})
MERGE (decTree_2025_03_alx)-[:used]->(cat__screwType_Zylinder);
MATCH (decTree_2025_03_alx:Model {node_id: 'decTree_2025_03_alx'})
MATCH (cat__bracketType_Einkerbung:ProcessedAttribute {node_id: 'cat__bracketType_Einkerbung'})
MERGE (decTree_2025_03_alx)-[:used]->(cat__bracketType_Einkerbung);
MATCH (decTree_2025_03_alx:Model {node_id: 'decTree_2025_03_alx'})
MATCH (cat__bracketType_Silicon:ProcessedAttribute {node_id: 'cat__bracketType_Silicon'})
MERGE (decTree_2025_03_alx)-[:used]->(cat__bracketType_Silicon);
MATCH (decTree_2025_03_alx:Model {node_id: 'decTree_2025_03_alx'})
MATCH (cat__bracketType_Standard:ProcessedAttribute {node_id: 'cat__bracketType_Standard'})
MERGE (decTree_2025_03_alx)-[:used]->(cat__bracketType_Standard);
MATCH (decTree_2025_03_alx:Model {node_id: 'decTree_2025_03_alx'})
MATCH (num__screwId:ProcessedAttribute {node_id: 'num__screwId'})
MERGE (decTree_2025_03_alx)-[:used]->(num__screwId);
MATCH (decTree_2025_03_alx:Model {node_id: 'decTree_2025_03_alx'})
MATCH (num__headWidth:ProcessedAttribute {node_id: 'num__headWidth'})
MERGE (decTree_2025_03_alx)-[:used]->(num__headWidth);
MATCH (decTree_2025_03_alx:Model {node_id: 'decTree_2025_03_alx'})
MATCH (num__headThickness:ProcessedAttribute {node_id: 'num__headThickness'})
MERGE (decTree_2025_03_alx)-[:used]->(num__headThickness);
MATCH (decTree_2025_03_alx:Model {node_id: 'decTree_2025_03_alx'})
MATCH (num__length:ProcessedAttribute {node_id: 'num__length'})
MERGE (decTree_2025_03_alx)-[:used]->(num__length);
MATCH (decTree_2025_03_alx:Model {node_id: 'decTree_2025_03_alx'})
MATCH (num__weight:ProcessedAttribute {node_id: 'num__weight'})
MERGE (decTree_2025_03_alx)-[:used]->(num__weight);
MATCH (decTree_2025_03_alx:Model {node_id: 'decTree_2025_03_alx'})
MATCH (num__diameter:ProcessedAttribute {node_id: 'num__diameter'})
MERGE (decTree_2025_03_alx)-[:used]->(num__diameter);
MATCH (decTree_2025_03_alx:Model {node_id: 'decTree_2025_03_alx'})
MATCH (num__angle:ProcessedAttribute {node_id: 'num__angle'})
MERGE (decTree_2025_03_alx)-[:used]->(num__angle);
MATCH (decTree_2025_03_alx:Model {node_id: 'decTree_2025_03_alx'})
MATCH (remainder__coating:ProcessedAttribute {node_id: 'remainder__coating'})
MERGE (decTree_2025_03_alx)-[:used]->(remainder__coating);

MATCH (ranFor_2025_03_alx:Model {node_id: 'ranFor_2025_03_alx'})
MATCH (niryo_2024:Dataset {node_id: 'niryo_2024'})
MERGE (ranFor_2025_03_alx)-[:trainedWith]->(niryo_2024);
MATCH (ranFor_2025_03_alx:Model {node_id: 'ranFor_2025_03_alx'})
MATCH (ScrewPlacement:Task {node_id: 'ScrewPlacement'})
MERGE (ranFor_2025_03_alx)-[:achieves]->(ScrewPlacement);
MATCH (ranFor_2025_03_alx:Model {node_id: 'ranFor_2025_03_alx'})
MATCH (cat__screwType_Schloss:ProcessedAttribute {node_id: 'cat__screwType_Schloss'})
MERGE (ranFor_2025_03_alx)-[:used]->(cat__screwType_Schloss);
MATCH (ranFor_2025_03_alx:Model {node_id: 'ranFor_2025_03_alx'})
MATCH (cat__screwType_Sechskant:ProcessedAttribute {node_id: 'cat__screwType_Sechskant'})
MERGE (ranFor_2025_03_alx)-[:used]->(cat__screwType_Sechskant);
MATCH (ranFor_2025_03_alx:Model {node_id: 'ranFor_2025_03_alx'})
MATCH (cat__screwType_Zylinder:ProcessedAttribute {node_id: 'cat__screwType_Zylinder'})
MERGE (ranFor_2025_03_alx)-[:used]->(cat__screwType_Zylinder);
MATCH (ranFor_2025_03_alx:Model {node_id: 'ranFor_2025_03_alx'})
MATCH (cat__bracketType_Einkerbung:ProcessedAttribute {node_id: 'cat__bracketType_Einkerbung'})
MERGE (ranFor_2025_03_alx)-[:used]->(cat__bracketType_Einkerbung);
MATCH (ranFor_2025_03_alx:Model {node_id: 'ranFor_2025_03_alx'})
MATCH (cat__bracketType_Silicon:ProcessedAttribute {node_id: 'cat__bracketType_Silicon'})
MERGE (ranFor_2025_03_alx)-[:used]->(cat__bracketType_Silicon);
MATCH (ranFor_2025_03_alx:Model {node_id: 'ranFor_2025_03_alx'})
MATCH (cat__bracketType_Standard:ProcessedAttribute {node_id: 'cat__bracketType_Standard'})
MERGE (ranFor_2025_03_alx)-[:used]->(cat__bracketType_Standard);
MATCH (ranFor_2025_03_alx:Model {node_id: 'ranFor_2025_03_alx'})
MATCH (num__screwId:ProcessedAttribute {node_id: 'num__screwId'})
MERGE (ranFor_2025_03_alx)-[:used]->(num__screwId);
MATCH (ranFor_2025_03_alx:Model {node_id: 'ranFor_2025_03_alx'})
MATCH (num__headWidth:ProcessedAttribute {node_id: 'num__headWidth'})
MERGE (ranFor_2025_03_alx)-[:used]->(num__headWidth);
MATCH (ranFor_2025_03_alx:Model {node_id: 'ranFor_2025_03_alx'})
MATCH (num__headThickness:ProcessedAttribute {node_id: 'num__headThickness'})
MERGE (ranFor_2025_03_alx)-[:used]->(num__headThickness);
MATCH (ranFor_2025_03_alx:Model {node_id: 'ranFor_2025_03_alx'})
MATCH (num__length:ProcessedAttribute {node_id: 'num__length'})
MERGE (ranFor_2025_03_alx)-[:used]->(num__length);
MATCH (ranFor_2025_03_alx:Model {node_id: 'ranFor_2025_03_alx'})
MATCH (num__weight:ProcessedAttribute {node_id: 'num__weight'})
MERGE (ranFor_2025_03_alx)-[:used]->(num__weight);
MATCH (ranFor_2025_03_alx:Model {node_id: 'ranFor_2025_03_alx'})
MATCH (num__diameter:ProcessedAttribute {node_id: 'num__diameter'})
MERGE (ranFor_2025_03_alx)-[:used]->(num__diameter);
MATCH (ranFor_2025_03_alx:Model {node_id: 'ranFor_2025_03_alx'})
MATCH (num__angle:ProcessedAttribute {node_id: 'num__angle'})
MERGE (ranFor_2025_03_alx)-[:used]->(num__angle);
MATCH (ranFor_2025_03_alx:Model {node_id: 'ranFor_2025_03_alx'})
MATCH (remainder__coating:ProcessedAttribute {node_id: 'remainder__coating'})
MERGE (ranFor_2025_03_alx)-[:used]->(remainder__coating);

MATCH (nn_2025_03_alx:Model {node_id: 'nn_2025_03_alx'})
MATCH (niryo_2024:Dataset {node_id: 'niryo_2024'})
MERGE (nn_2025_03_alx)-[:trainedWith]->(niryo_2024);
MATCH (nn_2025_03_alx:Model {node_id: 'nn_2025_03_alx'})
MATCH (ScrewPlacement:Task {node_id: 'ScrewPlacement'})
MERGE (nn_2025_03_alx)-[:achieves]->(ScrewPlacement);
MATCH (nn_2025_03_alx:Model {node_id: 'nn_2025_03_alx'})
MATCH (cat__screwType_Schloss:ProcessedAttribute {node_id: 'cat__screwType_Schloss'})
MERGE (nn_2025_03_alx)-[:used]->(cat__screwType_Schloss);
MATCH (nn_2025_03_alx:Model {node_id: 'nn_2025_03_alx'})
MATCH (cat__screwType_Sechskant:ProcessedAttribute {node_id: 'cat__screwType_Sechskant'})
MERGE (nn_2025_03_alx)-[:used]->(cat__screwType_Sechskant);
MATCH (nn_2025_03_alx:Model {node_id: 'nn_2025_03_alx'})
MATCH (cat__screwType_Zylinder:ProcessedAttribute {node_id: 'cat__screwType_Zylinder'})
MERGE (nn_2025_03_alx)-[:used]->(cat__screwType_Zylinder);
MATCH (nn_2025_03_alx:Model {node_id: 'nn_2025_03_alx'})
MATCH (cat__bracketType_Einkerbung:ProcessedAttribute {node_id: 'cat__bracketType_Einkerbung'})
MERGE (nn_2025_03_alx)-[:used]->(cat__bracketType_Einkerbung);
MATCH (nn_2025_03_alx:Model {node_id: 'nn_2025_03_alx'})
MATCH (cat__bracketType_Silicon:ProcessedAttribute {node_id: 'cat__bracketType_Silicon'})
MERGE (nn_2025_03_alx)-[:used]->(cat__bracketType_Silicon);
MATCH (nn_2025_03_alx:Model {node_id: 'nn_2025_03_alx'})
MATCH (cat__bracketType_Standard:ProcessedAttribute {node_id: 'cat__bracketType_Standard'})
MERGE (nn_2025_03_alx)-[:used]->(cat__bracketType_Standard);
MATCH (nn_2025_03_alx:Model {node_id: 'nn_2025_03_alx'})
MATCH (num__screwId:ProcessedAttribute {node_id: 'num__screwId'})
MERGE (nn_2025_03_alx)-[:used]->(num__screwId);
MATCH (nn_2025_03_alx:Model {node_id: 'nn_2025_03_alx'})
MATCH (num__headWidth:ProcessedAttribute {node_id: 'num__headWidth'})
MERGE (nn_2025_03_alx)-[:used]->(num__headWidth);
MATCH (nn_2025_03_alx:Model {node_id: 'nn_2025_03_alx'})
MATCH (num__headThickness:ProcessedAttribute {node_id: 'num__headThickness'})
MERGE (nn_2025_03_alx)-[:used]->(num__headThickness);
MATCH (nn_2025_03_alx:Model {node_id: 'nn_2025_03_alx'})
MATCH (num__length:ProcessedAttribute {node_id: 'num__length'})
MERGE (nn_2025_03_alx)-[:used]->(num__length);
MATCH (nn_2025_03_alx:Model {node_id: 'nn_2025_03_alx'})
MATCH (num__weight:ProcessedAttribute {node_id: 'num__weight'})
MERGE (nn_2025_03_alx)-[:used]->(num__weight);
MATCH (nn_2025_03_alx:Model {node_id: 'nn_2025_03_alx'})
MATCH (num__diameter:ProcessedAttribute {node_id: 'num__diameter'})
MERGE (nn_2025_03_alx)-[:used]->(num__diameter);
MATCH (nn_2025_03_alx:Model {node_id: 'nn_2025_03_alx'})
MATCH (num__angle:ProcessedAttribute {node_id: 'num__angle'})
MERGE (nn_2025_03_alx)-[:used]->(num__angle);
MATCH (nn_2025_03_alx:Model {node_id: 'nn_2025_03_alx'})
MATCH (remainder__coating:ProcessedAttribute {node_id: 'remainder__coating'})
MERGE (nn_2025_03_alx)-[:used]->(remainder__coating);

MATCH (SHAP_logReg_2025_03_alx_cat__screwType_Schloss:SHAPValue {node_id: 'SHAP_logReg_2025_03_alx_cat__screwType_Schloss'})
MATCH (logReg_2025_03_alx:Model {node_id: 'logReg_2025_03_alx'})
MERGE (SHAP_logReg_2025_03_alx_cat__screwType_Schloss)-[:relatedTo]->(logReg_2025_03_alx);
MATCH (SHAP_logReg_2025_03_alx_cat__screwType_Schloss:SHAPValue {node_id: 'SHAP_logReg_2025_03_alx_cat__screwType_Schloss'})
MATCH (cat__screwType_Schloss:ProcessedAttribute {node_id: 'cat__screwType_Schloss'})
MERGE (SHAP_logReg_2025_03_alx_cat__screwType_Schloss)-[:explains]->(cat__screwType_Schloss);

MATCH (SHAP_logReg_2025_03_alx_cat__screwType_Sechskant:SHAPValue {node_id: 'SHAP_logReg_2025_03_alx_cat__screwType_Sechskant'})
MATCH (logReg_2025_03_alx:Model {node_id: 'logReg_2025_03_alx'})
MERGE (SHAP_logReg_2025_03_alx_cat__screwType_Sechskant)-[:relatedTo]->(logReg_2025_03_alx);
MATCH (SHAP_logReg_2025_03_alx_cat__screwType_Sechskant:SHAPValue {node_id: 'SHAP_logReg_2025_03_alx_cat__screwType_Sechskant'})
MATCH (cat__screwType_Sechskant:ProcessedAttribute {node_id: 'cat__screwType_Sechskant'})
MERGE (SHAP_logReg_2025_03_alx_cat__screwType_Sechskant)-[:explains]->(cat__screwType_Sechskant);

MATCH (SHAP_logReg_2025_03_alx_cat__screwType_Zylinder:SHAPValue {node_id: 'SHAP_logReg_2025_03_alx_cat__screwType_Zylinder'})
MATCH (logReg_2025_03_alx:Model {node_id: 'logReg_2025_03_alx'})
MERGE (SHAP_logReg_2025_03_alx_cat__screwType_Zylinder)-[:relatedTo]->(logReg_2025_03_alx);
MATCH (SHAP_logReg_2025_03_alx_cat__screwType_Zylinder:SHAPValue {node_id: 'SHAP_logReg_2025_03_alx_cat__screwType_Zylinder'})
MATCH (cat__screwType_Zylinder:ProcessedAttribute {node_id: 'cat__screwType_Zylinder'})
MERGE (SHAP_logReg_2025_03_alx_cat__screwType_Zylinder)-[:explains]->(cat__screwType_Zylinder);

MATCH (SHAP_logReg_2025_03_alx_cat__bracketType_Einkerbung:SHAPValue {node_id: 'SHAP_logReg_2025_03_alx_cat__bracketType_Einkerbung'})
MATCH (logReg_2025_03_alx:Model {node_id: 'logReg_2025_03_alx'})
MERGE (SHAP_logReg_2025_03_alx_cat__bracketType_Einkerbung)-[:relatedTo]->(logReg_2025_03_alx);
MATCH (SHAP_logReg_2025_03_alx_cat__bracketType_Einkerbung:SHAPValue {node_id: 'SHAP_logReg_2025_03_alx_cat__bracketType_Einkerbung'})
MATCH (cat__bracketType_Einkerbung:ProcessedAttribute {node_id: 'cat__bracketType_Einkerbung'})
MERGE (SHAP_logReg_2025_03_alx_cat__bracketType_Einkerbung)-[:explains]->(cat__bracketType_Einkerbung);

MATCH (SHAP_logReg_2025_03_alx_cat__bracketType_Silicon:SHAPValue {node_id: 'SHAP_logReg_2025_03_alx_cat__bracketType_Silicon'})
MATCH (logReg_2025_03_alx:Model {node_id: 'logReg_2025_03_alx'})
MERGE (SHAP_logReg_2025_03_alx_cat__bracketType_Silicon)-[:relatedTo]->(logReg_2025_03_alx);
MATCH (SHAP_logReg_2025_03_alx_cat__bracketType_Silicon:SHAPValue {node_id: 'SHAP_logReg_2025_03_alx_cat__bracketType_Silicon'})
MATCH (cat__bracketType_Silicon:ProcessedAttribute {node_id: 'cat__bracketType_Silicon'})
MERGE (SHAP_logReg_2025_03_alx_cat__bracketType_Silicon)-[:explains]->(cat__bracketType_Silicon);

MATCH (SHAP_logReg_2025_03_alx_cat__bracketType_Standard:SHAPValue {node_id: 'SHAP_logReg_2025_03_alx_cat__bracketType_Standard'})
MATCH (logReg_2025_03_alx:Model {node_id: 'logReg_2025_03_alx'})
MERGE (SHAP_logReg_2025_03_alx_cat__bracketType_Standard)-[:relatedTo]->(logReg_2025_03_alx);
MATCH (SHAP_logReg_2025_03_alx_cat__bracketType_Standard:SHAPValue {node_id: 'SHAP_logReg_2025_03_alx_cat__bracketType_Standard'})
MATCH (cat__bracketType_Standard:ProcessedAttribute {node_id: 'cat__bracketType_Standard'})
MERGE (SHAP_logReg_2025_03_alx_cat__bracketType_Standard)-[:explains]->(cat__bracketType_Standard);

MATCH (SHAP_logReg_2025_03_alx_num__screwId:SHAPValue {node_id: 'SHAP_logReg_2025_03_alx_num__screwId'})
MATCH (logReg_2025_03_alx:Model {node_id: 'logReg_2025_03_alx'})
MERGE (SHAP_logReg_2025_03_alx_num__screwId)-[:relatedTo]->(logReg_2025_03_alx);
MATCH (SHAP_logReg_2025_03_alx_num__screwId:SHAPValue {node_id: 'SHAP_logReg_2025_03_alx_num__screwId'})
MATCH (num__screwId:ProcessedAttribute {node_id: 'num__screwId'})
MERGE (SHAP_logReg_2025_03_alx_num__screwId)-[:explains]->(num__screwId);

MATCH (SHAP_logReg_2025_03_alx_num__headWidth:SHAPValue {node_id: 'SHAP_logReg_2025_03_alx_num__headWidth'})
MATCH (logReg_2025_03_alx:Model {node_id: 'logReg_2025_03_alx'})
MERGE (SHAP_logReg_2025_03_alx_num__headWidth)-[:relatedTo]->(logReg_2025_03_alx);
MATCH (SHAP_logReg_2025_03_alx_num__headWidth:SHAPValue {node_id: 'SHAP_logReg_2025_03_alx_num__headWidth'})
MATCH (num__headWidth:ProcessedAttribute {node_id: 'num__headWidth'})
MERGE (SHAP_logReg_2025_03_alx_num__headWidth)-[:explains]->(num__headWidth);

MATCH (SHAP_logReg_2025_03_alx_num__headThickness:SHAPValue {node_id: 'SHAP_logReg_2025_03_alx_num__headThickness'})
MATCH (logReg_2025_03_alx:Model {node_id: 'logReg_2025_03_alx'})
MERGE (SHAP_logReg_2025_03_alx_num__headThickness)-[:relatedTo]->(logReg_2025_03_alx);
MATCH (SHAP_logReg_2025_03_alx_num__headThickness:SHAPValue {node_id: 'SHAP_logReg_2025_03_alx_num__headThickness'})
MATCH (num__headThickness:ProcessedAttribute {node_id: 'num__headThickness'})
MERGE (SHAP_logReg_2025_03_alx_num__headThickness)-[:explains]->(num__headThickness);

MATCH (SHAP_logReg_2025_03_alx_num__length:SHAPValue {node_id: 'SHAP_logReg_2025_03_alx_num__length'})
MATCH (logReg_2025_03_alx:Model {node_id: 'logReg_2025_03_alx'})
MERGE (SHAP_logReg_2025_03_alx_num__length)-[:relatedTo]->(logReg_2025_03_alx);
MATCH (SHAP_logReg_2025_03_alx_num__length:SHAPValue {node_id: 'SHAP_logReg_2025_03_alx_num__length'})
MATCH (num__length:ProcessedAttribute {node_id: 'num__length'})
MERGE (SHAP_logReg_2025_03_alx_num__length)-[:explains]->(num__length);

MATCH (SHAP_logReg_2025_03_alx_num__weight:SHAPValue {node_id: 'SHAP_logReg_2025_03_alx_num__weight'})
MATCH (logReg_2025_03_alx:Model {node_id: 'logReg_2025_03_alx'})
MERGE (SHAP_logReg_2025_03_alx_num__weight)-[:relatedTo]->(logReg_2025_03_alx);
MATCH (SHAP_logReg_2025_03_alx_num__weight:SHAPValue {node_id: 'SHAP_logReg_2025_03_alx_num__weight'})
MATCH (num__weight:ProcessedAttribute {node_id: 'num__weight'})
MERGE (SHAP_logReg_2025_03_alx_num__weight)-[:explains]->(num__weight);

MATCH (SHAP_logReg_2025_03_alx_num__diameter:SHAPValue {node_id: 'SHAP_logReg_2025_03_alx_num__diameter'})
MATCH (logReg_2025_03_alx:Model {node_id: 'logReg_2025_03_alx'})
MERGE (SHAP_logReg_2025_03_alx_num__diameter)-[:relatedTo]->(logReg_2025_03_alx);
MATCH (SHAP_logReg_2025_03_alx_num__diameter:SHAPValue {node_id: 'SHAP_logReg_2025_03_alx_num__diameter'})
MATCH (num__diameter:ProcessedAttribute {node_id: 'num__diameter'})
MERGE (SHAP_logReg_2025_03_alx_num__diameter)-[:explains]->(num__diameter);

MATCH (SHAP_logReg_2025_03_alx_num__angle:SHAPValue {node_id: 'SHAP_logReg_2025_03_alx_num__angle'})
MATCH (logReg_2025_03_alx:Model {node_id: 'logReg_2025_03_alx'})
MERGE (SHAP_logReg_2025_03_alx_num__angle)-[:relatedTo]->(logReg_2025_03_alx);
MATCH (SHAP_logReg_2025_03_alx_num__angle:SHAPValue {node_id: 'SHAP_logReg_2025_03_alx_num__angle'})
MATCH (num__angle:ProcessedAttribute {node_id: 'num__angle'})
MERGE (SHAP_logReg_2025_03_alx_num__angle)-[:explains]->(num__angle);

MATCH (SHAP_logReg_2025_03_alx_remainder__coating:SHAPValue {node_id: 'SHAP_logReg_2025_03_alx_remainder__coating'})
MATCH (logReg_2025_03_alx:Model {node_id: 'logReg_2025_03_alx'})
MERGE (SHAP_logReg_2025_03_alx_remainder__coating)-[:relatedTo]->(logReg_2025_03_alx);
MATCH (SHAP_logReg_2025_03_alx_remainder__coating:SHAPValue {node_id: 'SHAP_logReg_2025_03_alx_remainder__coating'})
MATCH (remainder__coating:ProcessedAttribute {node_id: 'remainder__coating'})
MERGE (SHAP_logReg_2025_03_alx_remainder__coating)-[:explains]->(remainder__coating);

MATCH (SHAP_decTree_2025_03_alx_cat__screwType_Schloss:SHAPValue {node_id: 'SHAP_decTree_2025_03_alx_cat__screwType_Schloss'})
MATCH (decTree_2025_03_alx:Model {node_id: 'decTree_2025_03_alx'})
MERGE (SHAP_decTree_2025_03_alx_cat__screwType_Schloss)-[:relatedTo]->(decTree_2025_03_alx);
MATCH (SHAP_decTree_2025_03_alx_cat__screwType_Schloss:SHAPValue {node_id: 'SHAP_decTree_2025_03_alx_cat__screwType_Schloss'})
MATCH (cat__screwType_Schloss:ProcessedAttribute {node_id: 'cat__screwType_Schloss'})
MERGE (SHAP_decTree_2025_03_alx_cat__screwType_Schloss)-[:explains]->(cat__screwType_Schloss);

MATCH (SHAP_decTree_2025_03_alx_cat__screwType_Sechskant:SHAPValue {node_id: 'SHAP_decTree_2025_03_alx_cat__screwType_Sechskant'})
MATCH (decTree_2025_03_alx:Model {node_id: 'decTree_2025_03_alx'})
MERGE (SHAP_decTree_2025_03_alx_cat__screwType_Sechskant)-[:relatedTo]->(decTree_2025_03_alx);
MATCH (SHAP_decTree_2025_03_alx_cat__screwType_Sechskant:SHAPValue {node_id: 'SHAP_decTree_2025_03_alx_cat__screwType_Sechskant'})
MATCH (cat__screwType_Sechskant:ProcessedAttribute {node_id: 'cat__screwType_Sechskant'})
MERGE (SHAP_decTree_2025_03_alx_cat__screwType_Sechskant)-[:explains]->(cat__screwType_Sechskant);

MATCH (SHAP_decTree_2025_03_alx_cat__screwType_Zylinder:SHAPValue {node_id: 'SHAP_decTree_2025_03_alx_cat__screwType_Zylinder'})
MATCH (decTree_2025_03_alx:Model {node_id: 'decTree_2025_03_alx'})
MERGE (SHAP_decTree_2025_03_alx_cat__screwType_Zylinder)-[:relatedTo]->(decTree_2025_03_alx);
MATCH (SHAP_decTree_2025_03_alx_cat__screwType_Zylinder:SHAPValue {node_id: 'SHAP_decTree_2025_03_alx_cat__screwType_Zylinder'})
MATCH (cat__screwType_Zylinder:ProcessedAttribute {node_id: 'cat__screwType_Zylinder'})
MERGE (SHAP_decTree_2025_03_alx_cat__screwType_Zylinder)-[:explains]->(cat__screwType_Zylinder);

MATCH (SHAP_decTree_2025_03_alx_cat__bracketType_Einkerbung:SHAPValue {node_id: 'SHAP_decTree_2025_03_alx_cat__bracketType_Einkerbung'})
MATCH (decTree_2025_03_alx:Model {node_id: 'decTree_2025_03_alx'})
MERGE (SHAP_decTree_2025_03_alx_cat__bracketType_Einkerbung)-[:relatedTo]->(decTree_2025_03_alx);
MATCH (SHAP_decTree_2025_03_alx_cat__bracketType_Einkerbung:SHAPValue {node_id: 'SHAP_decTree_2025_03_alx_cat__bracketType_Einkerbung'})
MATCH (cat__bracketType_Einkerbung:ProcessedAttribute {node_id: 'cat__bracketType_Einkerbung'})
MERGE (SHAP_decTree_2025_03_alx_cat__bracketType_Einkerbung)-[:explains]->(cat__bracketType_Einkerbung);

MATCH (SHAP_decTree_2025_03_alx_cat__bracketType_Silicon:SHAPValue {node_id: 'SHAP_decTree_2025_03_alx_cat__bracketType_Silicon'})
MATCH (decTree_2025_03_alx:Model {node_id: 'decTree_2025_03_alx'})
MERGE (SHAP_decTree_2025_03_alx_cat__bracketType_Silicon)-[:relatedTo]->(decTree_2025_03_alx);
MATCH (SHAP_decTree_2025_03_alx_cat__bracketType_Silicon:SHAPValue {node_id: 'SHAP_decTree_2025_03_alx_cat__bracketType_Silicon'})
MATCH (cat__bracketType_Silicon:ProcessedAttribute {node_id: 'cat__bracketType_Silicon'})
MERGE (SHAP_decTree_2025_03_alx_cat__bracketType_Silicon)-[:explains]->(cat__bracketType_Silicon);

MATCH (SHAP_decTree_2025_03_alx_cat__bracketType_Standard:SHAPValue {node_id: 'SHAP_decTree_2025_03_alx_cat__bracketType_Standard'})
MATCH (decTree_2025_03_alx:Model {node_id: 'decTree_2025_03_alx'})
MERGE (SHAP_decTree_2025_03_alx_cat__bracketType_Standard)-[:relatedTo]->(decTree_2025_03_alx);
MATCH (SHAP_decTree_2025_03_alx_cat__bracketType_Standard:SHAPValue {node_id: 'SHAP_decTree_2025_03_alx_cat__bracketType_Standard'})
MATCH (cat__bracketType_Standard:ProcessedAttribute {node_id: 'cat__bracketType_Standard'})
MERGE (SHAP_decTree_2025_03_alx_cat__bracketType_Standard)-[:explains]->(cat__bracketType_Standard);

MATCH (SHAP_decTree_2025_03_alx_num__screwId:SHAPValue {node_id: 'SHAP_decTree_2025_03_alx_num__screwId'})
MATCH (decTree_2025_03_alx:Model {node_id: 'decTree_2025_03_alx'})
MERGE (SHAP_decTree_2025_03_alx_num__screwId)-[:relatedTo]->(decTree_2025_03_alx);
MATCH (SHAP_decTree_2025_03_alx_num__screwId:SHAPValue {node_id: 'SHAP_decTree_2025_03_alx_num__screwId'})
MATCH (num__screwId:ProcessedAttribute {node_id: 'num__screwId'})
MERGE (SHAP_decTree_2025_03_alx_num__screwId)-[:explains]->(num__screwId);

MATCH (SHAP_decTree_2025_03_alx_num__headWidth:SHAPValue {node_id: 'SHAP_decTree_2025_03_alx_num__headWidth'})
MATCH (decTree_2025_03_alx:Model {node_id: 'decTree_2025_03_alx'})
MERGE (SHAP_decTree_2025_03_alx_num__headWidth)-[:relatedTo]->(decTree_2025_03_alx);
MATCH (SHAP_decTree_2025_03_alx_num__headWidth:SHAPValue {node_id: 'SHAP_decTree_2025_03_alx_num__headWidth'})
MATCH (num__headWidth:ProcessedAttribute {node_id: 'num__headWidth'})
MERGE (SHAP_decTree_2025_03_alx_num__headWidth)-[:explains]->(num__headWidth);

MATCH (SHAP_decTree_2025_03_alx_num__headThickness:SHAPValue {node_id: 'SHAP_decTree_2025_03_alx_num__headThickness'})
MATCH (decTree_2025_03_alx:Model {node_id: 'decTree_2025_03_alx'})
MERGE (SHAP_decTree_2025_03_alx_num__headThickness)-[:relatedTo]->(decTree_2025_03_alx);
MATCH (SHAP_decTree_2025_03_alx_num__headThickness:SHAPValue {node_id: 'SHAP_decTree_2025_03_alx_num__headThickness'})
MATCH (num__headThickness:ProcessedAttribute {node_id: 'num__headThickness'})
MERGE (SHAP_decTree_2025_03_alx_num__headThickness)-[:explains]->(num__headThickness);

MATCH (SHAP_decTree_2025_03_alx_num__length:SHAPValue {node_id: 'SHAP_decTree_2025_03_alx_num__length'})
MATCH (decTree_2025_03_alx:Model {node_id: 'decTree_2025_03_alx'})
MERGE (SHAP_decTree_2025_03_alx_num__length)-[:relatedTo]->(decTree_2025_03_alx);
MATCH (SHAP_decTree_2025_03_alx_num__length:SHAPValue {node_id: 'SHAP_decTree_2025_03_alx_num__length'})
MATCH (num__length:ProcessedAttribute {node_id: 'num__length'})
MERGE (SHAP_decTree_2025_03_alx_num__length)-[:explains]->(num__length);

MATCH (SHAP_decTree_2025_03_alx_num__weight:SHAPValue {node_id: 'SHAP_decTree_2025_03_alx_num__weight'})
MATCH (decTree_2025_03_alx:Model {node_id: 'decTree_2025_03_alx'})
MERGE (SHAP_decTree_2025_03_alx_num__weight)-[:relatedTo]->(decTree_2025_03_alx);
MATCH (SHAP_decTree_2025_03_alx_num__weight:SHAPValue {node_id: 'SHAP_decTree_2025_03_alx_num__weight'})
MATCH (num__weight:ProcessedAttribute {node_id: 'num__weight'})
MERGE (SHAP_decTree_2025_03_alx_num__weight)-[:explains]->(num__weight);

MATCH (SHAP_decTree_2025_03_alx_num__diameter:SHAPValue {node_id: 'SHAP_decTree_2025_03_alx_num__diameter'})
MATCH (decTree_2025_03_alx:Model {node_id: 'decTree_2025_03_alx'})
MERGE (SHAP_decTree_2025_03_alx_num__diameter)-[:relatedTo]->(decTree_2025_03_alx);
MATCH (SHAP_decTree_2025_03_alx_num__diameter:SHAPValue {node_id: 'SHAP_decTree_2025_03_alx_num__diameter'})
MATCH (num__diameter:ProcessedAttribute {node_id: 'num__diameter'})
MERGE (SHAP_decTree_2025_03_alx_num__diameter)-[:explains]->(num__diameter);

MATCH (SHAP_decTree_2025_03_alx_num__angle:SHAPValue {node_id: 'SHAP_decTree_2025_03_alx_num__angle'})
MATCH (decTree_2025_03_alx:Model {node_id: 'decTree_2025_03_alx'})
MERGE (SHAP_decTree_2025_03_alx_num__angle)-[:relatedTo]->(decTree_2025_03_alx);
MATCH (SHAP_decTree_2025_03_alx_num__angle:SHAPValue {node_id: 'SHAP_decTree_2025_03_alx_num__angle'})
MATCH (num__angle:ProcessedAttribute {node_id: 'num__angle'})
MERGE (SHAP_decTree_2025_03_alx_num__angle)-[:explains]->(num__angle);

MATCH (SHAP_decTree_2025_03_alx_remainder__coating:SHAPValue {node_id: 'SHAP_decTree_2025_03_alx_remainder__coating'})
MATCH (decTree_2025_03_alx:Model {node_id: 'decTree_2025_03_alx'})
MERGE (SHAP_decTree_2025_03_alx_remainder__coating)-[:relatedTo]->(decTree_2025_03_alx);
MATCH (SHAP_decTree_2025_03_alx_remainder__coating:SHAPValue {node_id: 'SHAP_decTree_2025_03_alx_remainder__coating'})
MATCH (remainder__coating:ProcessedAttribute {node_id: 'remainder__coating'})
MERGE (SHAP_decTree_2025_03_alx_remainder__coating)-[:explains]->(remainder__coating);

MATCH (SHAP_ranFor_2025_03_alx_cat__screwType_Schloss:SHAPValue {node_id: 'SHAP_ranFor_2025_03_alx_cat__screwType_Schloss'})
MATCH (ranFor_2025_03_alx:Model {node_id: 'ranFor_2025_03_alx'})
MERGE (SHAP_ranFor_2025_03_alx_cat__screwType_Schloss)-[:relatedTo]->(ranFor_2025_03_alx);
MATCH (SHAP_ranFor_2025_03_alx_cat__screwType_Schloss:SHAPValue {node_id: 'SHAP_ranFor_2025_03_alx_cat__screwType_Schloss'})
MATCH (cat__screwType_Schloss:ProcessedAttribute {node_id: 'cat__screwType_Schloss'})
MERGE (SHAP_ranFor_2025_03_alx_cat__screwType_Schloss)-[:explains]->(cat__screwType_Schloss);

MATCH (SHAP_ranFor_2025_03_alx_cat__screwType_Sechskant:SHAPValue {node_id: 'SHAP_ranFor_2025_03_alx_cat__screwType_Sechskant'})
MATCH (ranFor_2025_03_alx:Model {node_id: 'ranFor_2025_03_alx'})
MERGE (SHAP_ranFor_2025_03_alx_cat__screwType_Sechskant)-[:relatedTo]->(ranFor_2025_03_alx);
MATCH (SHAP_ranFor_2025_03_alx_cat__screwType_Sechskant:SHAPValue {node_id: 'SHAP_ranFor_2025_03_alx_cat__screwType_Sechskant'})
MATCH (cat__screwType_Sechskant:ProcessedAttribute {node_id: 'cat__screwType_Sechskant'})
MERGE (SHAP_ranFor_2025_03_alx_cat__screwType_Sechskant)-[:explains]->(cat__screwType_Sechskant);

MATCH (SHAP_ranFor_2025_03_alx_cat__screwType_Zylinder:SHAPValue {node_id: 'SHAP_ranFor_2025_03_alx_cat__screwType_Zylinder'})
MATCH (ranFor_2025_03_alx:Model {node_id: 'ranFor_2025_03_alx'})
MERGE (SHAP_ranFor_2025_03_alx_cat__screwType_Zylinder)-[:relatedTo]->(ranFor_2025_03_alx);
MATCH (SHAP_ranFor_2025_03_alx_cat__screwType_Zylinder:SHAPValue {node_id: 'SHAP_ranFor_2025_03_alx_cat__screwType_Zylinder'})
MATCH (cat__screwType_Zylinder:ProcessedAttribute {node_id: 'cat__screwType_Zylinder'})
MERGE (SHAP_ranFor_2025_03_alx_cat__screwType_Zylinder)-[:explains]->(cat__screwType_Zylinder);

MATCH (SHAP_ranFor_2025_03_alx_cat__bracketType_Einkerbung:SHAPValue {node_id: 'SHAP_ranFor_2025_03_alx_cat__bracketType_Einkerbung'})
MATCH (ranFor_2025_03_alx:Model {node_id: 'ranFor_2025_03_alx'})
MERGE (SHAP_ranFor_2025_03_alx_cat__bracketType_Einkerbung)-[:relatedTo]->(ranFor_2025_03_alx);
MATCH (SHAP_ranFor_2025_03_alx_cat__bracketType_Einkerbung:SHAPValue {node_id: 'SHAP_ranFor_2025_03_alx_cat__bracketType_Einkerbung'})
MATCH (cat__bracketType_Einkerbung:ProcessedAttribute {node_id: 'cat__bracketType_Einkerbung'})
MERGE (SHAP_ranFor_2025_03_alx_cat__bracketType_Einkerbung)-[:explains]->(cat__bracketType_Einkerbung);

MATCH (SHAP_ranFor_2025_03_alx_cat__bracketType_Silicon:SHAPValue {node_id: 'SHAP_ranFor_2025_03_alx_cat__bracketType_Silicon'})
MATCH (ranFor_2025_03_alx:Model {node_id: 'ranFor_2025_03_alx'})
MERGE (SHAP_ranFor_2025_03_alx_cat__bracketType_Silicon)-[:relatedTo]->(ranFor_2025_03_alx);
MATCH (SHAP_ranFor_2025_03_alx_cat__bracketType_Silicon:SHAPValue {node_id: 'SHAP_ranFor_2025_03_alx_cat__bracketType_Silicon'})
MATCH (cat__bracketType_Silicon:ProcessedAttribute {node_id: 'cat__bracketType_Silicon'})
MERGE (SHAP_ranFor_2025_03_alx_cat__bracketType_Silicon)-[:explains]->(cat__bracketType_Silicon);

MATCH (SHAP_ranFor_2025_03_alx_cat__bracketType_Standard:SHAPValue {node_id: 'SHAP_ranFor_2025_03_alx_cat__bracketType_Standard'})
MATCH (ranFor_2025_03_alx:Model {node_id: 'ranFor_2025_03_alx'})
MERGE (SHAP_ranFor_2025_03_alx_cat__bracketType_Standard)-[:relatedTo]->(ranFor_2025_03_alx);
MATCH (SHAP_ranFor_2025_03_alx_cat__bracketType_Standard:SHAPValue {node_id: 'SHAP_ranFor_2025_03_alx_cat__bracketType_Standard'})
MATCH (cat__bracketType_Standard:ProcessedAttribute {node_id: 'cat__bracketType_Standard'})
MERGE (SHAP_ranFor_2025_03_alx_cat__bracketType_Standard)-[:explains]->(cat__bracketType_Standard);

MATCH (SHAP_ranFor_2025_03_alx_num__screwId:SHAPValue {node_id: 'SHAP_ranFor_2025_03_alx_num__screwId'})
MATCH (ranFor_2025_03_alx:Model {node_id: 'ranFor_2025_03_alx'})
MERGE (SHAP_ranFor_2025_03_alx_num__screwId)-[:relatedTo]->(ranFor_2025_03_alx);
MATCH (SHAP_ranFor_2025_03_alx_num__screwId:SHAPValue {node_id: 'SHAP_ranFor_2025_03_alx_num__screwId'})
MATCH (num__screwId:ProcessedAttribute {node_id: 'num__screwId'})
MERGE (SHAP_ranFor_2025_03_alx_num__screwId)-[:explains]->(num__screwId);

MATCH (SHAP_ranFor_2025_03_alx_num__headWidth:SHAPValue {node_id: 'SHAP_ranFor_2025_03_alx_num__headWidth'})
MATCH (ranFor_2025_03_alx:Model {node_id: 'ranFor_2025_03_alx'})
MERGE (SHAP_ranFor_2025_03_alx_num__headWidth)-[:relatedTo]->(ranFor_2025_03_alx);
MATCH (SHAP_ranFor_2025_03_alx_num__headWidth:SHAPValue {node_id: 'SHAP_ranFor_2025_03_alx_num__headWidth'})
MATCH (num__headWidth:ProcessedAttribute {node_id: 'num__headWidth'})
MERGE (SHAP_ranFor_2025_03_alx_num__headWidth)-[:explains]->(num__headWidth);

MATCH (SHAP_ranFor_2025_03_alx_num__headThickness:SHAPValue {node_id: 'SHAP_ranFor_2025_03_alx_num__headThickness'})
MATCH (ranFor_2025_03_alx:Model {node_id: 'ranFor_2025_03_alx'})
MERGE (SHAP_ranFor_2025_03_alx_num__headThickness)-[:relatedTo]->(ranFor_2025_03_alx);
MATCH (SHAP_ranFor_2025_03_alx_num__headThickness:SHAPValue {node_id: 'SHAP_ranFor_2025_03_alx_num__headThickness'})
MATCH (num__headThickness:ProcessedAttribute {node_id: 'num__headThickness'})
MERGE (SHAP_ranFor_2025_03_alx_num__headThickness)-[:explains]->(num__headThickness);

MATCH (SHAP_ranFor_2025_03_alx_num__length:SHAPValue {node_id: 'SHAP_ranFor_2025_03_alx_num__length'})
MATCH (ranFor_2025_03_alx:Model {node_id: 'ranFor_2025_03_alx'})
MERGE (SHAP_ranFor_2025_03_alx_num__length)-[:relatedTo]->(ranFor_2025_03_alx);
MATCH (SHAP_ranFor_2025_03_alx_num__length:SHAPValue {node_id: 'SHAP_ranFor_2025_03_alx_num__length'})
MATCH (num__length:ProcessedAttribute {node_id: 'num__length'})
MERGE (SHAP_ranFor_2025_03_alx_num__length)-[:explains]->(num__length);

MATCH (SHAP_ranFor_2025_03_alx_num__weight:SHAPValue {node_id: 'SHAP_ranFor_2025_03_alx_num__weight'})
MATCH (ranFor_2025_03_alx:Model {node_id: 'ranFor_2025_03_alx'})
MERGE (SHAP_ranFor_2025_03_alx_num__weight)-[:relatedTo]->(ranFor_2025_03_alx);
MATCH (SHAP_ranFor_2025_03_alx_num__weight:SHAPValue {node_id: 'SHAP_ranFor_2025_03_alx_num__weight'})
MATCH (num__weight:ProcessedAttribute {node_id: 'num__weight'})
MERGE (SHAP_ranFor_2025_03_alx_num__weight)-[:explains]->(num__weight);

MATCH (SHAP_ranFor_2025_03_alx_num__diameter:SHAPValue {node_id: 'SHAP_ranFor_2025_03_alx_num__diameter'})
MATCH (ranFor_2025_03_alx:Model {node_id: 'ranFor_2025_03_alx'})
MERGE (SHAP_ranFor_2025_03_alx_num__diameter)-[:relatedTo]->(ranFor_2025_03_alx);
MATCH (SHAP_ranFor_2025_03_alx_num__diameter:SHAPValue {node_id: 'SHAP_ranFor_2025_03_alx_num__diameter'})
MATCH (num__diameter:ProcessedAttribute {node_id: 'num__diameter'})
MERGE (SHAP_ranFor_2025_03_alx_num__diameter)-[:explains]->(num__diameter);

MATCH (SHAP_ranFor_2025_03_alx_num__angle:SHAPValue {node_id: 'SHAP_ranFor_2025_03_alx_num__angle'})
MATCH (ranFor_2025_03_alx:Model {node_id: 'ranFor_2025_03_alx'})
MERGE (SHAP_ranFor_2025_03_alx_num__angle)-[:relatedTo]->(ranFor_2025_03_alx);
MATCH (SHAP_ranFor_2025_03_alx_num__angle:SHAPValue {node_id: 'SHAP_ranFor_2025_03_alx_num__angle'})
MATCH (num__angle:ProcessedAttribute {node_id: 'num__angle'})
MERGE (SHAP_ranFor_2025_03_alx_num__angle)-[:explains]->(num__angle);

MATCH (SHAP_ranFor_2025_03_alx_remainder__coating:SHAPValue {node_id: 'SHAP_ranFor_2025_03_alx_remainder__coating'})
MATCH (ranFor_2025_03_alx:Model {node_id: 'ranFor_2025_03_alx'})
MERGE (SHAP_ranFor_2025_03_alx_remainder__coating)-[:relatedTo]->(ranFor_2025_03_alx);
MATCH (SHAP_ranFor_2025_03_alx_remainder__coating:SHAPValue {node_id: 'SHAP_ranFor_2025_03_alx_remainder__coating'})
MATCH (remainder__coating:ProcessedAttribute {node_id: 'remainder__coating'})
MERGE (SHAP_ranFor_2025_03_alx_remainder__coating)-[:explains]->(remainder__coating);

MATCH (SHAP_nn_2025_03_alx_cat__screwType_Schloss:SHAPValue {node_id: 'SHAP_nn_2025_03_alx_cat__screwType_Schloss'})
MATCH (nn_2025_03_alx:Model {node_id: 'nn_2025_03_alx'})
MERGE (SHAP_nn_2025_03_alx_cat__screwType_Schloss)-[:relatedTo]->(nn_2025_03_alx);
MATCH (SHAP_nn_2025_03_alx_cat__screwType_Schloss:SHAPValue {node_id: 'SHAP_nn_2025_03_alx_cat__screwType_Schloss'})
MATCH (cat__screwType_Schloss:ProcessedAttribute {node_id: 'cat__screwType_Schloss'})
MERGE (SHAP_nn_2025_03_alx_cat__screwType_Schloss)-[:explains]->(cat__screwType_Schloss);

MATCH (SHAP_nn_2025_03_alx_cat__screwType_Sechskant:SHAPValue {node_id: 'SHAP_nn_2025_03_alx_cat__screwType_Sechskant'})
MATCH (nn_2025_03_alx:Model {node_id: 'nn_2025_03_alx'})
MERGE (SHAP_nn_2025_03_alx_cat__screwType_Sechskant)-[:relatedTo]->(nn_2025_03_alx);
MATCH (SHAP_nn_2025_03_alx_cat__screwType_Sechskant:SHAPValue {node_id: 'SHAP_nn_2025_03_alx_cat__screwType_Sechskant'})
MATCH (cat__screwType_Sechskant:ProcessedAttribute {node_id: 'cat__screwType_Sechskant'})
MERGE (SHAP_nn_2025_03_alx_cat__screwType_Sechskant)-[:explains]->(cat__screwType_Sechskant);

MATCH (SHAP_nn_2025_03_alx_cat__screwType_Zylinder:SHAPValue {node_id: 'SHAP_nn_2025_03_alx_cat__screwType_Zylinder'})
MATCH (nn_2025_03_alx:Model {node_id: 'nn_2025_03_alx'})
MERGE (SHAP_nn_2025_03_alx_cat__screwType_Zylinder)-[:relatedTo]->(nn_2025_03_alx);
MATCH (SHAP_nn_2025_03_alx_cat__screwType_Zylinder:SHAPValue {node_id: 'SHAP_nn_2025_03_alx_cat__screwType_Zylinder'})
MATCH (cat__screwType_Zylinder:ProcessedAttribute {node_id: 'cat__screwType_Zylinder'})
MERGE (SHAP_nn_2025_03_alx_cat__screwType_Zylinder)-[:explains]->(cat__screwType_Zylinder);

MATCH (SHAP_nn_2025_03_alx_cat__bracketType_Einkerbung:SHAPValue {node_id: 'SHAP_nn_2025_03_alx_cat__bracketType_Einkerbung'})
MATCH (nn_2025_03_alx:Model {node_id: 'nn_2025_03_alx'})
MERGE (SHAP_nn_2025_03_alx_cat__bracketType_Einkerbung)-[:relatedTo]->(nn_2025_03_alx);
MATCH (SHAP_nn_2025_03_alx_cat__bracketType_Einkerbung:SHAPValue {node_id: 'SHAP_nn_2025_03_alx_cat__bracketType_Einkerbung'})
MATCH (cat__bracketType_Einkerbung:ProcessedAttribute {node_id: 'cat__bracketType_Einkerbung'})
MERGE (SHAP_nn_2025_03_alx_cat__bracketType_Einkerbung)-[:explains]->(cat__bracketType_Einkerbung);

MATCH (SHAP_nn_2025_03_alx_cat__bracketType_Silicon:SHAPValue {node_id: 'SHAP_nn_2025_03_alx_cat__bracketType_Silicon'})
MATCH (nn_2025_03_alx:Model {node_id: 'nn_2025_03_alx'})
MERGE (SHAP_nn_2025_03_alx_cat__bracketType_Silicon)-[:relatedTo]->(nn_2025_03_alx);
MATCH (SHAP_nn_2025_03_alx_cat__bracketType_Silicon:SHAPValue {node_id: 'SHAP_nn_2025_03_alx_cat__bracketType_Silicon'})
MATCH (cat__bracketType_Silicon:ProcessedAttribute {node_id: 'cat__bracketType_Silicon'})
MERGE (SHAP_nn_2025_03_alx_cat__bracketType_Silicon)-[:explains]->(cat__bracketType_Silicon);

MATCH (SHAP_nn_2025_03_alx_cat__bracketType_Standard:SHAPValue {node_id: 'SHAP_nn_2025_03_alx_cat__bracketType_Standard'})
MATCH (nn_2025_03_alx:Model {node_id: 'nn_2025_03_alx'})
MERGE (SHAP_nn_2025_03_alx_cat__bracketType_Standard)-[:relatedTo]->(nn_2025_03_alx);
MATCH (SHAP_nn_2025_03_alx_cat__bracketType_Standard:SHAPValue {node_id: 'SHAP_nn_2025_03_alx_cat__bracketType_Standard'})
MATCH (cat__bracketType_Standard:ProcessedAttribute {node_id: 'cat__bracketType_Standard'})
MERGE (SHAP_nn_2025_03_alx_cat__bracketType_Standard)-[:explains]->(cat__bracketType_Standard);

MATCH (SHAP_nn_2025_03_alx_num__screwId:SHAPValue {node_id: 'SHAP_nn_2025_03_alx_num__screwId'})
MATCH (nn_2025_03_alx:Model {node_id: 'nn_2025_03_alx'})
MERGE (SHAP_nn_2025_03_alx_num__screwId)-[:relatedTo]->(nn_2025_03_alx);
MATCH (SHAP_nn_2025_03_alx_num__screwId:SHAPValue {node_id: 'SHAP_nn_2025_03_alx_num__screwId'})
MATCH (num__screwId:ProcessedAttribute {node_id: 'num__screwId'})
MERGE (SHAP_nn_2025_03_alx_num__screwId)-[:explains]->(num__screwId);

MATCH (SHAP_nn_2025_03_alx_num__headWidth:SHAPValue {node_id: 'SHAP_nn_2025_03_alx_num__headWidth'})
MATCH (nn_2025_03_alx:Model {node_id: 'nn_2025_03_alx'})
MERGE (SHAP_nn_2025_03_alx_num__headWidth)-[:relatedTo]->(nn_2025_03_alx);
MATCH (SHAP_nn_2025_03_alx_num__headWidth:SHAPValue {node_id: 'SHAP_nn_2025_03_alx_num__headWidth'})
MATCH (num__headWidth:ProcessedAttribute {node_id: 'num__headWidth'})
MERGE (SHAP_nn_2025_03_alx_num__headWidth)-[:explains]->(num__headWidth);

MATCH (SHAP_nn_2025_03_alx_num__headThickness:SHAPValue {node_id: 'SHAP_nn_2025_03_alx_num__headThickness'})
MATCH (nn_2025_03_alx:Model {node_id: 'nn_2025_03_alx'})
MERGE (SHAP_nn_2025_03_alx_num__headThickness)-[:relatedTo]->(nn_2025_03_alx);
MATCH (SHAP_nn_2025_03_alx_num__headThickness:SHAPValue {node_id: 'SHAP_nn_2025_03_alx_num__headThickness'})
MATCH (num__headThickness:ProcessedAttribute {node_id: 'num__headThickness'})
MERGE (SHAP_nn_2025_03_alx_num__headThickness)-[:explains]->(num__headThickness);

MATCH (SHAP_nn_2025_03_alx_num__length:SHAPValue {node_id: 'SHAP_nn_2025_03_alx_num__length'})
MATCH (nn_2025_03_alx:Model {node_id: 'nn_2025_03_alx'})
MERGE (SHAP_nn_2025_03_alx_num__length)-[:relatedTo]->(nn_2025_03_alx);
MATCH (SHAP_nn_2025_03_alx_num__length:SHAPValue {node_id: 'SHAP_nn_2025_03_alx_num__length'})
MATCH (num__length:ProcessedAttribute {node_id: 'num__length'})
MERGE (SHAP_nn_2025_03_alx_num__length)-[:explains]->(num__length);

MATCH (SHAP_nn_2025_03_alx_num__weight:SHAPValue {node_id: 'SHAP_nn_2025_03_alx_num__weight'})
MATCH (nn_2025_03_alx:Model {node_id: 'nn_2025_03_alx'})
MERGE (SHAP_nn_2025_03_alx_num__weight)-[:relatedTo]->(nn_2025_03_alx);
MATCH (SHAP_nn_2025_03_alx_num__weight:SHAPValue {node_id: 'SHAP_nn_2025_03_alx_num__weight'})
MATCH (num__weight:ProcessedAttribute {node_id: 'num__weight'})
MERGE (SHAP_nn_2025_03_alx_num__weight)-[:explains]->(num__weight);

MATCH (SHAP_nn_2025_03_alx_num__diameter:SHAPValue {node_id: 'SHAP_nn_2025_03_alx_num__diameter'})
MATCH (nn_2025_03_alx:Model {node_id: 'nn_2025_03_alx'})
MERGE (SHAP_nn_2025_03_alx_num__diameter)-[:relatedTo]->(nn_2025_03_alx);
MATCH (SHAP_nn_2025_03_alx_num__diameter:SHAPValue {node_id: 'SHAP_nn_2025_03_alx_num__diameter'})
MATCH (num__diameter:ProcessedAttribute {node_id: 'num__diameter'})
MERGE (SHAP_nn_2025_03_alx_num__diameter)-[:explains]->(num__diameter);

MATCH (SHAP_nn_2025_03_alx_num__angle:SHAPValue {node_id: 'SHAP_nn_2025_03_alx_num__angle'})
MATCH (nn_2025_03_alx:Model {node_id: 'nn_2025_03_alx'})
MERGE (SHAP_nn_2025_03_alx_num__angle)-[:relatedTo]->(nn_2025_03_alx);
MATCH (SHAP_nn_2025_03_alx_num__angle:SHAPValue {node_id: 'SHAP_nn_2025_03_alx_num__angle'})
MATCH (num__angle:ProcessedAttribute {node_id: 'num__angle'})
MERGE (SHAP_nn_2025_03_alx_num__angle)-[:explains]->(num__angle);

MATCH (SHAP_nn_2025_03_alx_remainder__coating:SHAPValue {node_id: 'SHAP_nn_2025_03_alx_remainder__coating'})
MATCH (nn_2025_03_alx:Model {node_id: 'nn_2025_03_alx'})
MERGE (SHAP_nn_2025_03_alx_remainder__coating)-[:relatedTo]->(nn_2025_03_alx);
MATCH (SHAP_nn_2025_03_alx_remainder__coating:SHAPValue {node_id: 'SHAP_nn_2025_03_alx_remainder__coating'})
MATCH (remainder__coating:ProcessedAttribute {node_id: 'remainder__coating'})
MERGE (SHAP_nn_2025_03_alx_remainder__coating)-[:explains]->(remainder__coating);
