# 🏦 Bank Loan Analytics Dashboard using Tableau

## 📊 Overview / Description
The **Bank Loan Analytics Dashboard** provides a complete analytical view of loan performance, repayment behavior, client segmentation, and branch-level loan distribution.  
This dashboard helps financial institutions monitor loan disbursement trends, assess repayment risks, and understand client-level insights for better decision-making.

Built using **Tableau**, **SQL**, and **Excel**, this project transforms raw lending and repayment data into actionable insights across **Loan Portfolio**, **Repayment Trends**, **Branch Performance**, and **Client Analysis**.

---

## 🚀 Features of the Dashboard
- Total loan amount, funded loan, outstanding amount, and funding percentage.  
- Loan disbursement trend analysis (year-wise).  
- Branch-wise loan distribution & top-performing branches.  
- Funded vs Not Funded loan comparison by product category.  
- Top 10 clients by loan amount.  
- Loan status distribution (Paid Off, Fully Paid, Default, Active).  
- Repayment percentage, default rate, and returning client percentage.  
- Client retention trend and repayment behavior breakdown (Late, On-Time, Very Late).  
- Heatmap of repayment risk by Indian states.  
- Default rate by branch and client segmentation (New vs Returning).  
- Interactive slicers for Month, State, Branch, Loan Status, Client Type, and Purpose Category.

---

## 🔗 Live Dashboard Preview
👉 **[Click here to view the Power BI Report](https://app.powerbi.com/view?r=eyJrIjoiYTYxZjE2YjQtOGVhNC00YTVmLTk0OTItZDQ5YmM1ZTlhYmM5IiwidCI6IjdjNjZkNGIyLTVmY2QtNGRlYi1hMDQ4LTg1NGQ4ZWEyNDM3MSJ9)**

---

## 📂 Data Used
The dataset used in this project consists of 5 CSV files:

- **Branch.csv** – Contains branch details, locations, and identifiers.  
- **Client.csv** – Includes client information such as client ID, client type, and demographics.  
- **Loan.csv** – Stores loan-related data including loan amount, purpose category, loan status, and disbursement year.  
- **Product.csv** – Contains product categories and loan product information.  
- **Repayment.csv** – Includes repayment details such as repayment dates, repayment amount, repayment type (Late, On-Time, Very Late), and repayment behavior metrics.

**Data Cleaning:** Excel  
**Data Transformation:** SQL  
**Visualization:** Tableau

---

## 🔄 ETL Process

### 1️⃣ Data Extraction  
Source data includes:  
- Loan history  
- Repayment logs  
- Client demographics  
- Branch loan performance  
- Product and purpose categories  
- Loan disbursement timeline  

### 2️⃣ Data Transformation (Excel + SQL)  
- Removed duplicates & standardized fields  
- Cleaned missing values for loan status & repayment metrics  
- Added new derived columns  
- Merged client, loan, and repayment datasets  
- Created business rules for:  
  - `funded_loan_amount`  
  - `default_rate`  
  - `repayment_percentage`  
  - `returning_client_flag`  

### 3️⃣ Data Loading  
Data imported into Tableau using:  
- Cleaned Excel files  
- SQL queries for optimized aggregation  

Dashboard built using Tableau’s interactive charts, maps, actions, and filters.

---

## 📊 Dashboard Features

### 📁 1. Risk & Repayment Dashboard

**Key Metrics:**  
- Total Clients: **738**  
- Repayment %: **99.05%**  
- Default Rate %: **15.24%**  
- Returning Clients %: **75.75%**

**Insights:**  
- Repayment trend by month  
- State-wise risk heatmap  
- Default rate by branch  
- Client retention % trend  
- Loan repayment behavior (Late, On-Time, Very Late)  
- Client segmentation (New vs Returning)  

---

### 📁 2. Loan Portfolio Dashboard

**Key Metrics:**  
- Total Loan: **34.91M**  
- Funded Loan: **34.83M**  
- Funding %: **99.75%**  
- Outstanding Amount: **330.07K**

**Insights:**  
- Loan disbursement trend (2015–2023)  
- Top branches by loan amount  
- Loan vs Funded amount comparison  
- Funded vs Not Funded by product  
- Top 10 clients by loan amount  
- Loan status distribution (Paid Off, Fully Paid, Default, Active)  

---

## 🧠 Smart Work & Value Addition
✔ End-to-end project workflow (Excel → SQL → Tableau)  
✔ Strong data cleaning using Excel  
✔ SQL-based transformations for better aggregation  
✔ State-level risk heatmap for geographic analysis  
✔ Clear segmentation of New vs Returning clients  
✔ Professional dashboards for portfolio- and risk-based decision-making  
✔ Intuitive slicers for multiple business filters  
✔ Enterprise-level insights using Tableau visuals  

---

## 🔗 Live Dashboard Preview
👉 **Tableau / Power BI Online Link:**  
https://app.powerbi.com/view?r=eyJrIjoiYTYxZjE2YjQtOGVhNC00YTVmLTk0OTItZDQ5YmM1ZTlhYmM5IiwidCI6IjdjNjZkNGIyLTVmY2QtNGRlYi1hMDQ4LTg1NGQ4ZWEyNDM3MSJ9

