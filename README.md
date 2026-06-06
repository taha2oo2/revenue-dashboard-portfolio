# Global Revenue Performance Dashboard
A BI project I built to practice end-to-end data analysis — 
from raw data all the way to a published interactive dashboard.

**Tools used:** SQL Server, Power BI, Looker Studio, Excel

## Live Dashboards
- [Power BI Dashboard](https://app.powerbi.com/groups/me/reports/8f3d3e2e-b1c4-49fd-a134-2e46ab150e5a)
- [Looker Studio Dashboard](https://datastudio.google.com/reporting/87b15bbf-b1a1-4e44-a863-d75af916c4f0)

## What this project is about
I took a financial dataset covering sales across 5 countries and 
loaded it into SQL Server. The data had some formatting issues 
(dollar signs in numeric columns, wrong data types) which I cleaned 
before analysis.
I then wrote SQL queries to answer business questions a manager 
would actually care about — which markets are most profitable, 
which products are driving revenue, whether discounts are actually 
helping sales, and how revenue trended month by month.
After the SQL analysis I built dashboards in both Power BI and 
Looker Studio with interactive filters so you can slice the data 
by country and year.

## The SQL queries cover
- Revenue and profit margin by country
- Best and worst performing products
- Monthly revenue trend across 2013 and 2014
- Customer segment breakdown
- Impact of discount levels on profit margins
- Top country and product combinations

## A few things I found interesting in the data
- Germany has a better profit margin than the USA even though 
  USA has higher total revenue
- Paseo is by far the best product — nearly 3x the profit of 
  the second best
- Heavy discounts are clearly eating into margins, the numbers 
  make a strong case for reviewing the discount policy
- October is consistently the strongest month both years

## Real Client Work (Anonymous)

5-page live Power BI reporting system built for a Dubai-based 
business center group managing 3 properties.

- Daily Report — expense vs revenue monitoring
- Financial Report — P&L, closing balance, receivables
- Leads Report — CRM pipeline from inquiry to booking  
- Problems Report — issue tracking with resolution time
- Occupancy Report — real-time property occupancy across centers

Connected to live Google Sheets with hourly auto-refresh.
Client data anonymised for confidentiality.

[LinkedIn](https://linkedin.com/in/taahaaaa) — muhtahaqadri@gmail.com
