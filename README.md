# SQL Data Warehouse and Analytics Project 🚀

Welcome to my SQL Data Warehouse and Analytics Project repository!

This project is a complete end-to-end implementation of a modern data warehouse solution following industry standards. It includes raw data ingestion, ETL pipeline creation, data modeling using a star schema, and actionable insights generation via SQL queries. Designed as a portfolio project, it demonstrates core skills in data engineering and analytics using SQL Server.

---

## 🏗️ Data Architecture

This project follows the **Medallion Architecture** using three layers:

- **Bronze Layer**: Ingests raw data (CSV files) from source systems (ERP & CRM).
- **Silver Layer**: Applies data cleansing, standardization, and transformation.
- **Gold Layer**: Contains business-ready, analytics-optimized data modeled using a star schema.

---

## 📖 Project Overview

This project covers:

- **Data Architecture**: Medallion architecture (Bronze, Silver, Gold).
- **ETL Pipelines**: Extracting from source, transforming data, and loading into SQL Server.
- **Data Modeling**: Creation of fact and dimension tables.
- **Analytics & Reporting**: SQL queries for customer behavior, sales trends, and product performance.

---

## 🎯 Skills Demonstrated

- SQL Development
- Data Engineering
- ETL Pipeline Design
- Data Modeling (Star Schema)
- Analytics & Business Intelligence
- SQL Server & SSMS Usage

---

## 🛠️ Tools & Technologies

- **SQL Server Express** – lightweight relational database server
- **SQL Server Management Studio (SSMS)** – database GUI
- **CSV Files** – raw ERP and CRM datasets
- **GitHub** – project versioning and documentation
- **Draw.io** – architecture and data flow diagrams
- **Notion** – task tracking and project notes (optional)

---

## 🚀 Project Requirements

### Data Engineering Phase

**Objective:**  
Build a SQL Server-based data warehouse by integrating and transforming ERP and CRM datasets.

**Key Steps:**

- Ingest raw data (CSV) into the Bronze layer.
- Clean and standardize data in the Silver layer.
- Build fact and dimension tables in the Gold layer.
- Ensure high data quality through transformations and tests.

---

### Data Analytics Phase

**Objective:**  
Generate business insights using SQL-based reports.

**Focus Areas:**

- Customer segmentation and behavior
- Product-level performance metrics
- Sales trends over time
- KPI calculation and reporting

---

## 📂 Repository Structure

sql_data_warehouse_project/
│
├── datasets/ # Raw CSV files (ERP & CRM)
│
├── docs/ # Project documentation and diagrams
│ ├── data_catalog.md # Descriptions and metadata of datasets
│ ├── data_models.drawio # Star schema diagram
│ ├── data_architecture.drawio # Full architecture design
│ ├── data_flow.drawio # ETL flowchart
│ ├── naming-conventions.md # Table and column naming standards
│
├── scripts/
│ ├── bronze/ # Scripts for loading raw data
│ ├── silver/ # Scripts for cleaning and preparing data
│ ├── gold/ # Scripts for analytical model creation
│
├── tests/ # Data validation and quality scripts
│
├── README.md # Project overview (this file)
├── LICENSE # MIT License
├── .gitignore # Git ignored files
└── requirements.txt # Tools/dependencies if any



---

## 📊 Sample Insights Generated

- 🧑‍💼 **Top 10 Customers by Revenue**
- 📈 **Monthly Sales Trends**
- 🎯 **Most Profitable Product Categories**
- 🏆 **Customer Lifetime Value Metrics**
- 🔍 **Churn Prediction Signals (via SQL flags)**

---

## 📎 Resources & Courses I Followed

- ✅ [SQL Data Warehouse Project Course by DataWithBaraa](https://github.com/barakhatib/sql_data_warehouse_project)
- ✅ SQL Full Course  
- ✅ Exploratory Data Analysis with SQL  
- ✅ Tableau HR and Sales Dashboards (optional extension)

---

## ☕ About Me

Hi there! I'm **Abdul Mossawer**, a Data Engineering enthusiast currently learning and building portfolio projects around SQL, data warehousing, and analytics. This project is part of my **#100DaysOfDataAnalytics** journey to upskill and share my learning experience publicly.

Let’s connect!  
🔗 [LinkedIn](https://linkedin.com/in/abdulmossawer) | [GitHub](https://github.com/abdulmossawer) | [X](https://x.com/AMossawerdev)

---

## 🛡️ License

This project is licensed under the [MIT License](LICENSE).  
You are free to use, modify, and distribute it—just give proper credit.

---

## 📌 How to Use This Repository

1. **Clone** this repository:  
   ```bash
   git clone https://github.com/abdulmossawer/sql_data_warehouse_project.git

2. Open in SSMS.

3. Import CSVs into datasets/ and run the ETL scripts layer by layer:

bronze/ → silver/ → gold/

4. Use SQL queries in gold/ to extract business insights.

5. Visualize your output in SSMS or export to Excel/Tableau (optional).


---

Let me know if you want:
- A **matching `data_catalog.md`** template.
- Diagram templates for **Draw.io**.
- Or help writing SQL insight queries to include in `gold/`.

Want me to generate it as a downloadable `.md` file too?


