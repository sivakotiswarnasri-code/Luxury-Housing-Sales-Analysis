# Luxury Housing Sales Analysis – Bengaluru

## Project Overview

This project focuses on analyzing luxury housing sales data in Bengaluru using **Python, MySQL, and Power BI**.

The goal of this project is to build an end-to-end real estate analytics pipeline by:

- Cleaning and preprocessing raw housing data using Python
- Loading the refined dataset into MySQL
- Creating an interactive Power BI dashboard
- Generating business insights for real estate market analysis

This project replicates a real-world enterprise-level data pipeline and analytics environment.

---

## Domain

- Real Estate
- Business Intelligence
- Data Analytics
- Urban Market Research

---

## Tools & Technologies Used

### Programming & Data Processing
- Python
- Pandas
- NumPy

### Database
- MySQL
- mysql-connector-python

### Visualization
- Power BI

### Development Environment
- Jupyter Notebook
- VS Code

---

## Dataset Information

The dataset contains **100,000+ luxury housing records** from Bengaluru.

### Key Columns
- Project_ID
- Micro_Market
- Builder
- Ticket_Price_Cr
- Configuration
- Possession_Status
- Amenity_Score
- Booking_Status
- Purchase_Quarter
- Sales_Channel
- Buyer_Type
- Buyer_Comments

---

## Project Workflow

### 1. Import Libraries
Imported required libraries such as:

- Pandas
- NumPy
- MySQL Connector
- Jupyter Notebook

---

### 2. Load CSV Dataset
Loaded the raw housing dataset using Pandas.

```python
df = pd.read_csv("Luxury_Housing_Bangalore.csv")
```

---

### 3. Data Cleaning

Performed data cleaning operations such as:

- Removed duplicate records
- Standardized column names
- Handled missing values
- Converted numeric columns
- Cleaned text columns
- Standardized formatting

Example:
- Removed duplicate rows
- Filled missing values in `amenity_score`
- Cleaned `ticket_price_cr`

---

### 4. Feature Engineering

Created new derived columns such as:

- `price_per_sqft`
- `quarter_number`
- `purchase_year`
- `booking_flag`
- `nri_buyer_flag`

These features were created to improve analysis and business insights.

---

### 5. Save Cleaned Dataset

Saved cleaned data into a new CSV file:

```text
cleaned_data.csv
```

---

### 6. SQL Database Connection

Connected Python to MySQL database using:

```python
mysql.connector
```

---

### 7. Create Database

Created MySQL database:

```sql
real_estate_db
```

---

### 8. Create Table

Created SQL table:

```sql
luxury_housing
```

for storing cleaned housing data.

---

### 9. Insert Data into SQL

Inserted cleaned dataset into MySQL using:

- Batch insertion
- `executemany()`
- Data validation

---

### 10. SQL Validation Queries

Executed SQL queries to validate data loading.

### Total Records

```sql
SELECT COUNT(*) FROM luxury_housing;
```

### Booking Count

```sql
SELECT booking_flag, COUNT(*) AS count
FROM luxury_housing
GROUP BY booking_flag;
```

### Builder-wise Average Ticket Price

```sql
SELECT builder,
AVG(ticket_price_cr) AS avg_price
FROM luxury_housing
GROUP BY builder
ORDER BY avg_price DESC
LIMIT 10;
```

---

## Power BI Dashboard

Built an interactive Power BI dashboard connected to MySQL.

### Dashboard Features

- KPI Cards
- Quarter-wise Booking Trends
- Top Builders by Revenue
- Amenity Score vs Booking Conversion
- Booking Conversion by Micro Market
- Sales Channel Efficiency
- Housing Configuration Demand
- Buyer Type vs Booking Status
- Bengaluru Housing Distribution Map
- Interactive Filters (Slicers)

### Slicers Used
- Builder
- Quarter
- Micro Market

---

## Business Insights

- Premium builders generated higher revenue.
- Amenity score influenced booking conversion.
- Booking trends varied across quarters.
- Some micro-markets showed stronger booking success.
- Different sales channels contributed differently to bookings.
- Luxury housing demand varied by configuration type.

---

## Project Files

```text
Luxury_Housing_Analysis/
│── Luxury_Housing_Analysis.ipynb
│── Luxury_Housing_Analysis.pbix
│── Luxury_Housing_Bangalore.csv
│── cleaned_data.csv
│── README.md
│── requirements.txt
│── screenshots/
```

---

## How to Run the Project

### Step 1: Install Required Libraries

```bash
pip install -r requirements.txt
```

---

### Step 2: Run Jupyter Notebook

Open:

```text
Luxury_Housing_Analysis.ipynb
```

Click:

```text
Select Kernel → Run All
```

This will:

- Clean dataset
- Create database
- Create table
- Insert data into MySQL
- Execute SQL validation queries

---

### Step 3: Open Power BI Dashboard

Open:

```text
Luxury_Housing_Analysis.pbix
```

Refresh data if needed.

---

## Project Deliverables

### Python
- Data Cleaning
- Feature Engineering
- SQL Integration

### SQL
- Database Creation
- Table Creation
- Data Validation Queries

### Power BI
- Interactive Dashboard
- KPIs
- Filters
- Maps
- Business Insights

---

## Conclusion

This project demonstrates an end-to-end **real estate analytics pipeline** using:

- **Python** for cleaning and preprocessing
- **MySQL** for structured data storage
- **Power BI** for interactive visualization and business intelligence

The project provides meaningful insights into Bengaluru’s luxury housing market and helps understand buyer behavior, booking trends, builder performance, and pricing patterns.