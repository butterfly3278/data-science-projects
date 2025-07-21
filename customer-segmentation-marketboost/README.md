# 🧠 Customer Segmentation – MarketBoost

## 🏢 Company Background

**MarketBoost** is a fictional marketing agency that partners with retail companies to design targeted marketing campaigns. To improve personalization and campaign ROI, the company wants to better understand its customer base by grouping them into meaningful segments.

---

## 🎯 Project Objective

Use unsupervised machine learning (clustering) to segment customers based on their demographics, spending behavior, and response to past campaigns. These segments will help design more effective marketing strategies for different types of customers.

---

## 📁 Dataset Overview

- **Dataset Name:** marketing_campaign.csv
- **Source:** [Kaggle – Customer Personality Analysis](https://www.kaggle.com/datasets/imakash3011/customer-personality-analysis)
- **Records:** ~2,200 customers
- **Features:** Age, Income, Spending on products, Campaign responses, Marital Status, Education, etc.
- **Target:** No explicit target (unsupervised learning)

---

## 🛠️ Technologies Used

- Python
- Pandas, NumPy
- Scikit-learn
- Matplotlib, Seaborn
- Google Colab

---

## 📊 Workflow Summary

1. **Data Preprocessing**

   - Dropped unnecessary columns (ID, Z_Revenue, etc.)
   - Converted dates, handled missing income values
   - Created new features: Age, TotalSpent, TotalChildren

2. **Feature Engineering**

   - Label-encoded categorical variables
   - Scaled features using StandardScaler

3. **Clustering**

   - Used the **Elbow Method** to determine optimal clusters (k = 3)
   - Applied **KMeans clustering** and assigned each customer to a cluster

4. **Cluster Analysis**
   - Compared clusters based on income, age, spending, campaign response
   - Identified customer groups for targeted marketing

---

## 🔍 Cluster Insights

| Cluster | Income        | Spending  | Age | Children | Behavior                           |
| ------- | ------------- | --------- | --- | -------- | ---------------------------------- |
| 0       | Low (~35k)    | Very low  | 54  | 1–2      | Less engaged                       |
| 1       | Medium (~58k) | Moderate  | 60  | 1        | Occasionally responsive            |
| 2       | High (~78k)   | Very high | 56  | 0        | Premium spender, highly responsive |

---

## 📌 Business Recommendations

- **Cluster 0:** Target with low-budget offers and family discounts
- **Cluster 1:** Engage with loyalty programs and seasonal campaigns
- **Cluster 2:** Focus premium ads, VIP perks, and retention efforts here

---

## 📝 Conclusion

This project demonstrates how unsupervised learning can provide valuable insights into customer behavior. With clear customer segments, MarketBoost can tailor campaigns more effectively, boost customer engagement, and maximize marketing ROI.
