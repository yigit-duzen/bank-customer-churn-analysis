
DROP TABLE IF EXISTS customer_churn;

CREATE TABLE customer_churn (
    row_number INT,
    customer_id INT PRIMARY KEY,
    surname VARCHAR(50),
    credit_score INT,
    geography VARCHAR(50),
    gender VARCHAR(20),
    age INT,
    tenure INT,
    balance NUMERIC(12, 2),
    num_of_products INT,
    has_cr_card INT,
    is_active_member INT,
    estimated_salary NUMERIC(12, 2),
    exited INT
);