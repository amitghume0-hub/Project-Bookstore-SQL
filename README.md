# 📚 Bookstore Database SQL Analysis

## 🧾 Project Overview
This project demonstrates a series of **SQL queries** designed to analyze data from a bookstore database.  
The queries explore multiple dimensions of business intelligence — from sales performance and customer insights to inventory management — showcasing strong proficiency in **data retrieval, aggregation, joins, and analytical SQL functions**.

---

## 🧠 Database Schema (Inferred)

Based on the queries, the database includes three core tables that represent a standard bookstore data model:

| Table Name | Key Columns | Description |
|-------------|--------------|--------------|
| **books** | `book_id (PK)`, `title`, `author`, `genre`, `price`, `published_year`, `stock` | Stores book inventory details. |
| **customers** | `customer_id (PK)`, `name`, `country`, `city` | Stores customer demographic and location information. |
| **orders_N** | `order_id (PK)`, `customer_id (FK)`, `book_id (FK)`, `order_date`, `quantity`, `total_amount` | Stores transaction details and links customers with purchased books. |

---

## 🔍 Query Categories and Analysis

The `Project.sql` file contains **20 SQL queries**, categorized by functionality — ranging from simple filters to advanced analytical logic.

### 1️⃣ Basic Data Retrieval & Filtering (Q1–Q4)
Queries that extract targeted information using **WHERE** and **BETWEEN** clauses:
- **Books by genre or year**
- **Customers by location**
- **Orders within a date range**

### 2️⃣ Simple Aggregation (Q5–Q11)
These queries calculate essential business metrics:
- **Total Stock (SUM)**  
- **Most Expensive / Lowest Stock Book**  
- **Unique Genres (DISTINCT)**  
- **Total Revenue Generated (SUM of total_amount)**  

### 3️⃣ Grouped Aggregation & Joins (Q12–Q14, Q17)
Introduces **JOINs** and **GROUP BY** for more detailed analysis:
- **Books Sold by Genre or Author**
- **Average Price by Genre**
- **Customers with Multiple Orders**

### 4️⃣ Advanced Ranking & Business Intelligence (Q15, Q16, Q19)
Demonstrates the use of **window functions** and **ranking logic**:
- **Most Frequently Ordered Book**
- **Top 3 Expensive Fantasy Books** (using `ROW_NUMBER()`)
- **Top Spending Customer** (based on total amount)

### 5️⃣ Inventory & Customer Insights (Q18, Q20)
Focuses on connecting sales and customer data:
- **Cities with High-Value Orders**
- **Remaining Stock Calculation** using `LEFT JOIN` and `NVL()`  
  → Ensures accurate inventory updates even for books not yet ordered.

---

## 🧩 SQL Techniques Demonstrated

| Technique | Description |
|------------|--------------|
| **Filtering** | Using `WHERE`, logical and comparison operators, and date filters (`BETWEEN`). |
| **Aggregation** | Functions like `SUM()`, `AVG()`, and `COUNT()`. |
| **Grouping & Conditions** | `GROUP BY` and `HAVING` for grouped analysis. |
| **Joins** | `INNER JOIN` and `LEFT JOIN` for linking data across tables. |
| **Ranking** | Window functions (`ROW_NUMBER() OVER(...)`) for ranking and top-N analysis. |
| **Null Handling** | `NVL()` for replacing NULLs in inventory calculations. |
| **Data Limiting** | `ROWNUM` used to fetch top results (Oracle-specific). |

---

## 💡 Key Insights & Business Applications
- Identify **bestselling genres and authors**
- Track **top-spending customers**
- Understand **regional sales trends**
- Monitor **real-time inventory**
- Support **data-driven decisions** in a retail or bookstore environment

---

## 🧑‍💻 Author
**Amit Ghume**  

