# 📊 Churn Prediction – ChurnX Telecom

## 🏢 Company Background

**ChurnX Telecom** is a fictional telecom provider offering internet and phone services to thousands of customers. The company noticed that many customers cancel their subscriptions without warning and wants to proactively identify such users before they churn.

---

## 🎯 Project Objective

Build a machine learning model that can predict whether a customer is likely to churn, using customer service and account data. The goal is to help the company take preventive measures and improve customer retention.

---

## 📁 Dataset Overview

- **Source:** [Kaggle - Telco Customer Churn](https://www.kaggle.com/datasets/blastchar/telco-customer-churn)
- **Format:** CSV
- **Rows:** 7043
- **Target Variable:** `Churn` (0 = No, 1 = Yes)

---

## 🛠️ Technologies Used

- Python
- Pandas, NumPy
- Matplotlib, Seaborn
- Scikit-learn (Logistic Regression, Evaluation Metrics)
- Google Colab

---

## 🔍 Workflow Summary

1. **Data Exploration & Cleaning**

   - Converted `TotalCharges` from object to float
   - Filled missing values with median
   - Encoded categorical variables using Label Encoding

2. **Feature Engineering**

   - Removed non-predictive column `customerID`
   - Defined `X` and `y`

3. **Modeling**

   - Split data into training and test sets (80/20)
   - Trained Logistic Regression model with `max_iter=1000`

4. **Evaluation**
   - Achieved **accuracy: 81.6%**
   - Precision/recall was strong for class 0 (no churn), moderate for class 1 (churn)
   - Model shows potential, with room for improvement on imbalanced data

---

## 📊 Results Snapshot

| Metric            | Score |
| ----------------- | ----- |
| Accuracy          | 81.6% |
| Precision (Churn) | 68%   |
| Recall (Churn)    | 58%   |
| F1-score (Churn)  | 62%   |

---

## 📌 Next Steps

- Use more advanced models like Random Forest or XGBoost
- Apply SMOTE or class weighting to handle class imbalance
- Perform hyperparameter tuning
- Visualize feature importance using SHAP or tree-based models

---

## 📝 Conclusion

This project demonstrates how a basic machine learning pipeline can be used to help telecom companies identify at-risk customers and take proactive steps to reduce churn. It sets the foundation for deeper insights through advanced modeling and domain-specific strategies.
