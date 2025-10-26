# 🏠 AdventureWorks Database Analysis Project

<div align="center">

<p align="center">
  <img src="head.png" alt="AdventureWorks Database Analysis Project" width="800"/>
</p>

**A comprehensive business intelligence dashboard analyzing sales, products, and operational metrics**

[![Excel](https://img.shields.io/badge/Microsoft_Excel-217346?style=for-the-badge&logo=microsoft-excel&logoColor=white)](https://www.microsoft.com/excel)
[![Data Analysis](https://img.shields.io/badge/Data_Analysis-4B275F?style=for-the-badge&logo=analytics&logoColor=white)](https://github.com)
[![SQL](https://img.shields.io/badge/SQL-CC2927?style=for-the-badge&logo=microsoft-sql-server&logoColor=white)](https://www.microsoft.com/sql-server)

</div>

---

## 📊 Project Overview

This project presents a comprehensive analysis of the AdventureWorks database, featuring interactive dashboards that provide actionable insights into sales performance, product analytics, territorial distribution, and employee metrics. The analysis spans multiple years (2011-2014) with quarterly breakdowns for detailed temporal analysis.

## 🎯 Key Metrics at a Glance

| Metric | Value | Description |
|--------|-------|-------------|
| 💰 **Total Due** | $123.22M | Total revenue generated |
| 📦 **Sub Total** | $109.85M | Revenue before tax and freight |
| 🧾 **Tax Amount** | $10.19M | Total tax collected |
| 🚚 **Freight** | $3.18M | Shipping and logistics costs |
| 📈 **Total Quantity** | 275K | Total units sold |

---

## 🔍 Deep Dive Analysis & Insights

### 📊 Overall Financial Performance (KPIs)

These high-level metrics are consistent across all dashboard pages and represent the grand total for the filtered period (Years 2011-2014):

| Metric | Value | Percentage of Total |
|--------|-------|--------------------|
| **Total Due (Total Sales)** | $123.22 Million | 100% |
| **Sub Total** | $109.85 Million | 89.1% |
| **Tax Amount** | $10.19 Million | 8.3% |
| **Freight Cost** | $3.18 Million | 2.6% |
| **Total Quantity Sold** | 275,000 units | - |

---

### 📈 Page 1: Sales Overview & Territory Insights

#### Sales Over Time Analysis
The line chart reveals significant monthly fluctuations in sales performance:

- **Peak Sales Month**: March achieved the highest performance at **$15.26M**
- **Lowest Sales Month**: February recorded the minimum at **$5.73M**
- **Volatility**: This represents a **166% variation** between peak and trough months

> ⚠️ **Note**: The X-axis of the time series chart is not in chronological order, which limits the ability to analyze seasonal trends and year-over-year growth patterns accurately.

#### Sales by Territory Performance

Territorial distribution shows diverse geographic reach:

| Rank | Territory | Sales (Total Due) |
|------|-----------|------------------|
| 1 | Southwest | $127.15M |
| 2 | Canada | $18.40M |
| 3 | Northwest | $18.06M |
| 4 | Australia | $11.81M |
| 5 | Central | $8.91M |
| 6 | Southeast | $8.88M |
| 7 | United Kingdom | $8.57M |
| 8 | France | $8.12M |

> 🚨 **Data Inconsistency Alert**: There is a calculation discrepancy in the territorial data. The Southwest territory shows $127.15M, which **exceeds the Total Due KPI** of $123.22M. This suggests a potential filter conflict or aggregation error in the "Sales Territory by TotalDue" visualization that requires investigation.

---

### 🏆 Page 2: Product & Logistics Insights

#### Geographical Performance by Continent

This analysis correctly aligns with the main KPI and provides a clearer geographic picture:

| Continent | Sales | Percentage | Validation |
|-----------|-------|------------|------------|
| **North America** | $89.23M | 72.4% | ✅ |
| **Europe** | $22.17M | 18.0% | ✅ |
| **Pacific** | $11.81M | 9.6% | ✅ |
| **Total** | **$123.21M** | **100%** | ✅ Matches KPI |

**Key Finding**: North America dominates with nearly three-quarters of total sales, indicating strong market concentration.

#### Top 10 Products Analysis

The **Mountain-200** product line is the clear market leader, with multiple variations dominating the top positions:

| Rank | Product | Sales Revenue |
|------|---------|---------------|
| 1 | Mountain-200 Black, 38 | $4.93M |
| 2 | Mountain-200 Black, 42 | $4.49M |
| 3 | Mountain-200 Silver, 38 | $4.13M |
| 4 | Mountain-200 Silver, 42 | $3.85M |
| 5 | Mountain-200 Silver, 46 | $3.84M |
| 6 | Mountain-200 Black, 46 | $3.70M |
| 7 | Road-250 Black, 44 | $2.82M |
| 8 | Road-250 Black, 48 | $2.63M |
| 9 | Road-250 Red, 52 | $2.25M |
| 10 | Road-150 Red, 56 | $2.08M |

**Strategic Insight**: The Mountain-200 series alone accounts for **$24.94M** (top 6 products), representing approximately **20% of total revenue**. This indicates high product concentration risk and opportunity for diversification.

#### Freight by Ship Method

Logistics cost distribution reveals clear shipping preferences:

| Shipping Method | Freight Cost | Percentage |
|----------------|--------------|------------|
| **XRQ - TRUCK GROUND** | $2.45M | 77.0% |
| **CARGO TRANSPORT 5** | $0.73M | 23.0% |
| **Total** | **$3.18M** | **100%** |

> ✅ **Data Validation**: Sum matches the Freight KPI perfectly ($3.18M)

**Operational Insight**: Ground shipping dominates logistics, suggesting a focus on cost-effective delivery over speed. Consider analyzing delivery times vs. customer satisfaction to optimize this balance.

---

### 🎯 Page 3: Category & Employee Insights

#### Sales by Category & Sub-Category

The business model shows extreme category concentration:

- **Category 1 (Bikes)**: $106.09M (86% of total sales)
- **Other Categories**: $17.13M (14% of total sales)

**Top 8 Sub-Categories Breakdown**:

| Rank | Sub-Category | Sales | % of Total |
|------|-------------|-------|------------|
| 1 | **Road Bikes** | $49.15M | 39.9% |
| 2 | **Mountain Bikes** | $40.88M | 33.2% |
| 3 | **Touring Bikes** | $16.07M | 13.0% |
| 4 | Mountain Frames | $5.32M | 4.3% |
| 5 | Road Frames | $4.34M | 3.5% |
| 6 | Touring Frames | $1.86M | 1.5% |
| 7 | Jerseys | $0.84M | 0.7% |
| 8 | Wheels | $0.77M | 0.6% |

**Calculation Verification**: Top 3 bike sub-categories total $106.10M ($49.15M + $40.88M + $16.07M), which matches Category 1 perfectly.

**Business Insight**: 
- **Bike sales** (complete bikes, not parts) represent **$106.10M** or **86% of revenue**
- **Bike components/frames** add another **$11.52M**
- **Accessories** (jerseys, wheels) contribute minimal revenue

This indicates a **highly specialized business model** focused on complete bicycle sales rather than aftermarket parts or accessories.

#### Top 8 Employees Performance

Employee performance reveals one exceptional outlier:

| Rank | Employee Name | Sales Generated | % of Top 8 Total |
|------|---------------|----------------|------------------|
| 1 | **José Saraiva** | $39.12M | 43.4% |
| 2 | Linda Mitchell | $11.70M | 13.0% |
| 3 | Jillian Carson | $11.34M | 12.6% |
| 4 | Michael Blythe | $10.48M | 11.6% |
| 5 | Jae Pak | $9.59M | 10.6% |
| 6 | Tsvi Reiter | $8.09M | 9.0% |
| 7 | Shu Ito | $7.26M | 8.1% |
| 8 | Ranjit Varkey Chudukatil | $5.09M | 5.6% |
| | **Total (Top 8)** | **$102.67M** | **100%** |

**Critical Findings**:

1. **Star Performer**: José Saraiva generated **$39.12M**, which is:
   - **334% more** than the second-place employee
   - **31.7% of total company sales** ($123.22M)
   - **43.4% of all top-8 employee sales**

2. **Performance Gap**: There's a massive **$27.42M gap** between the #1 and #2 performers

3. **Risk Concentration**: Heavy dependence on a single sales representative poses significant business continuity risk

**Strategic Recommendations**:
- **Knowledge Transfer**: Document José's sales methodology and best practices
- **Mentorship Program**: Pair José with lower-performing team members
- **Retention Strategy**: Ensure competitive compensation and engagement for top performer
- **Risk Mitigation**: Develop succession planning and account distribution strategies

---

### ✅ Data Quality Summary

| Aspect | Status | Notes |
|--------|--------|-------|
| KPI Consistency | ✅ Pass | Core metrics align across pages |
| Continental Data | ✅ Pass | Totals match grand total KPI |
| Freight Data | ✅ Pass | Sum equals Freight KPI |
| Category Data | ✅ Pass | Sub-categories sum correctly |
| Territory Data | ⚠️ Warning | Southwest value exceeds total - requires investigation |
| Time Series | ⚠️ Warning | Non-chronological axis limits trend analysis |

---

## 🖼️ Dashboard Previews

### 📈 Dashboard 1: Sales Overview & Territory Analysis
![Sales Overview Dashboard](https://page.gensparksite.com/v1/base64_upload/f5e95a162e97d17f13365cd8b32f59e1)

**Visualizations Include:**
- Key Performance Indicators (Total Due, Sub Total, Tax Amount, Freight, Total Quantity)
- Sales Over Time (Monthly Trend Line Chart)
- Sales Territory by TotalDue (Horizontal Bar Chart)
- Date Filters (Year and Quarter Slicers)

---

### 🏆 Dashboard 2: Product & Performance Analytics
![Product Analytics Dashboard](https://page.gensparksite.com/v1/base64_upload/b8c821af362c2183e2ac35f9ae326adc)

**Visualizations Include:**
- Key Performance Indicators (Consistent across all dashboards)
- Top 10 Products (Column Chart)
- Freight by Ship Method (Donut Chart)
- TotalDue by Continent (Pie Chart)
- Date Filters (Year and Quarter Slicers)

---

### 👥 Dashboard 3: Categories & Employee Performance
![Employee Performance Dashboard](https://page.gensparksite.com/v1/base64_upload/25c999a8d8639fa2ce26acb4a74e2583)

**Visualizations Include:**
- Key Performance Indicators (Consistent across all dashboards)
- Top 8 Sub-Categories (Horizontal Bar Chart)
- Sales Categories (Column Chart)
- Top 8 Employees (Horizontal Bar Chart)
- Date Filters (Year and Quarter Slicers)
- AdventureWorks Logo

---

## 🛠️ Technical Architecture


### Tools & Technologies

<div align="center">

| Tool | Purpose |
|------|---------|
| **Microsoft SQL Server** | Database Management & Data Processing |
| **Microsoft Excel** | Data Visualization & Dashboard Creation |

</div>

---

## 🔧 Data Preprocessing with SQL

Before building the dashboards, extensive data preprocessing was performed using SQL to ensure data quality and consistency. This critical phase involved several key operations:

### 1️⃣ Removing Null Columns

Identified and removed columns with excessive null values that would not contribute to meaningful analysis:



### 2️⃣ Updating Values Using INSERT Query

Populated missing critical data and standardized values across tables:



### 3️⃣ Merging Files Together in a View

Created comprehensive views by joining multiple normalized tables for easier analysis:




### 5️⃣ Creating a Calendar Table with Power Query Advanced Editor

Generated a comprehensive date dimension table using Power Query M language:



**Calendar Table Benefits:**
- ✅ Consistent time-based filtering across all dashboards
- ✅ Support for both calendar and fiscal year analysis
- ✅ Easy quarter-over-quarter and year-over-year comparisons
- ✅ Weekend/weekday segmentation for business day analysis
- ✅ Hierarchical date drilling (Year → Quarter → Month → Day)

---



## 🔍 Analysis Highlights

### Sales Performance
- **Temporal Coverage**: 2011-2014 with quarterly granularity
- **Geographic Reach**: 8+ territories across multiple continents
- **Growth Trajectory**: Consistent upward trend with seasonal variations
- **Peak Month**: March showing $15.96M in sales

### Product Insights
- **Top 10 Products**: Mountain-200 series dominates with $4.93M
- **Category Leader**: Bikes category represents majority of revenue
- **Sub-Categories**: Road Bikes ($49.15M) and Mountain Bikes ($40.88M) lead the pack

### Operational Metrics
- **Freight Analysis**: AIR - TRUCK GROUND method preferred (77% usage)
- **Tax Efficiency**: $10.19M tax on $109.85M subtotal (9.3% effective rate)
- **Unit Economics**: Average order value of ~$448 per transaction

### Team Performance
- **Top Performer**: José Saraiva with $39.12M in sales
- **Top 8 Contributors**: Combined sales of $90M+
- **Performance Distribution**: Concentrated expertise with clear leaders

---
## 👨‍💻 Team members

| [<img src="https://avatars.githubusercontent.com/A7med668" width="120px" style="border-radius:50%; border:3px solid #58a6ff;">](https://github.com/A7med668) | [<img src="https://avatars.githubusercontent.com/omarhamed888" width="120px" style="border-radius:50%; border:3px solid #58a6ff;">](https://github.com/omarhamed888) | [<img src="https://avatars.githubusercontent.com/Abdelrahman47-code" width="120px" style="border-radius:50%; border:3px solid #58a6ff;">](https://github.com/Abdelrahman47-code) |
|:--:|:--:|:--:|
| <span style="color:#58a6ff; font-weight:bold;">Ahmed Hussein</span> | <span style="color:#58a6ff; font-weight:bold;">Omar Hamed</span> | <span style="color:#58a6ff; font-weight:bold;">Abdelrahman Ahmed</span> |
| <span style="color:#8ab4f8;">👨‍💻 Data Science Student</span> | <span style="color:#8ab4f8;">👨‍💻 Data Science Student</span> | <span style="color:#8ab4f8;">👨‍💻 Data Science Student</span> |
| [<span style="color:#58a6ff;">🔗 GitHub Profile</span>](https://github.com/A7med668) | [<span style="color:#58a6ff;">🔗 GitHub Profile</span>](https://github.com/omarhamed888) | [<span style="color:#58a6ff;">🔗 GitHub Profile</span>](https://github.com/Abdelrahman47-code) |
