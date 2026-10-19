SELECT 
COUNT(*) AS total_customers,
SUM(exited) AS total_churned_customers,
ROUND(SUM(exited)::numeric * 100.0 / COUNT(*),2) AS churn_rate_percentage
FROM customer_churn;

SELECT geography,
COUNT(*) AS total_customers,
SUM(exited) AS total_churned_customers,
ROUND(SUM(exited)::numeric * 100.0 / COUNT(*),2) AS churn_rate_percentage
FROM customer_churn
GROUP BY geography
ORDER BY churn_rate_percentage DESC;


SELECT gender,
COUNT(*) AS total_customers,
SUM(exited) AS total_churned_customers,
ROUND(SUM(exited)::numeric * 100.0 / COUNT(*),2) AS churn_rate_percentage
FROM customer_churn
GROUP BY gender
ORDER BY churn_rate_percentage DESC;


SELECT is_active_member,
COUNT(*) AS total_customers,
SUM(exited) AS total_churned_customers,
ROUND(SUM(exited)::numeric * 100.0 / COUNT(*),2) AS churn_rate_percentage
FROM customer_churn
GROUP BY is_active_member
ORDER BY churn_rate_percentage DESC;

SELECT num_of_products,
COUNT(*) AS total_customers,
SUM(exited) AS total_churned_customers,
ROUND(SUM(exited)::numeric * 100.0 / COUNT(*),2) AS churn_rate_percentage
FROM customer_churn
GROUP BY num_of_products
ORDER BY num_of_products ASC;

SELECT exited,
    ROUND(AVG(age), 1) AS avg_age,
    ROUND(AVG(balance), 2) AS avg_balance,
    ROUND(AVG(credit_score), 1) AS avg_credit_score,
    ROUND(AVG(estimated_salary), 2) AS avg_estimated_salary
FROM customer_churn
GROUP BY exited;

SELECT 
    CASE 
        WHEN age < 30 THEN '1. Under 30'
        WHEN age BETWEEN 30 AND 40 THEN '2. 30-40'
        WHEN age BETWEEN 41 AND 50 THEN '3. 41-50'
        ELSE '4. Over 50'
    END AS age_group,
    COUNT(*) AS total_customers,
    SUM(exited) AS total_churned_customers,
    ROUND(SUM(exited)::numeric * 100.0 / COUNT(*), 2) AS churn_rate_percentage
FROM customer_churn
GROUP BY age_group
ORDER BY age_group ASC;