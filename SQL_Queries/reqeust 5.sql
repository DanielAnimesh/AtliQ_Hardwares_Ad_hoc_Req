/* Get the products that have the highest and lowest manufacturing costs.
The final output should contain these fields,
product_code
product
manufacturing_cost  */



select
	p.product,
	p.product_code,
    manufacturing_cost 
from fact_manufacturing_cost m
join dim_product p
	on p.product_code = m.product_code
WHERE m.manufacturing_cost = (SELECT MAX(manufacturing_cost) FROM fact_manufacturing_cost)
   OR m.manufacturing_cost = (SELECT MIN(manufacturing_cost) FROM fact_manufacturing_cost);
    