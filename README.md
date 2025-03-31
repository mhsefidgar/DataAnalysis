# SQL CheatSheet
*   Welcome to the SQL cheatsheet by Mohammad Sefidgar 
    
    SQL cheatsheet table handling code and explainations
    
    A basic SQL cheat sheet for handling tables:
    
    **Creating a table:**
    
        CREATE TABLE table_name (
          column1 datatype,
          column2 datatype,
          column3 datatype,
          ...
        );
        
    
    **Inserting data:**
    
        INSERT INTO table_name (column1, column2, column3, ...)
        VALUES (value1, value2, value3, ...);
        
    
    **Updating data:**
    
        UPDATE table_name
        SET column1 = new_value1, column2 = new_value2, ...
        WHERE condition;
        
    
    **Deleting data:**
    
        DELETE FROM table_name
        WHERE condition;
        
    
    **Selecting data:**
    
        SELECT column1, column2, ...
        FROM table_name
        WHERE condition
        ORDER BY column ASC/DESC
        LIMIT numOfRecords;
        
    
    Explanation of keywords used above:
    
    *   `CREATE TABLE`: Create a new table with defined column names and data types.
    *   `INSERT INTO`: Insert data into a specified table.
    *   `UPDATE`: Update existing data in a specified table.
    *   `DELETE FROM`: Delete data from a specified table.
    *   `SELECT`: Select data from a specified table based on specified criteria.
    *   `column`: The name of a column in a table.
    *   `datatype`: The data type of a column in a table (e.g. INT, VARCHAR, DATE).
    *   `VALUES`: The values to be inserted into a table.
    *   `SET`: The new values to set for updating a table.
    *   `WHERE`: The criteria to filter records in a table for updating or deleting.
    *   `ORDER BY`: The order in which to sort the selected data based on a specified column.
    *   `ASC/DESC`: The order of sorting (ascending or descending).
    *   `LIMIT`: The maximum number of records to select.
    

**WHERE:**

*   Used to filter data based on a specific condition
*   Syntax: SELECT column\_name(s) FROM table\_name WHERE condition

Example:

    SELECT first_name, last_name FROM customers WHERE city = 'New York';
    

**ORDER BY:**

*   Used to sort data in ascending or descending order
*   Syntax: SELECT column\_name(s) FROM table\_name ORDER BY column\_name ASC|DESC

Example:

    SELECT first_name, last_name FROM customers ORDER BY last_name ASC;
    

**GROUP BY:**

*   Used to group rows that have the same values into summary rows
*   Syntax: SELECT column\_name(s) FROM table\_name GROUP BY column\_name(s)

Example:

    SELECT COUNT(*), city FROM customers GROUP BY city;
    

**JOIN:**

*   Used to combine rows from two or more tables based on a related column between them
*   Syntax: SELECT column\_name(s) FROM table1 JOIN table2 ON table1.column\_name = table2.column\_name

Example:

    SELECT customers.first_name, orders.order_date
    FROM customers
    JOIN orders ON customers.customer_id = orders.customer_id;
    

**INSERT INTO:**

*   Used to insert new rows of data into a table
*   Syntax: INSERT INTO table\_name (column1, column2, column3) VALUES (value1, value2, value3)

Example:

    INSERT INTO customers (first_name, last_name, city)
    VALUES ('John', 'Doe', 'Chicago');
    

**UPDATE:**

*   Used to modify existing rows of data in a table
*   Syntax: UPDATE table\_name SET column\_name = new\_value WHERE condition

Example:

    UPDATE customers SET city = 'Boston' WHERE customer_id = 1;
    

**DELETE:**

*   Used to delete existing rows of data in a table
*   Syntax: DELETE FROM table\_name WHERE condition

Example:

    DELETE FROM customers WHERE customer_id = 1;

Sure, here are a few more SQL commands to add to the cheat sheet:

**DISTINCT:**

*   Used to return only distinct (unique) values
*   Syntax: SELECT DISTINCT column\_name(s) FROM table\_name

Example:

    SELECT DISTINCT city FROM customers;
    

**LIKE:**

*   Used to search for a pattern in a column's value
*   Syntax: SELECT column\_name(s) FROM table\_name WHERE column\_name LIKE pattern

Example:

    SELECT * FROM customers WHERE last_name LIKE 'D%';
    

**IN:**

*   Used to specify multiple possible values for a column in a WHERE clause
*   Syntax: SELECT column\_name(s) FROM table\_name WHERE column\_name IN (value1, value2, ...)

Example:

    SELECT * FROM customers WHERE city IN ('New York', 'Chicago', 'Boston');
    

**BETWEEN:**

*   Used to select values within a range
*   Syntax: SELECT column\_name(s) FROM table\_name WHERE column\_name BETWEEN value1 AND value2

Example:

    SELECT * FROM orders WHERE order_date BETWEEN '2023-01-01' AND '2023-03-31';
    

**COUNT:**

*   Used to count the number of rows returned by a query
*   Syntax: SELECT COUNT(column\_name) FROM table\_name WHERE condition

Example:

    SELECT COUNT(*) FROM orders WHERE customer_id = 1;
    

**MAX and MIN:**

*   Used to return the highest or lowest value in a column
*   Syntax: SELECT MAX(column\_name) FROM table\_name WHERE condition SELECT MIN(column\_name) FROM table\_name WHERE condition

