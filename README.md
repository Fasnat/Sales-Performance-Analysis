# Sales Performance Analysis

An end-to-end sales analysis project using SQL Server and Power BI. I prepared data from Microsoft’s AdventureWorksDW2025 sample database in SQL Server, exported the results to CSV, and used Power Query and Power BI to build an interactive report.

# Dashboard

The report has three pages:

Sales Overview: Sales and budget KPIs, monthly comparisons, sales by product category, top customers and products, and sales by customer city.

Customer Details: Customer sales by month and customer-level insights.

Product Details: Product sales by name, category, subcategory, and color.

The report includes filters for dates and selected customer and product attributes.

# Project workflow

Restored the AdventureWorksDW2025 sample database in SQL Server.

Used SQL scripts to prepare calendar, customer, product, and Internet sales data.

Exported the prepared data to CSV files.

Loaded the CSV data into Power BI and shaped it with Power Query.

Built measures, visuals, and interactive report pages.

# Date adjustment

The source database contains historical sample data. For this project’s time-based analysis, a SQL script shifts sales dates to recent years. Therefore, dates shown through 2026 are adjusted analysis dates, not original AdventureWorks transaction dates.

# Project files

Calendar.sql — prepares calendar data.

Customer.sql — prepares customer data.

Products.sql — prepares product data.

Internetsales.sql — prepares Internet sales data.

SalesDateAdjustment.sql — adjusts sales dates for analysis.

Sales Analysis.pbix — Power BI report.

Tools used

SQL Server

Power BI

Power Query

CSV

# Data source

Microsoft AdventureWorksDW2025 sample database.
