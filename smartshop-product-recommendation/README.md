# 🛍️ SmartShop AI – Product Recommendation System

## 🏢 Company Background

**SmartShop AI** is a fictional e-commerce platform operating across the UK and Europe. With a vast catalog and thousands of daily transactions, SmartShop aims to improve cross-selling and product bundling by understanding customer purchase patterns.

---

## 🎯 Project Objective

Use transactional data to identify products frequently bought together and build a rule-based product recommendation system using Market Basket Analysis. The insights will support strategic decisions in bundling, promotions, and personalized marketing.

---

## 📁 Dataset Overview

- **Dataset:** `data.csv`
- **Source:** [Kaggle – E-Commerce Data](https://www.kaggle.com/datasets/carrie1/ecommerce-data)
- **Rows:** ~540,000 transactions
- **Fields:** InvoiceNo, StockCode, Description, Quantity, InvoiceDate, UnitPrice, CustomerID, Country

---

## 🛠️ Technologies Used

- Python
- Pandas, NumPy
- Seaborn, Matplotlib
- MLxtend (Apriori, Association Rules)
- Google Colab

---

## 🔍 Project Workflow

### 1. Data Cleaning

- Removed missing `CustomerID` and product `Description` entries
- Filtered refunds and zero/negative values
- Converted `InvoiceDate` to datetime

### 2. Exploratory Data Analysis

- Top-selling and top-revenue products
- Revenue trends over time (monthly, daily)
- Country-wise revenue breakdown

### 3. Feature Engineering

- Added `Revenue` column (Quantity × UnitPrice)
- Created `MonthYear` and `Date` for time-based insights

### 4. Market Basket Preparation

- Filtered data to UK region
- Created a transaction-product matrix for invoices
- Transformed into binary matrix (1 = bought)

### 5. Apriori & Association Rules

- Applied Apriori algorithm with minimum support threshold
- Extracted strong rules using **lift** and **confidence**
- Sorted and visualized top rules

---

## 📊 Key Insights

| Rule         | Support | Confidence | Lift |
| ------------ | ------- | ---------- | ---- |
| {X} → {Y}    | 0.06    | 0.78       | 3.2  |
| {A, B} → {C} | 0.04    | 0.85       | 2.9  |

These rules show high-potential product pairings SmartShop can leverage in:

- Product page suggestions ("Frequently Bought Together")
- Targeted promotions
- Email recommendations

---

## 📌 Business Recommendations

- Bundle top product pairs with discount offers
- Create combo packs based on frequent pairings
- Highlight related items at checkout
- Use rules in retargeting ads for abandoned carts

---

## 📝 Conclusion

This project showcases how unsupervised learning and association rule mining can power intelligent product recommendations in e-commerce. SmartShop AI can now offer personalized experiences, drive upsells, and boost customer satisfaction using real transaction data.
