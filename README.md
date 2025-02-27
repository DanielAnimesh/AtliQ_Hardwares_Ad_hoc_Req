# Resume Project Challenge - Ad Hoc Insights (Round 4)

## **Problem Statement**
Atliq Hardware, a leading computer hardware manufacturer in India and other regions, is struggling to make prompt and data-driven decisions. To overcome this challenge, the management has decided to expand its data analytics team. Tony Sharma, the head of data analytics, has initiated an SQL challenge to identify candidates with strong technical and analytical skills.

This project involves extracting actionable insights from sales and product data using **SQL and Power BI**, helping Atliq Hardware improve its strategic decision-making process.

---

## **Database Overview**
The project utilizes data from the `atliq_hardware_db` database, which consists of six key tables:

### **1. dim_customer** (Customer Details)
- `customer_code` – Unique ID for each customer
- `customer` – Name of the customer
- `platform` – Sales platform (E-commerce or Brick & Mortar)
- `channel` – Distribution method (Retailers, Direct, Distributors)
- `market` – Country of operation
- `region` – Geographical region (APAC, EU, NA, LATAM)
- `sub_zone` – Sub-region breakdown (India, ANZ, SE, NE, etc.)

### **2. dim_product** (Product Details)
- `product_code` – Unique ID for each product
- `division` – High-level product classification (P&A, N&S, PC)
- `segment` – Further product categorization (Peripherals, Notebook, Storage, etc.)
- `category` – Sub-classification of products
- `product` – Product name
- `variant` – Product variations (Standard, Plus, Premium)

### **3. fact_gross_price** (Product Pricing)
- `product_code` – Product identifier
- `fiscal_year` – Year of pricing data
- `gross_price` – Original product price before any discounts

### **4. fact_manufacturing_cost** (Production Costs)
- `product_code` – Product identifier
- `cost_year` – Year of manufacturing cost data
- `manufacturing_cost` – Total cost incurred to produce the product

### **5. fact_pre_invoice_deductions** (Discounts & Deductions)
- `customer_code` – Customer identifier
- `fiscal_year` – Year of discount data
- `pre_invoice_discount_pct` – Pre-invoice discount percentage

### **6. fact_sales_monthly** (Sales Data)
- `date` – Monthly sales timestamp
- `product_code` – Product identifier
- `customer_code` – Customer identifier
- `sold_quantity` – Number of units sold
- `fiscal_year` – Year of sales data

---

## **Key Insights Derived**
1. Identified **markets where 'Atliq Exclusive' operates** in the APAC region.
2. Analyzed **percentage growth in unique products** from 2020 to 2021.
3. Ranked **segments by unique product count** and identified the segment with the highest growth.
4. Determined **highest & lowest manufacturing cost products**.
5. Identified **top 5 customers receiving the highest pre-invoice discounts** in 2021 (Indian Market).
6. Generated a **monthly gross sales report** for 'Atliq Exclusive' to track performance trends.
7. Determined the **quarter with the highest total sold quantity in 2020**.
8. Analyzed which **sales channel contributed the most to gross sales in 2021** and its percentage contribution.

---

## **Project Links**
- **GitHub Repository**: [[Link Here]](https://github.com/DanielAnimesh/AtliQ_Hardwares_Ad_hoc_Req.git)
- **Presentation Deck**: [Link Here]

Feel free to explore the repository and provide feedback or suggestions! 🚀

