## ETL Decisions

### Decision 1 — Date Format Standardization
Problem: The dataset contained dates in DD-MM-YYYY format, which is not ideal for analysis.
Resolution: All dates were converted into YYYY-MM-DD format and stored in a separate date dimension.

### Decision 2 — Category Cleaning
Problem: Categories had inconsistent casing such as 'electronics', 'Electronics', and 'Grocery'.
Resolution: All category values were standardized into consistent formats like 'Electronics', 'Clothing', and 'Groceries'.

### Decision 3 — Creating Surrogate Keys
Problem: The dataset did not contain unique identifiers for stores and products.
Resolution: Surrogate keys like store_id and product_id were created to maintain relationships and enable efficient joins.