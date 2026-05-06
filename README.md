# 📊 Indian APSRTC Bus Data Analytics Project

## 📌 Overview

This project focuses on analyzing Indian RTC (Road Transport Corporation) bus operations data to generate insights related to passenger demand, revenue, operational efficiency, and profitability. The project demonstrates a complete data analytics workflow using Excel, MySQL, Python, and Microsoft Power BI.

---

## 🎯 Objectives

* Analyze passenger trends across routes, cities, and time
* Evaluate revenue and profit performance
* Identify operational inefficiencies (delays, cancellations)
* Build interactive dashboards for decision-making
* Demonstrate end-to-end data analytics workflow

---

## 📂 Dataset

The dataset is designed using a **star schema**:

* **Fact Table**: `fact_trips`
* **Dimension Tables**:

  * `dim_stations`
  * `dim_buses`
  * `dim_routes`
  * `dim_dates`

### 🔑 Key Metrics:

* Passengers
* Revenue
* Profit
* Fuel Cost
* Delay Time
* Occupancy Rate

---

## 🛠️ Tools & Technologies

* 📊 Excel – Data exploration & formatting
* 🗄️ MySQL – Data cleaning & transformation
* 🐍 Python – Data analysis & visualization
* 📊 Microsoft Power BI – Dashboard & reporting

---

## 🔄 Project Workflow

1. **Data Collection**

   * Dataset prepared in Excel

2. **Data Cleaning (MySQL & Python)**

   * Removed NULL values, duplicates, and invalid entries
   * Standardized formats

3. **Data Transformation**

   * Created derived columns (profit margin, revenue per passenger)
   * Structured into star schema

4. **Exploratory Data Analysis (Python)**

   * Identified trends and patterns
   * Created visualizations

5. **Dashboard Development (Power BI)**

   * Built interactive dashboards
   * Added KPIs and filters

---

## 📊 Dashboard Overview

### 🔹 Page 1: Executive Dashboard

* Total Revenue, Profit, Passengers
* Revenue trends

### 🔹 Page 2: Operations Dashboard

* Delay analysis
* Route performance

### 🔹 Page 3: Financial Dashboard

* Revenue by city
* Profit by bus type

### 🔹 Page 4: Customer Dashboard

* Passenger demand
* Zone and station analysis

---

## 📈 Key Insights

* Passenger demand varies by route and season
* Traffic and weather significantly impact delays
* Premium bus types generate higher profit
* Fuel cost affects overall profitability
* Festival periods increase passenger traffic

---

## ⚠️ Challenges Faced

* Handling missing and inconsistent data
* Writing complex SQL queries
* Debugging Python code
* Designing effective Power BI dashboards

---

## 🤖 Future Enhancements

* AI-based demand forecasting
* Real-time data integration
* Route optimization models
* Predictive maintenance

---

## 🎯 Conclusion

This project demonstrates how data analytics can be used to improve transportation systems by converting raw data into actionable insights. It highlights the importance of data-driven decision-making in optimizing operations and enhancing customer satisfaction.

---

## 👨‍💻 Author

**Sravan Skmr**
Data Analytics Project

---

## 📌 How to Use

1. Load dataset into MySQL
2. Perform data cleaning using SQL
3. Analyze data using Python
4. Import cleaned data into Power BI
5. Build dashboards and visualize insights

---

## ⭐ Project Highlights

* End-to-end analytics workflow
* Star schema data modeling
* Multi-tool integration
* Interactive dashboards
* Real-world business insights

---

## 📎 Files Included

* Dataset (Fact & Dimension tables)
* SQL scripts
* Python notebooks
* Power BI dashboard file
* Project report

---
