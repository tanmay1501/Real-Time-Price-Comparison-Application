
# Real-Time Price Comparison Application

---

## Table of Contents

- [Overview](#overview)
- [Features](#features)
- [Tech Stack](#tech-stack)
- [Database Design](#database-design)
- [How It Works](#how-it-works)
- [Setup & Usage](#setup--usage)
- [Contributing](#contributing)
- [License](#license)
- [Developed By](#developed-by)

---

## Overview


As it is commonly practiced by many, before buying anything online we tend to compare the prices on various ecommerce platforms in quest of best available deal, which in turn, often becomes a time-consuming process. But what if we had a single platform where we can compare real time prices offered for same product on different website. This is where we offer a solution to this commonly faced problem in finding the best economical option of a particular product by comparing all the other option available in the marketplace considering the overhead expenses required to acquire that product such as distance, taxes, traveling time, etc.
This application provides an automated solution to extract, transform, and load product pricing data from various online stores into a MySQL database. It enables historical price analysis, cross-site comparison, and supports further business intelligence and analytics.

## Features

- **Automated Python Scraper:** Collects product price data from selected online marketplaces.
- **ETL Pipeline:** Cleans and transforms the scraped data before loading it into MySQL.
- **Robust Relational Database:** Designed to support efficient storage, retrieval, and analysis of historical pricing data.
- **Documentation:** Detailed MySQL schema and data model included in the project report.

---

## Tech Stack

- **Backend:** Python 3 (for scraping & ETL)
- **Database:** MySQL

---

## Database Design

The MySQL schema was carefully designed for normalization, extensibility, and analytical efficiency.  
**Details on the database tables, relationships, and ER diagram are provided in the [Project Report](./Project_Report.pdf)** included in this repository.

**Key Tables:**
- `products`: Product catalog with IDs, names, and details
- `marketplaces`: Store/vendor information
- `prices`: Price data with timestamps, product IDs, and marketplace IDs

*See project report for schema and rationale.*

---

## How It Works

1. **Scraping:**  
   The Python script fetches live price data from multiple e-commerce sites for a list of products.

2. **ETL Processing:**  
   Data is cleaned and normalized (handling missing values, duplicates, and formatting).

3. **Loading:**  
   Processed data is inserted into the MySQL database, structured for historical analysis.

---

## Setup & Usage

1. **Clone this repository**
    ```sh
    git clone https://github.com/tanmay1501/Real-Time-Price-Comparison-Application.git
    cd Real-Time-Price-Comparison-Application
    ```

2. **Install Python dependencies**
    ```sh
    pip install -r requirements.txt
    ```

3. **Setup MySQL**
    - Create a MySQL database using the schema provided in the project report or `db/schema.sql` (if present).
    - Update database connection settings in the Python ETL script as needed.

4. **Run the scraper & ETL**
    ```sh
    python scraper/etl_pipeline.py
    ```

5. **Query your MySQL database**
    - Analyze or visualize the data using your favorite BI tool or SQL queries.

---

## Contributing

Contributions are welcome! Please open an issue or pull request.

---

## License

MIT License

---

## Developed By

- Tanmay Itkelwar

---

*For database details and schema, please refer to [Project_Report.pdf](./Project_Report.pdf). For any queries, contact [Tanmay Itkelwar](mailto:tanmay1501@gmail.com).*

