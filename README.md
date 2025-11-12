# SQL — Practice Problems & Reference Scripts

A curated collection of **SQL practice queries** and **short reference scripts** — focused on fundamentals like `SELECT`, `WHERE`, `JOIN`, `GROUP BY`, `HAVING`, `ORDER BY`, `LIMIT`, `UNION`, `CASE`, and string functions. Each `.sql` file contains self-contained examples and problem solutions you can open, run, and adapt.

## 🎯 Purpose

- Strengthen understanding of **SQL fundamentals**  
- Prepare for **interviews** involving SQL and database queries  
- Provide a **quick reference** for commonly used query patterns  
- Practice and adapt queries for **real-world scenarios**

## ⚙️ How to Use

### 1. Clone the Repository
```bash
git clone https://github.com/medhavisahgal/SQL.git
cd SQL
```
### 2. Open Any .sql File
Each file includes examples and comments explaining the logic.
### 3. Run Scripts in Your Database
MySQL:
```bash
mysql -u your_user -p your_database < "Select statement.sql"
PostgreSQL:
```
```bash
psql -U your_user -d your_database -f "Select statement.sql"
SQLite:
```
```bash
sqlite3 test.db < "Select statement.sql"
💡 Note: Syntax may vary slightly between database systems (MySQL, PostgreSQL, SQLite, etc.).
```
🧠 Example Query
```bash
-- Example from joins.sql
SELECT e.employee_id, e.name, d.department_name
FROM employees e
LEFT JOIN departments d ON e.department_id = d.department_id
WHERE d.department_name IS NOT NULL
ORDER BY e.employee_id;
```
## 🤝 Contributing

You’re welcome to contribute by:

- Adding new SQL problems or interview-style queries

- Improving comments and readability

- Adding sample data files (.csv) or test table creation scripts

### Steps to contribute:

1. Fork the repo

2. Create a new branch

3. Commit your changes

4. Open a Pull Request

Keep contributions clean, commented, and focused on one concept per file.

## ✍️ Style Notes
- Keep examples short and clear.

- Use ANSI SQL whenever possible for portability.

- Mention the database system if syntax differs (e.g., MySQL vs PostgreSQL).

Comment your queries for clarity.

## 🚀 Future Improvements
- Add sample seed.sql file with dummy data for practice

- Include step-by-step LeetCode solutions with explanations

- Add mini SQL projects (e.g., Employee Database Analysis)

- Create README-examples.md for hands-on tutorials
## 👤 Author
[Medhavi Sahgal](https://github.com/medhavisahgal)


