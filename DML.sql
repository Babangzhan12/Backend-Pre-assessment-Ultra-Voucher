CREATE TABLE m_customers (
    id INT,
    name VARCHAR(50),
    parent_id INT
);

SELECT * FROM m_customers;

INSERT INTO m_customers (id, name, parent_id) VALUES
(1, 'Zaki', 2),
(2, 'Ilham', NULL),
(3, 'Irwan', 2),
(4, 'Arka', 3);

SELECT t1.id, t1.name, t2.name AS parent_name
FROM m_customers t1
LEFT JOIN m_customers t2 ON t1.parent_id = t2.id;
