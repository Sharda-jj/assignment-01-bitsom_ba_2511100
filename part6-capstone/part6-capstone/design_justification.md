## Storage Systems

In this architecture, different storage systems are used to handle different types of data efficiently. A relational database like MySQL is used for storing transactional data such as patient records, treatments, and hospital operations. This ensures data consistency and reliability.

A data warehouse is used for analytical purposes such as generating monthly reports on bed occupancy and department-wise costs. It allows fast querying and supports business intelligence tools.

A data lake is used to store raw and unstructured data such as logs, historical records, and large datasets. This helps in building machine learning models for predicting patient readmission risk.

A vector database is used to enable semantic search. It stores embeddings of patient records so that doctors can query patient history using natural language and get relevant results.

For real-time ICU monitoring, streaming tools like Kafka can be used to process continuous data from medical devices.

## OLTP vs OLAP Boundary

The OLTP system includes the MySQL database, which handles real-time transactional operations such as patient admissions, treatments, and updates. This system is optimized for fast inserts and updates.

The OLAP system begins when data is extracted from the transactional database and moved into the data warehouse. The data warehouse is optimized for analysis, reporting, and complex queries.

This separation ensures that operational systems are not affected by heavy analytical workloads.

## Trade-offs

One major trade-off in this architecture is the increased complexity due to multiple systems such as data lake, warehouse, and vector database. Managing and integrating these systems can be challenging.

To mitigate this, proper data pipelines and orchestration tools can be used to automate data flow and ensure consistency. Additionally, monitoring tools can help maintain system performance and reliability.