Example:

    SELECT MAX(order_total) FROM orders;
    SELECT MIN(order_total) FROM orders WHERE customer_id = 2;
    

Sure, here are a few more SQL commands to add to the cheat sheet:

**AVG:**

*   Used to calculate the average value of a column
*   Syntax: SELECT AVG(column\_name) FROM table\_name WHERE condition

Example:

    SELECT AVG(order_total) FROM orders WHERE customer_id = 3;
    

**SUM:**

*   Used to calculate the total sum of values in a column
*   Syntax: SELECT SUM(column\_name) FROM table\_name WHERE condition

Example:

    SELECT SUM(order_total) FROM orders WHERE order_date BETWEEN '2023-01-01' AND '2023-03-31';
    

**GROUP BY and HAVING:**

*   Used to group rows based on one or more columns and filter the result based on a condition
*   Syntax: SELECT column\_name(s) FROM table\_name GROUP BY column\_name(s) HAVING condition

Example:

    SELECT COUNT(*), city FROM customers GROUP BY city HAVING COUNT(*) > 1;
    

**NULL:**

*   Used to represent missing or unknown data in a table
*   Syntax: SELECT column\_name(s) FROM table\_name WHERE column\_name IS NULL

Example:

    SELECT * FROM customers WHERE phone_number IS NULL;
    

**INDEX:**

*   Used to create an index on one or more columns in a table, which can improve query performance
*   Syntax: CREATE INDEX index\_name ON table\_name (column\_name)

Example:

    CREATE INDEX idx_customer_city ON customers (city);
    
**TRUNCATE TABLE:**

*   Syntax: TRUNCATE TABLE table\_name

Example:

    TRUNCATE TABLE orders;
    
**ALTER TABLE:**

*   Used to modify the structure of an existing table
*   Syntax: ALTER TABLE table\_name ADD/DROP/ALTER column\_name datatype

Example:

    ALTER TABLE customers ADD email VARCHAR(255);
    

**GRANT and REVOKE:**

*   Used to grant or revoke privileges to a user or role
*   Syntax: GRANT/REVOKE privilege(s) ON object\_name TO user(s)/role(s)

Example:

    GRANT SELECT, INSERT, UPDATE ON customers TO sales_team;
    REVOKE SELECT ON orders FROM temporary_user;
    

**SUBQUERY:**

*   Used to embed a query inside another query
*   Syntax: SELECT column\_name(s) FROM table\_name WHERE column\_name operator (SELECT column\_name FROM table\_name WHERE condition)

Example:

    SELECT first_name, last_name FROM customers WHERE customer_id IN (SELECT customer_id FROM orders WHERE order_date BETWEEN '2023-01-01' AND '2023-03-31');
    

**UNION:**

*   Used to combine the result of two or more SELECT statements into a single result set
*   Syntax: SELECT column\_name(s) FROM table1 UNION SELECT column\_name(s) FROM table2

Example:

    SELECT product_name, unit_price FROM products WHERE unit_price >= 50
    UNION
    SELECT product_name, unit_price FROM products WHERE product_name LIKE '%coffee%';

**LIKE:**

*   Used to filter records based on a pattern match
*   Syntax: SELECT column\_name(s) FROM table\_name WHERE column\_name LIKE pattern

Example:

    SELECT * FROM customers WHERE first_name LIKE 'J%';
    

**CASE:**

*   Used to create conditional statements in SQL
*   Syntax:

    SELECT 
      column_name, 
      CASE 
        WHEN condition1 THEN result1
        WHEN condition2 THEN result2
        ELSE result3
      END 
    FROM table_name;
    

Example:

    SELECT 
      order_id, 
      CASE 
        WHEN order_total >= 1000 THEN 'HIGH'
        WHEN order_total >= 500 THEN 'MEDIUM'
        ELSE 'LOW'
      END AS 'Order Priority'
    FROM orders;
    

**LIMIT and OFFSET:**

*   Used to limit the number of rows returned by a query and to skip a certain number of rows
*   Syntax: SELECT column\_name(s) FROM table\_name LIMIT number OFFSET number

Example:

    SELECT * FROM customers LIMIT 10 OFFSET 20;
    

**PRIMARY KEY:**

*   A column or group of columns that uniquely identifies each row in a table
*   Syntax: CREATE TABLE table\_name (column1 datatype PRIMARY KEY, column2 datatype, ...)

Example:

    CREATE TABLE orders (
      order_id INT PRIMARY KEY,
      customer_id INT,
      order_date DATE,
      order_total DECIMAL(10,2)
    );
    

**FOREIGN KEY:**

*   A column or group of columns that references the primary key of another table
*   Syntax: CREATE TABLE table\_name (column1 datatype REFERENCES other\_table(primary\_key\_column), column2 datatype, ...)

Example:

    CREATE TABLE order_items (
      order_id INT REFERENCES orders(order_id),
      product_id INT REFERENCES products(product_id),
      quantity INT,
      PRIMARY KEY (order_id, product_id)
    );
    
**UNIQUE:**

*   Used to ensure that all values in a column are unique
*   Syntax: CREATE TABLE table\_name (column1 datatype UNIQUE, column2 datatype, ...)

Example:

    CREATE TABLE users (
      user_id INT UNIQUE,
      username VARCHAR(50),
      password VARCHAR(50)
    );


