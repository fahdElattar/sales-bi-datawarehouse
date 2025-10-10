<h1>📊 Sales BI Data Warehouse & Reporting System</h1>

<p>This project implements a complete <b>Business Intelligence (BI)</b> solution, starting from a MySQL database and ending with interactive dashboards in Power BI.</p>

---

<h2>📑 Table of Contents</h2>
<ul>
  <li><a href="#overview">🚀 Project Overview</a></li>
  <li><a href="#tech-stack">🛠️ Tech Stack</a></li>
  <li><a href="#architecture">📐 Architecture</a></li>
  <li><a href="#kpis">📊 Key Performance Indicators (KPIs)</a></li>
  <li><a href="#deliverables">📂 Project Deliverables</a></li>
  <li><a href="#previews">📸 Project Previews</a></li>
  <li><a href="#authors">👨‍💻 Authors</a></li>
</ul>

---

<h2 id="overview">🚀 Project Overview</h2>
<p>The objective of this project was to design and implement a <b>data warehouse</b> and a <b>BI reporting solution</b> to analyze sales performance.</p>
<p>The process included:</p>
<ol>
  <li>Designing a <b>star schema</b> for the data warehouse.</li>
  <li>Building an <b>ETL pipeline</b> with Talend to populate the warehouse.</li>
  <li>Developing <b>Power BI dashboards</b> to visualize KPIs and support decision-making.</li>
</ol>

---

<h2 id="tech-stack">🛠️ Tech Stack</h2>
<ul>
  <li><b>Database:</b> MySQL (Data Warehouse in star schema)</li>
  <li><b>ETL Tool:</b> Talend Open Studio</li>
  <li><b>Reporting Tool:</b> Power BI</li>
</ul>

---

<h2 id="architecture">📐 Architecture</h2>
<p>The BI system follows a layered architecture:</p>
<ul>
  <li><b>Data Source:</b> Transactional MySQL database (ComptoirProd)</li>
  <li><b>ETL Layer:</b> Talend Open Studio for data extraction, transformation, and loading</li>
  <li><b>Data Warehouse:</b> Star schema (fact + dimension tables) implemented in MySQL</li>
  <li><b>Presentation Layer:</b> Interactive dashboards in Power BI</li>
</ul>
<p><img src="./screenshots/architecture-diagram.png" alt="Architecture Diagram" width="700"/></p>

---

<h2 id="kpis">📊 Key Performance Indicators (KPIs)</h2>
<p>The dashboards provide insights on:</p>
<ul>
  <li><b>Total Revenue (Chiffre d'affaires total)</b></li>
  <li><b>Total Quantity Sold</b></li>
  <li><b>Average Revenue per Sale</b></li>
  <li><b>Revenue by Customer</b></li>
  <li><b>Revenue by Product</b></li>
  <li><b>Product Market Share</b></li>
  <li><b>Monthly Sales Trends</b></li>
  <li><b>Stock Turnover</b></li>
  <li><b>Discounts Applied</b></li>
  <li><b>Geographic Analysis (by city, region, country)</b></li>
</ul>

---

<h2 id="deliverables">📂 Project Deliverables</h2>
<ul>
  <li><b>Data Warehouse</b>
    <ul>
      <li><a href="./datawarehouse/sales_datawarehouse.sql">datawarehouse/sales_datawarehouse.sql</a> – MySQL dump of the warehouse schema</li>
    </ul>
  </li>
  <li><b>ETL</b>
    <ul>
      <li><a href="./etl/sales_etl_pipeline_talend.zip">etl/sales_etl_pipeline_talend.zip</a> – Talend project for ETL</li>
    </ul>
  </li>
  <li><b>Reporting</b>
    <ul>
      <li><a href="./reporting/sales_reporting_dashboard.pbix">reporting/sales_reporting_dashboard.pbix</a> – Power BI dashboard</li>
      <li><a href="./reporting/reporting-visuals.pdf">reporting/reporting-visuals.pdf</a> – PDF with dashboard screenshots</li>
    </ul>
  </li>
  <li><b>Documentation</b>
    <ul>
      <li><a href="./docs/project_specifications_bi.pdf">docs/project_specifications_bi.pdf</a> – Original project specification</li>
      <li><a href="./docs/mini-report.pdf">docs/mini-report.pdf</a> – Mini report describing KPIs, schema, and architecture</li>
    </ul>
  </li>
</ul>

---

<h2 id="previews">📸 Project Previews</h2>

<h3>🔹 Data Warehouse Design (Star Schema)</h3>
<p><img src="./screenshots/star-schema.png" alt="Star Schema" width="700"/></p>
<p><i>Star schema implemented in MySQL Workbench, showing the central fact table (sales) and connected dimension tables (clients, products, time).</i></p>

<h3>🔹 ETL Process (Talend Jobs)</h3>
<p>Below are the Talend jobs created to load different dimensions and the fact table into the data warehouse:</p>

<h4>Load Clients</h4>
<p><img src="./screenshots/load-clients-talend-job.png" alt="Load Clients Job" width="700"/></p>
<p><i>ETL job to extract client data from the source system and load it into the client dimension table.</i></p>

<h4>Load Products</h4>
<p><img src="./screenshots/load-products-talend-job.png" alt="Load Products Job" width="700"/></p>
<p><i>ETL job to extract and load product information into the product dimension.</i></p>

<h4>Load Sales</h4>
<p><img src="./screenshots/load-sales-talend-job.png" alt="Load Sales Job" width="700"/></p>
<p><i>ETL job to populate the sales fact table with transactional data.</i></p>

<h4>Load Time</h4>
<p><img src="./screenshots/load-time-talend-job.png" alt="Load Time Job" width="700"/></p>
<p><i>ETL job to generate and load time dimension data for temporal analysis.</i></p>

<h3>🔹 Reporting Dashboards (Power BI)</h3>
<p>Here are examples of the Power BI dashboards developed for sales analysis:</p>

<h4>Dashboard Page 1</h4>
<p><img src="./screenshots/dashboard-1.png" alt="Dashboard 1" width="700"/></p>
<p><i>Overview of sales KPIs including total revenue, total sales, and performance by product.</i></p>

<h4>Dashboard Page 2</h4>
<p><img src="./screenshots/dashboard-2.png" alt="Dashboard 2" width="700"/></p>
<p><i>Geographic and client-based analysis showing sales distribution across regions and customer segments.</i></p>

---

<h2 id="authors">👨‍💻 Authors</h2>
<ul>
  <li><b>Fahd EL ATTAR</b></li>
  <li><b>Anouar EL GORCH</b></li>
</ul>
