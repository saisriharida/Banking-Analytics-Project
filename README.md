 🏦 Banking Analytics Project

 📌 Project Overview

This project is an end-to-end Banking Analytics solution developed using **Python** and popular data analysis libraries. It integrates customer, card, and transaction datasets to uncover valuable insights into customer spending behavior, card usage patterns, and transaction trends.

The objective of this project is to demonstrate practical skills in **data cleaning, data transformation, exploratory data analysis (EDA), data visualization, and business insight generation** using real-world style banking data.

---

 🎯 Business Objectives

- Integrate multiple banking datasets into a unified analytical model.
- Analyze customer demographics and card usage behavior.
- Identify the distribution of different card brands and card types.
- Explore transaction patterns and spending behavior.
- Discover high-value customers based on transaction volume.
- Generate business insights using data visualization techniques.

---

 📂 Dataset Description

The project uses three interconnected datasets:

 1. Users Dataset
Contains customer demographic and financial information, including:
- Customer ID
- Age
- Gender
- Income
- Credit Score
- Number of Credit Cards
- Debt Information

 2. Cards Dataset
Contains card-related details associated with customers:
- Card Brand (Visa, Mastercard, Amex, Discover)
- Card Type (Debit, Credit, Prepaid)
- Credit Limit
- Card Expiry
- Chip Availability

 3. Transactions Dataset
Contains customer transaction records:
- Transaction Amount
- Merchant Name
- Merchant City
- Transaction Date
- Card ID
- Customer ID

The datasets are merged using common identifiers to create a comprehensive banking analytics dataset.

---

 🛠️ Technologies Used

| Technology | Purpose |
|------------|----------|
| Python | Programming Language |
| Pandas | Data Cleaning & Data Manipulation |
| NumPy | Numerical Operations |
| Matplotlib | Data Visualization |
| Google Colab | Development Environment |
| Git & GitHub | Version Control & Project Hosting |

---

 🔄 Project Workflow

1. Imported required Python libraries.
2. Loaded Users, Cards, and Transactions datasets.
3. Merged Users and Cards datasets.
4. Merged the combined dataset with Transactions data.
5. Performed data validation and preprocessing.
6. Conducted Exploratory Data Analysis (EDA).
7. Created visualizations to understand customer and transaction behavior.
8. Generated business insights from the analysis.
9. Published the complete project on GitHub.

---

 📊 Exploratory Data Analysis (EDA)

 Customer & Card Analysis
- Merged customer and card datasets.
- Card Brand Distribution Analysis.
- Card Type Distribution Analysis.

 Transaction Analysis
- Transaction Amount Statistics.
- Top 10 Customers by Total Transaction Value.
- Average Transaction Amount by Card Brand.
- Customer Spending Pattern Analysis.

---

 📈 Key Insights

- **Mastercard** is the most widely used card brand in the dataset.
- **Debit Cards** are issued more frequently than Credit Cards.
- A relatively small group of customers contributes a significant portion of the total transaction value.
- **Visa** and **Mastercard** users have higher average transaction amounts compared to other card brands.
- Customer spending patterns reveal opportunities for targeted banking products and personalized offers.

---

 📸 Project Visualizations

 Card Brand Distribution
![Card Brand Distribution](screenshots/card_brand_distribution.png)

 Card Type Distribution
![Card Type Distribution](screenshots/card_type_distribution.png)

 Average Transaction Amount by Card Brand
![Average Transaction Amount](screenshots/avg_transaction_by_brand.png)

 Top 10 Customers by Transaction Value
![Top Customers](screenshots/top_customers.png)

---

 🚀 How to Run the Project

 1. Clone the Repository

```bash
git clone https://github.com/saisriharida/Banking-Analytics-Project.git
```

 2. Open the Project

Open the notebook file:
```
Banking_Analytics_Project.ipynb
```
using Jupyter Notebook or Google Colab.

 3. Install Required Libraries

```bash
pip install pandas numpy matplotlib
```

 4. Run the Notebook

Execute all notebook cells sequentially to reproduce the analysis and visualizations.

---

 📁 Repository Structure

```
Banking-Analytics-Project/
│
├── Banking_Analytics_Project.ipynb
├── README.md
├── LICENSE
├── screenshots/
│   ├── card_brand_distribution.png
│   ├── card_type_distribution.png
│   ├── avg_transaction_by_brand.png
│   └── top_customers.png
└── .gitignore
```

---

 💡 Skills Demonstrated

- Data Cleaning
- Data Transformation
- Data Integration
- Exploratory Data Analysis (EDA)
- Data Visualization
- Business Insight Generation
- Python Programming
- Pandas & NumPy
- Matplotlib
- Git & GitHub

---

 👨‍💻 Author

**Sai Srihari**

- **GitHub:** https://github.com/saisriharida
- **Project Repository:** https://github.com/saisriharida/Banking-Analytics-Project

---

 ⭐ Project Highlights

✔️ End-to-End Banking Analytics Project  
✔️ Real-world Data Analysis Workflow  
✔️ Multiple Dataset Integration using Pandas  
✔️ Exploratory Data Analysis (EDA)  
✔️ Business Insights through Visualizations  
✔️ Version Controlled with Git & GitHub  
✔️ Portfolio Project for Data Analyst / Data Engineer Roles
