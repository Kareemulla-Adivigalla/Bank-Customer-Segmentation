# Bank Customer Segmentation

## Project Objective:
This project aims to segment bank customers based on their demographic profiles, transactional behavior, and financial engagement, using SQL. By understanding customer segments, we can develop targeted marketing strategies, personalize offerings, and improve risk management for enhanced customer satisfaction and business outcomes.

---

## Project Overview

This project focuses on segmenting bank customers based on their demographics, transactional behavior, and financial history. The goal is to create distinct customer profiles, enabling the bank to deliver targeted marketing, personalized products, and improved customer service.

**Main Objective:**  
Identify key customer groups based on shared characteristics and behaviors to provide tailored offerings, enhance customer satisfaction, and support risk management.

---

## Project Objectives

1. **Customer Segmentation and Profiling**
   - **Objective:** Segment customers by demographics, behavior, and financial attributes to identify distinct customer groups.
   - **Key Data:** Includes data from the `Customers` table (age, income, occupation, etc.), `Transactions` table (spending behavior), and `Loans` table (loan history).
   - **Purpose:** Understand various customer segments (e.g., high-income earners, frequent transactors) to tailor product offerings such as premium services for high-income customers or credit card rewards for frequent spenders.

---

## Key Data Sources

This project relies on the following tables:

- **Customers Table**: Stores demographic details like age, income, occupation, and marital status.
- **Transactions Table**: Contains customer transaction records, including Transaction type, amount, Transaction date, and Description of Transaction.
- **Loans Table**: Details loan information such as Loan type, Loan amount, Loan term, and loan status.

---

## Segmentation Criteria and Methodology

### 1. **Demographic Segmentation**
   - **Objective:** Group customers by characteristics like age, income, and occupation to create broad demographic segments.
   - **Key Columns:** `Age`, `Income`, `Occupation`, `MaritalStatus`.
   - **Segments:** High-income customers, young professionals, retirees.

### 2. **Behavioral Segmentation**
   - **Objective:** Analyze transaction frequency and spending patterns to understand customer spending habits.
   - **Key Columns:** `TransactionType`, `TransactionAmount`, `Description`.
   - **Segments:** Frequent transactors, high-value spenders, occasional spenders.

### 3. **Financial Engagement Segmentation**
   - **Objective:** Group customers based on their engagement with financial products like loans and credit cards.
   - **Key Columns:** `LoanType`, `LoanAmount`, `LoanStatus`.
   - **Segments:** Customers with high loan balances, frequent credit card users, low-loan customers.

---

## Key Insights

### **Demographic Segmentation Insights**
- **Young Professionals** (Average Age: 29, Income: $69,181) represent a sizable group with lower income compared to **Mid-Career Professionals** (Average Age: 40, Income: $95,250), **Senior Professionals** (Average Age: 50, Income: $78,428), and **Established Professionals** (Average Age: 53, Income: $127,500).
- The **Young Professionals** group tends to have a more diverse income range (from $50,000 to $95,000) while older segments show more defined income bands.

### **Behavioral Segmentation Insights**
- **Low Spenders** dominate the spending categories, with **66%** of all transactions falling in this group, averaging **$451.52** per transaction. They show frequent engagement with **Withdrawals** (15), **Payments** (11), and **Deposits** (6).
- **Medium Spenders** account for **32%** of transactions, with an average transaction amount of **$2,281.25**. Their transaction types are mostly **Deposits** (15), with fewer **Withdrawals** (1).
- **High Spenders** make up a smaller portion of transactions (**2%**), but they exhibit a high transaction volume of **$5,000** per transaction.

### **Financial Engagement Segmentation Insights**
- **Low Loan Amount** customers (with loans ranging from **$7,000 to $50,000**) represent **72.73%** of the total, with an average loan amount of **$15,296.88**.
- Customers with **High Loan Amounts** (up to **$325,000**) represent a smaller but significant group (**27.27%**), with an average loan amount of **$266,666.67**.
- Loan terms reveal diverse needs: **Short-Term Loans** (average term: **40.91 months**), **Medium-Term Loans** (average term: **122 months**), and **Long-Term Loans** (average term: **288 months**).

---

## Tools and Technologies Used

- **MySQL**: Used for querying and segmenting data from multiple relational tables.
- **SQL Server**: Utilized for advanced analytics and ensuring compatibility across different SQL environments.
- **SQL Queries**: Employed to analyze transaction, customer, and loan data to generate meaningful segments for the bank.

---

## Key Insights by Segmentation:

### **Customer Demographic Segmentation**:
- **Young Professionals** (22-35 years) have a relatively lower average income, representing a good target group for low-cost financial products or services.
- **Mid-Career Professionals** (36-47 years) have a higher average income, representing a segment that may benefit from personalized banking services such as wealth management.
- **Established Professionals** (52-55 years) show the highest income, suitable for premium services, high-value credit offerings, and investment products.

### **Behavioral Segmentation**:
- A significant proportion of customers fall under **Low Spenders**. The bank can provide educational resources or encourage higher engagement with value-driven offers.
- **Medium Spenders** can be targeted with special promotions, rewards programs, and financial products that encourage higher savings or investments.
- **High Spenders** should be offered exclusive services, including premium credit cards, loyalty programs, and personalized financial advisory services.

### **Financial Engagement Segmentation**:
- **Low Loan Amount** customers could be targeted with personal finance management tools and loan consolidation offers.
- **High Loan Amount** customers need careful risk management practices and may benefit from investment products or financial planning services.

---

## Conclusion:

The bank can strategically target these segmented customer groups with tailored products and services, increasing engagement, improving customer satisfaction, and ultimately enhancing business outcomes. The insights derived from this segmentation will guide the creation of personalized campaigns and financial products for each customer segment, optimizing both customer experience and the bank's financial growth.

---

## How to Run the Queries:

1. Clone the repository to your local machine.
2. Set up a MySQL or SQL Server database environment.
3. Run the SQL queries provided in the **SQL** directory to analyze and segment the data based on your tables.
4. Use the insights to create targeted customer segments and implement tailored marketing campaigns.

---

## Links to Navigate SQL Queries

- [Key Patterns, Trends, and Insights](https://github.com/Kareemulla-Adivigalla/Bank-Customer-Segmentation/blob/main/Key%20Patterns%2C%20Trends%2C%20and%20Insights%20Bank%20Customer%20Segmentation%20Project.md)
- [SQL Queries for Segmentation](https://github.com/Kareemulla-Adivigalla/Bank-Customer-Segmentation/blob/main/SQL%20queries%20for%20segmentation%20MySQL.sql)
- [SQL Queries to Insert tables](https://github.com/Kareemulla-Adivigalla/Bank-Customer-Segmentation/blob/main/Bank%20Customer%20Database%20Tables_MySQL.sql)
