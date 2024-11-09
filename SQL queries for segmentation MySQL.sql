USE Bank;

SHOW TABLES;

SELECT * FROM Customers;
SELECT * FROM Transactions;
SELECT * FROM Loans;

---- What are the distinct customer segments based on age and income within our customer base?

SELECT 
    CustomerID, 
    Age, 
    Income, 
    Occupation,
    CASE 
        WHEN Age BETWEEN 22 AND 35 AND Income BETWEEN 50000 AND 100000 THEN 'Young Professionals'
        WHEN Age BETWEEN 36 AND 50 AND Income BETWEEN 75000 AND 125000 THEN 'Mid-Career Professionals'
        WHEN Age BETWEEN 51 AND 60 AND Income BETWEEN 100000 AND 150000 THEN 'Established Professionals'
        ELSE 'Senior Professionals'
    END AS Segment
FROM Customers;


---- How many customers fall into each of the defined segments: Young Professionals, Mid-Career Professionals, and Established Professionals?

SELECT 
    CASE 
        WHEN Age BETWEEN 22 AND 35 AND Income BETWEEN 50000 AND 100000 THEN 'Young Professionals'
        WHEN Age BETWEEN 36 AND 50 AND Income BETWEEN 75000 AND 125000 THEN 'Mid-Career Professionals'
        WHEN Age BETWEEN 51 AND 60 AND Income BETWEEN 100000 AND 150000 THEN 'Established Professionals'
        ELSE 'Senior Professionals'
    END AS Segment,
    COUNT(*) AS CustomerCount
FROM Customers
GROUP BY Segment;

---- What is the average income and age of customers within each segment?

SELECT 
    CASE 
        WHEN Age BETWEEN 22 AND 35 AND Income BETWEEN 50000 AND 100000 THEN 'Young Professionals'
        WHEN Age BETWEEN 36 AND 50 AND Income BETWEEN 75000 AND 125000 THEN 'Mid-Career Professionals'
        WHEN Age BETWEEN 51 AND 60 AND Income BETWEEN 100000 AND 150000 THEN 'Established Professionals'
        ELSE 'Senior Professionals'
    END AS Segment,
    AVG(Income) AS AvgIncome,
    AVG(Age) AS AvgAge
FROM Customers
GROUP BY Segment;

---- Which segment has the highest number of customers?

SELECT 
    CASE 
        WHEN Age BETWEEN 22 AND 35 AND Income BETWEEN 50000 AND 100000 THEN 'Young Professionals'
        WHEN Age BETWEEN 36 AND 50 AND Income BETWEEN 75000 AND 125000 THEN 'Mid-Career Professionals'
        WHEN Age BETWEEN 51 AND 60 AND Income BETWEEN 100000 AND 150000 THEN 'Established Professionals'
        ELSE 'Senior Professionals'
    END AS Segment,
    COUNT(*) AS CustomerCount
FROM Customers
GROUP BY Segment
ORDER BY CustomerCount DESC
LIMIT 1;

---- How does the distribution of occupation and marital status vary across the three segments?

SELECT 
    CASE 
        WHEN Age BETWEEN 22 AND 35 AND Income BETWEEN 50000 AND 100000 THEN 'Young Professionals'
        WHEN Age BETWEEN 36 AND 50 AND Income BETWEEN 75000 AND 125000 THEN 'Mid-Career Professionals'
        WHEN Age BETWEEN 51 AND 60 AND Income BETWEEN 100000 AND 150000 THEN 'Established Professionals'
        ELSE 'Senior Professionals'
    END AS Segment,
    Occupation,
    MaritalStatus,
    COUNT(*) AS CustomerCount
FROM Customers
GROUP BY Segment, Occupation, MaritalStatus
ORDER BY Segment, CustomerCount DESC;

---- Are there any trends or patterns in income and age that stand out within each customer segment?

SELECT 
    CASE 
        WHEN Age BETWEEN 22 AND 35 AND Income BETWEEN 50000 AND 100000 THEN 'Young Professionals'
        WHEN Age BETWEEN 36 AND 50 AND Income BETWEEN 75000 AND 125000 THEN 'Mid-Career Professionals'
        WHEN Age BETWEEN 51 AND 60 AND Income BETWEEN 100000 AND 150000 THEN 'Established Professionals'
        ELSE 'Senior Professionals'
    END AS Segment,
    AVG(Age) AS AvgAge,
    MIN(Age) AS MinAge,
    MAX(Age) AS MaxAge,
    AVG(Income) AS AvgIncome,
    MIN(Income) AS MinIncome,
    MAX(Income) AS MaxIncome
