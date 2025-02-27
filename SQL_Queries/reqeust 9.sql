/* Which channel helped to bring more gross sales in the fiscal year 2021
and the percentage of contribution? The final output contains these fields,
channel
gross_sales_mln
percentage */


WITH total_sales AS (
    
    SELECT SUM(s.sold_quantity * g.gross_price) AS total_gross_sales
    FROM fact_sales_monthly s
		JOIN fact_gross_price g 
			ON s.product_code = g.product_code
    WHERE s.fiscal_year = 2021
)

SELECT 
    c.channel,
    ROUND(SUM(s.sold_quantity * g.gross_price) / 1000000, 2) AS gross_sales_mln,
    ROUND((SUM(s.sold_quantity * g.gross_price) / ts.total_gross_sales) * 100, 2) AS contribution_pct
FROM fact_sales_monthly s
	JOIN fact_gross_price g 
		ON s.product_code = g.product_code
	JOIN dim_customer c 
		ON s.customer_code = c.customer_code
	JOIN total_sales ts 
WHERE s.fiscal_year = 2021
GROUP BY c.channel, ts.total_gross_sales
ORDER BY gross_sales_mln DESC;

