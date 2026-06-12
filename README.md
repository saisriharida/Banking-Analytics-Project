 🏦 Banking Analytics Project

 📌 Project Overview

This project is an end-to-end **Banking Analytics** solution developed using **Python, SQL, and data analysis libraries**. It integrates customer, card, and transaction datasets to uncover valuable insights into customer spending behavior, card usage patterns, and transaction trends.

The objective of this project is to demonstrate practical skills in **data cleaning, data transformation, SQL querying, exploratory data analysis (EDA), data visualization, and business insight generation** using a real-world style banking dataset.

---

 🎯 Business Objectives

- Analyze customer demographics and credit profiles.
- Identify top spending customers.
- Study transaction behavior across different card brands.
- Compare spending patterns by gender and merchant locations.
- Generate actionable business insights for decision-making.
- Build an end-to-end analytics workflow using SQL and Python.

---

 📂 Dataset Information

The project combines three related datasets:

| Dataset | Description |
|----------|-------------|
| **Users Data** | Customer demographic details, gender, credit score, etc. |
| **Cards Data** | Card details including card ID and card brand. |
| **Transactions Data** | Transaction amount, merchant information, and transaction details. |

These datasets are merged using common keys to create a unified analytics dataset.

---

 🛠️ Technologies Used

- **Python**
- **SQL (MySQL)**
- **Pandas**
- **NumPy**
- **Matplotlib**
- **Google Colab**
- **Git & GitHub**

---

 📊 Project Workflow

 1️⃣ Data Loading
- Imported customer, card, and transaction datasets.
- Loaded CSV files using Pandas.

 2️⃣ Data Cleaning & Preparation
- Checked data types.
- Handled missing values.
- Validated numeric columns.
- Verified transaction amount formats.

 3️⃣ Data Integration
- Merged multiple datasets using common keys.
- Created a consolidated banking analytics dataset.

 4️⃣ Exploratory Data Analysis (EDA)
- Dataset shape and structure analysis.
- Transaction amount statistics.
- Card brand distribution.
- Customer spending analysis.
- Merchant city analysis.

 5️⃣ SQL Analysis
- Data exploration queries.
- Customer-level aggregations.
- Transaction-level analysis.
- Card brand analysis.
- Top customer identification.
- Business insight generation using SQL.

 6️⃣ Data Visualization
- Card Brand Distribution.
- Top Spending Customers.
- Average Transaction Amount by Card Brand.
- Additional business insight visualizations.

---

 📈 Key Analyses Performed

 🔹 Card Brand Distribution
- Calculated the number of cards issued by each card brand.
- Visualized the distribution using a bar chart.

 🔹 Transaction Amount Analysis
- Computed descriptive statistics:
  - Count
  - Mean
  - Median
  - Standard Deviation
  - Minimum & Maximum Values

 🔹 Top Spending Customers
- Aggregated total transaction amount by customer.
- Identified the Top 10 highest-spending customers.

 🔹 Average Transaction by Card Brand
- Calculated average transaction amount for each card type.
- Compared spending patterns across card brands.

 🔹 SQL-Based Business Insights
- Customer spending trends.
- Card usage analysis.
- Merchant city transaction analysis.
- Customer segmentation using transaction behavior.

---

 💡 Key Business Insights

- **Mastercard and Visa dominate** the card portfolio.
- **Average transaction amounts differ across card brands**, indicating varied customer usage patterns.
- A small group of customers contributes significantly to overall transaction volume.
- Merchant location analysis can help identify high-performing business regions.
- Combining SQL and Python enables scalable banking data analysis workflows.

---

 📂 Repository Structure

```text
Banking-Analytics-Project/
│
├── Banking_Analytics_Project.ipynb       Main Python analysis notebook
├── README.md                             Project documentation
├── LICENSE                               MIT License
├── .gitignore                            Git ignore rules
│
├── sql/                                  SQL queries and analysis
│   ├── 01_data_exploration.sql
│   ├── 02_customer_analysis.sql
│   ├── 03_transaction_analysis.sql
│   ├── 04_card_brand_analysis.sql
│   └── 05_business_insights.sql
│
└── screenshots/                          Visualization outputs
    ├── card_brand_distribution.png
    ├── top_spending_customers.png
    ├── average_transaction_card_brand.png
    └── additional_visualizations.png
```

---

 📷 Sample Visualizations

 📊 Card Brand Distribution
*(Add screenshot inside `screenshots/` folder and link it here)*

```markdown
![Card Brand Distribution](screenshots/card_brand_distribution.png)
```

 📊 Top Spending Customers

```markdown
![Top Spending Customers](screenshots/top_spending_customers.png)
```

 📊 Average Transaction Amount by Card Brand

```markdown
![Average Transaction by Card Brand](screenshots/average_transaction_card_brand.png)
```

---

 🚀 How to Run This Project

 1. Clone the Repository

```bash
git clone https://github.com/saisriharida/Banking-Analytics-Project.git
```

 2. Navigate to the Project Folder

```bash
cd Banking-Analytics-Project
```

 3. Open the Notebook

- Open **Google Colab** or **Jupyter Notebook**.
- Load `Banking_Analytics_Project.ipynb`.

 4. Install Required Libraries

```bash
pip install pandas numpy matplotlib
```

 5. Update Dataset Paths

Modify the CSV file paths according to your local environment or Google Drive setup.

 6. Run All Cells

Execute the notebook from top to bottom to reproduce the analysis and visualizations.

---

 📚 SQL Scripts

The `sql/` folder contains SQL queries used during the project for:
- Data exploration.
- Customer analysis.
- Transaction aggregation.
- Card brand analysis.
- Business insight generation.

These SQL scripts complement the Python-based analytics workflow.

---

 🎓 Skills Demonstrated

- Data Cleaning
- Data Transformation
- SQL Querying
- Data Merging & Joins
- Exploratory Data Analysis (EDA)
- Business Insight Generation
- Data Visualization
- Python Programming
- Git & GitHub Version Control

---

 📌 Future Improvements

- Build an interactive Power BI dashboard.
- Create customer segmentation using clustering techniques.
- Add predictive analytics models for customer spending.
- Deploy the project as a web-based analytics dashboard.

---

 👨‍💻 Author

**Sai Srihari**

- GitHub: https://github.com/saisriharida
- LinkedIn: *(Add your LinkedIn profile URL here)*

---

 📄 License

This project is licensed under the **MIT License**. Feel free to use, modify, and distribute this project for learning and educational purposes.

---

⭐ If you found this project useful, consider giving it a **star** on GitHub!