FROM Customers
GROUP BY Segment;


---- Customer Behavioral Segmentation

SELECT * FROM Customers;
SELECT * FROM Transactions;
SELECT * FROM Loans;

SELECT 
		MIN(AMOUNT) AS MinAmount,
        Max(Amount) AS MaxAmount
	FROM Transactions;

---- Segment Customers Based on Transaction Type and Amount

SELECT 
    TransactionID,
    TransactionType,
    CASE 
        WHEN Amount BETWEEN 50 AND 1000 THEN 'Low Spender'
        WHEN Amount BETWEEN 1001 AND 3000 THEN 'Medium Spender'
        WHEN Amount BETWEEN 3001 AND 5000 THEN 'High Spender'
        ELSE 'Other'
    END AS SpendCategory
FROM Transactions
WHERE Amount BETWEEN 50 AND 5000
ORDER BY TransactionID, TransactionType;

--- How many customers fall into each spending category (Low, Medium, High Spender)?

SELECT 
    SpendCategory, 
    COUNT(*) AS TransactionCount
FROM (
    SELECT 
        TransactionID,
        CASE 
            WHEN Amount BETWEEN 50 AND 1000 THEN 'Low Spender'
            WHEN Amount BETWEEN 1001 AND 3000 THEN 'Medium Spender'
            WHEN Amount BETWEEN 3001 AND 5000 THEN 'High Spender'
            ELSE 'Other'
        END AS SpendCategory
    FROM Transactions
    WHERE Amount BETWEEN 50 AND 5000
) AS SpendCategories
GROUP BY SpendCategory;

---- Which transaction types are most common within each spending category?

SELECT 
    SpendCategory,
    TransactionType,
    COUNT(*) AS TransactionCount
FROM (
    SELECT 
        TransactionID,
        TransactionType,
        Amount,
        CASE 
            WHEN Amount BETWEEN 50 AND 1000 THEN 'Low Spender'
            WHEN Amount BETWEEN 1001 AND 3000 THEN 'Medium Spender'
            WHEN Amount BETWEEN 3001 AND 5000 THEN 'High Spender'
            ELSE 'Other'
        END AS SpendCategory
    FROM Transactions
    WHERE Amount BETWEEN 50 AND 5000
) AS SpendCategories
GROUP BY SpendCategory, TransactionType
ORDER BY SpendCategory, TransactionCount DESC;

---- What is the distribution of transactions across different spending categories (Low Spender, Medium Spender, High Spender)?

SELECT 
    SpendCategory,
    COUNT(TransactionID) AS TransactionCount,
    AVG(Amount) AS AvgTransactionAmount,
    (COUNT(TransactionID) * 100.0 / (SELECT COUNT(*) FROM Transactions WHERE Amount BETWEEN 50 AND 5000)) AS TransactionPercentage
FROM (
    SELECT 
        TransactionID,
        Amount,
        CASE 
            WHEN Amount BETWEEN 50 AND 1000 THEN 'Low Spender'
            WHEN Amount BETWEEN 1001 AND 3000 THEN 'Medium Spender'
            WHEN Amount BETWEEN 3001 AND 5000 THEN 'High Spender'
            ELSE 'Other'
        END AS SpendCategory
    FROM Transactions
    WHERE Amount BETWEEN 50 AND 5000
) AS SpendCategories
GROUP BY SpendCategory;

---- What are the key trends or patterns in the spending behavior for each segment over time?

SELECT 
    SpendCategory,
    MONTH(TransactionDate) AS Month,
    SUM(Amount) AS TotalAmountSpent
FROM (
    SELECT 
        TransactionID,
        TransactionType,
        Amount,
        TransactionDate,
        CASE 
            WHEN Amount BETWEEN 50 AND 1000 THEN 'Low Spender'
            WHEN Amount BETWEEN 1001 AND 3000 THEN 'Medium Spender'
            WHEN Amount BETWEEN 3001 AND 5000 THEN 'High Spender'
            ELSE 'Other'
        END AS SpendCategory
    FROM Transactions
    WHERE Amount BETWEEN 50 AND 5000
) AS SpendCategories
GROUP BY SpendCategory, MONTH(TransactionDate)
ORDER BY SpendCategory, Month;









