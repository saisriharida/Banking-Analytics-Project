DESCRIBE users_data;
DESC cards_data;
DESC transactions_data;
SELECT * FROM users_data LIMIT 5;
SELECT * FROM cards_data LIMIT 5;
SELECT * FROM transactions_data LIMIT 5;
SELECT COUNT(*) AS total_users
FROM users_data;
SELECT COUNT(*) AS total_cards
FROM cards_data;
SELECT COUNT(*) AS total_transactions
FROM transactions_data;
DESC users_data;
DESC cards_data;
DESC transactions_data;

SELECT * FROM users_data LIMIT 5;
SELECT * FROM cards_data LIMIT 5;
SELECT * FROM transactions_data LIMIT 5;

-- Total Customers
SELECT COUNT(*) AS total_customers
FROM users_data;
-- Total Cards Issued
SELECT COUNT(*) AS total_cards
FROM cards_data;
-- Total Transactions
SELECT COUNT(*) AS total_transactions
FROM transactions_data;

SELECT amount
FROM transactions_data
LIMIT 10;

-- Total Transaction Value.
SELECT
    ROUND(SUM(CAST(REPLACE(amount, '$', '') AS DECIMAL(12,2))), 2) AS total_transaction_value
FROM transactions_data;

-- Transaction Amount
SELECT
    ROUND(
        AVG(CAST(REPLACE(amount, '$', '') AS DECIMAL(12,2))),
        2
    ) AS avg_transaction_amount
FROM transactions_data;

-- Number of Cards Owned by Each Customer
SELECT
    u.id AS customer_id,
    COUNT(c.id) AS total_cards_owned
FROM users_data u
JOIN cards_data c
    ON u.id = c.client_id
GROUP BY u.id
ORDER BY total_cards_owned DESC
LIMIT 10;

-- Top 10 Customers by Total Transaction Amount

SELECT
    client_id AS customer_id,
    ROUND(
        SUM(CAST(REPLACE(amount, '$', '') AS DECIMAL(12,2))),
        2
    ) AS total_spent
FROM transactions_data
GROUP BY client_id
ORDER BY total_spent DESC
LIMIT 10;

-- Transaction Count by State

SELECT
    merchant_state,
    COUNT(*) AS total_transactions
FROM transactions_data
GROUP BY merchant_state
ORDER BY total_transactions DESC
LIMIT 10;

DESC transactions_data;

-- Monthly Transaction Trend

SELECT
    LEFT(date, 7) AS transaction_month,
    COUNT(*) AS total_transactions
FROM transactions_data
GROUP BY LEFT(date, 7)
ORDER BY transaction_month;


-- Top 10 Merchant Cities by Transaction Count

SELECT
    merchant_city,
    COUNT(*) AS total_transactions
FROM transactions_data
GROUP BY merchant_city
ORDER BY total_transactions DESC
LIMIT 10;


-- Top 10 Customers by Number of Transactions

SELECT
    u.id AS customer_id,
    COUNT(t.id) AS total_transactions
FROM users_data u
JOIN transactions_data t
    ON u.id = t.client_id
GROUP BY u.id
ORDER BY total_transactions DESC
LIMIT 10;

-- Customer Spending Ranking using Window Function

SELECT
    client_id AS customer_id,
    ROUND(
        SUM(CAST(REPLACE(amount, '$', '') AS DECIMAL(12,2))),
        2
    ) AS total_spent,
    RANK() OVER (
        ORDER BY
        SUM(CAST(REPLACE(amount, '$', '') AS DECIMAL(12,2))) DESC
    ) AS spending_rank
FROM transactions_data
GROUP BY client_id
ORDER BY spending_rank
LIMIT 10;

-- High Value Customers using CTE

WITH customer_spending AS (
    SELECT
        client_id AS customer_id,
        ROUND(
            SUM(CAST(REPLACE(amount, '$', '') AS DECIMAL(12,2))),
            2
        ) AS total_spent
    FROM transactions_data
    GROUP BY client_id
)

SELECT
    customer_id,
    total_spent
FROM customer_spending
WHERE total_spent >
(
    SELECT AVG(total_spent)
    FROM customer_spending
)
ORDER BY total_spent DESC
LIMIT 10;

-- Customer Segmentation using CASE WHEN

WITH customer_spending AS (
    SELECT
        client_id AS customer_id,
        ROUND(
            SUM(CAST(REPLACE(amount, '$', '') AS DECIMAL(12,2))),
            2
        ) AS total_spent
    FROM transactions_data
    GROUP BY client_id
)

SELECT
    customer_id,
    total_spent,
    CASE
        WHEN total_spent >= 10000 THEN 'High Value'
        WHEN total_spent >= 5000 THEN 'Medium Value'
        ELSE 'Low Value'
    END AS customer_segment
FROM customer_spending
ORDER BY total_spent DESC
LIMIT 15;


-- Transaction Value by Card Brand (Multi-table JOIN)

SELECT
    c.card_brand,
    ROUND(
        SUM(CAST(REPLACE(t.amount, '$', '') AS DECIMAL(12,2))),
        2
    ) AS total_transaction_value,
    COUNT(t.id) AS total_transactions
FROM transactions_data t
JOIN cards_data c
    ON t.card_id = c.id
GROUP BY c.card_brand
ORDER BY total_transaction_value DESC;