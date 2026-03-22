## Anomaly Analysis

Insert Anomaly:
It is not possible to add a new product or sales representative unless an order is created. For example, product details such as product_id, product_name, and category cannot be inserted independently if no order exists.

Update Anomaly:
Customer and sales representative details are repeated across multiple rows. If a customer’s email or city needs to be updated, it must be changed in all rows where the customer appears. Missing even one row can lead to inconsistent data.

Delete Anomaly:
Deleting a single order can result in loss of important information. For example, if an order row is deleted, details about the customer, product, or sales representative may also be lost if they do not appear in other rows.


## Normalization Justification

Keeping all data in a single table may appear simple initially, but it leads to serious data management issues. In the given dataset, customer, product, and sales representative details are repeated across multiple rows. This redundancy increases storage usage and creates inconsistencies.

For example, if a customer’s email changes, it must be updated in multiple rows. If one row is missed, the database will contain conflicting information. Similarly, deleting a single order may result in the loss of important customer or product details, which should ideally be stored independently.

Normalization helps solve these problems by splitting the data into multiple related tables such as customers, products, orders, and sales representatives. This ensures that each piece of information is stored only once, improving data consistency and reducing redundancy.

Therefore, normalization is not over-engineering but a necessary step to ensure data integrity, scalability, and efficient database management.