## Vector DB Use Case

A traditional keyword-based search would not be sufficient for searching large legal documents such as 500-page contracts. Keyword search relies on exact word matching, which means it may fail to retrieve relevant information if different wording or synonyms are used. For example, a search for "termination clauses" might miss sections that use phrases like "contract cancellation terms."

A vector database, on the other hand, enables semantic search by understanding the meaning of the text rather than just matching keywords. It converts text into embeddings, which are numerical representations capturing the context and meaning of sentences. This allows the system to find relevant sections even if the exact words are not used.

In this scenario, all contract documents can be converted into embeddings and stored in a vector database. When a lawyer asks a question in plain English, the query is also converted into an embedding. The system then compares this query embedding with stored embeddings to find the most similar and relevant sections of the contract.

Therefore, a vector database plays a crucial role in enabling efficient, accurate, and context-aware search in large legal documents, making it far more effective than traditional keyword-based approaches.