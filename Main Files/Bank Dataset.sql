Use Banking_db;

/* Total Clients */
SELECT COUNT(DISTINCT Client_ID) AS Total_Clients
FROM Client_table;

/* Active Clients */
SELECT COUNT(Client_ID) AS Active_Clients
FROM Loan l
WHERE l.Loan_Status = 'Active';

/* New Clients (First Loan in Selected Period) */
SELECT COUNT(DISTINCT c.Client_ID) AS New_Clients
FROM Loan l
JOIN Client_table c ON l.Client_ID = c.Client_ID
WHERE l.Disbursement_Date BETWEEN '2023-01-01' AND '2023-12-31'
  AND l.Disbursement_Date = (
       SELECT MIN(l2.Disbursement_Date)
       FROM Loan l2
       WHERE l2.Client_ID = l.Client_ID
  );
  
  /*Total Loan Amount Disbursed */
  SELECT SUM(Loan_Amount) AS Total_Loan_Amount
FROM Loan;

/*Average Loan Size */
SELECT AVG(Loan_Amount) AS Average_Loan_Size
FROM Loan;

/* Total Repayments Collected */
SELECT SUM(Total_Pymnt) AS Total_Repayments
FROM Repayment;

/*  Interest Income */
SELECT SUM(Total_Rrec_Int) AS Interest_Income
FROM Repayment;

/* Default Rate */
SELECT format((sum(CASE WHEN Is_Default_Loan = 'Y' THEN 1 ELSE 0 END) * 1.0 / COUNT(*))*100,'2')AS Default_Rate
FROM Repayment;

/* Delinquency Rate */
SELECT format((SUM(CASE WHEN Is_Delinquent_Loan = 'Y' THEN 1 ELSE 0 END) * 1.0 / COUNT(*))*100,'2') AS Delinquency_Rate
FROM Repayment;

/* On-Time Repayment % */
SELECT format((SUM(CASE WHEN Repayment_Behavior = 'On-Time' THEN 1 ELSE 0 END) * 1.0 / COUNT(*))*100,'2') AS OnTime_Repayment_Rate
FROM Repayment;

/* Loan Growth % */
WITH Loan_Period AS (
    SELECT 
        YEAR(Disbursement_Date) AS Yr,
        SUM(Loan_Amount) AS TotalLoan
    FROM Loan
    GROUP BY YEAR(Disbursement_Date)
)
SELECT 
    a.Yr,
    ((a.TotalLoan - b.TotalLoan) * 1.0 / b.TotalLoan) * 100 AS Loan_Growth_Percent
FROM Loan_Period a
JOIN Loan_Period b ON a.Yr = b.Yr + 1;

/* Principal Recovery Rate */
SELECT format((SUM(r.Total_Rec_Prncp) * 1.0 / SUM(l.Loan_Amount))*100,'2') AS Principal_Recovery_Rate
FROM Repayment r
JOIN Loan l ON r.Account_id = l.Account_id;

/* Client Retention Rate */
WITH Previous_Period AS (
    SELECT DISTINCT Client_ID
    FROM Loan
    WHERE Disbursement_Date BETWEEN '2015-01-01' AND '2015-12-31'
),
Current_Period AS (
    SELECT DISTINCT Client_ID
    FROM Loan
    WHERE Disbursement_Date BETWEEN '2023-01-01' AND '2023-12-31'
)
SELECT 
    format((COUNT(DISTINCT cp.Client_ID) * 1.0 / COUNT(DISTINCT pp.Client_ID))*100,'2') AS Retention_Rate
FROM Previous_Period pp
LEFT JOIN Current_Period cp ON pp.Client_ID = cp.Client_ID;

/* Loan Distribution by Branch */
SELECT b.Branch_Name, SUM(l.Loan_Amount) AS Total_Loan_Amount
FROM Loan l
JOIN Branch b ON l.Branch_ID = b.BranchID
GROUP BY b.Branch_Name;

/* Branch Performance Category Split */
SELECT branch_Performance_Category, COUNT(*) AS Branch_Count
FROM Branch
GROUP BY Branch_Performance_Category;

/* Product Category -wise Loan Volume */
SELECT p.Purpose_Category, SUM(l.Loan_Amount) AS Loan_Volume
FROM Loan l
JOIN Product p ON l.Product_ID = p.Product_ID
GROUP BY p.Purpose_Category;

/* Product Profitability */
SELECT p.Purpose_Category, SUM(r.Total_Rrec_Int) AS Interest_Income
FROM Repayment r
JOIN Loan l ON r.Account_ID = l.Account_ID
JOIN Product p ON l.Product_ID = p.Product_ID
GROUP BY p.Purpose_Category;





 







