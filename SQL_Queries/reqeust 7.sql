SELECT 
    MONTH(s.date) AS month,
    s.fiscal_year AS year,
    SUM(s.sold_quantity * g.gross_price) AS gross_sales_amount
FROM fact_sales_monthly s
JOIN fact_gross_price g 
    ON s.product_code = g.product_code
JOIN dim_customer c 
    ON s.customer_code = c.customer_code
WHERE c.customer = 'Atliq Exclusive'
GROUP BY MONTH(s.date), s.fiscal_year
ORDER BY s.fiscal_year, month;
