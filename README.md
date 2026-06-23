# Multi-Touch Marketing Attribution & ROI Dashboard
### Project Description

This project implements an analytical engine to evaluate multi-channel marketing campaigns. In the modern customer journey, interactions are fragmented across various paid and organic platforms. Standard evaluation methods heavily overemphasize the final interactions, completely ignoring prior touchpoints that initially built brand awareness or nurtured consideration. This discrepancy leads to inefficient budget allocation and inaccurate performance metrics.

The core of this system addresses this problem by calculating **Multi-Touch Marketing Attribution models**. It centralizes clickstream traffic, conversion events, and financial data into a cohesive analytical model. By distributing fractional credit across all touchpoints in a customer's journey, the system accurately calculates key indicators such as **Return on Ad Spend (ROAS)** and **Customer Acquisition Cost (CAC)**. 

### Core Features

* **Algorithmic Revenue Allocation:** Features processing pipelines that dynamically distribute conversion values across historical customer touchpoints using First-Touch, Last-Touch, and Linear models.
* **Data Consolidation & Cleansing:** Integrates high-volume web event logs, granular advertising spend data, and bottom-of-funnel conversion milestones. The pipeline resolves common structural issues such as fragmented web session tracking, timezone variances, and irregular tracking strings.
* **Segmented Performance Insights:** Facilitates deep multi-dimensional analysis by linking core financial returns back to distinct business characteristics such as industry verticals, company scales, and user tier designations.

### Data Model Architecture

The database structure relies on a centralized point of truth designed for rapid aggregation and clean reporting relationships:

* **`fact_marketing_attribution`:** Tracks every distinct engagement action an individual completes. Rather than inflating conversion numbers, it houses a specialized, calculated field storing the proportional revenue earned by that specific event.
* **`dim_customer`:** Contains descriptive client parameters, serving as the source for demographic segmentation.
* **`dim_campaign`:** Catalogs advertising channels, asset group identifiers, and total costs over time.
* **`dim_date`:** Provides a continuous temporal baseline allowing standardizations for cohort tracking and trend analysis.

### Repository Deliverables

1. **Ingestion & Optimization Framework:** Automated Python scripts executing heavy structural cleanups, standardizations, and data enrichment steps.
2. **Attribution Core Logic:** Relational database operations utilizing advanced sequencing and analytical windows to structure behavioral paths.
3. **Executive Visualization Layout:** Interactive analytical workspaces featuring cohort conversions, return scatter distributions, and campaign efficiency matrices.
## Description
This is an end-to-end marketing analytics project that integrates ad spend, web analytics, and CRM conversion data to measure the true impact of marketing channels on revenue. This project builds a customer journey attribution engine supporting First-Touch, Last-Touch, and Linear attribution models, enabling fair distribution of conversion credit across multiple touchpoints. Using SQL, Python, and Power BI, the solution calculates key performance metrics such as ROAS, CAC, conversion rates, and funnel performance, providing marketing teams with actionable insights for optimizing budget allocation and maximizing return on investment.
## Dataset Summary
This project uses a synthetic marketing dataset composed of three integrated data sources that capture the complete customer acquisition journey—from advertising exposure to final conversion.

 ## 1. Ad Spend Dataset:
Contains advertising performance and cost data from multiple marketing channels such as Google Ads, Meta, TikTok, and LinkedIn.

Key fields:

- `date`:
- `campaign_id`:
- `channel`:
- `impressions`:
- `clicks`:
- `spend`:

Purpose: Used to calculate marketing spend, ROAS, and campaign-level performance metrics.
### 2. Conversions Dataset

Captures user interactions across digital touchpoints, including website visits, ad clicks, and content engagement.

Key fields:

- `user_id`:
- `session_id`:
- `timestamp`:
- `source`:
- `medium`:
- `campaign`:
- `page_url`:

Purpose: Used to reconstruct customer journeys and identify the sequence of touchpoints leading to conversion.
### 3. CRM Conversion Dataset

Stores customer conversion events and associated revenue generated from successful acquisitions.

Key fields:

- `customer_id`:
- `user_id`:
- `conversion_date`:
- `revenue`:

Purpose: Used to measure conversion outcomes and assign revenue credit through attribution models.
### Combined Dataset Objective

By joining these datasets on common identifiers such as user_id, the project creates a unified customer journey dataset that enables:

- `Multi-touch attribution analysis`:
- `Customer Acquisition Cost (CAC) calculation`:
- `Return on Ad Spend (ROAS) measurement`:
- `Funnel conversion analysis`:
- `Campaign and channel performance evaluation`:

The integrated dataset provides a complete view of how marketing activities influence customer conversions and revenue generation across the acquisition funnel.

## Time Period Covered
The dataset spans from January 1, 2025, to June 30, 2025, representing 181 consecutive days of sales transactions.

## Features of this Project

- `Multi-touch marketing attribution analysis across multiple advertising channels`:
- `Compare First-Touch, Last-Touch, and Linear attribution models`:
- `Calculate true Return on Ad Spend (ROAS) for marketing campaigns`:
- `Dynamic Customer Acquisition Cost (CAC) tracking`:
- `Marketing funnel visualization and drop-off analysis`:
- `Campaign-level performance monitoring`:
- `Cross-channel budget allocation insights`:
- `Interactive dashboard with drill-down capabilities`:
- `Automated data integration from ad spend, web analytics, and CRM datasets`:
- `Executive-level KPI reporting for marketing decision-making`:
## Methodology

1. Data Collection
2. Data Cleaning
3. Customer Journey Reconstruction
4. Attribution Modeling
   - First Touch
   - Last Touch
   - Linear Attribution
5. ROAS Calculation
6. CAC Analysis
7. Dashboard Development

## Key Metrics

- Return on Ad Spend (ROAS)
- Customer Acquisition Cost (CAC)
- Conversion Rate
- Funnel Drop-off Rate
- Revenue by Channel
- Attributed Conversions
## Configuration

### Prerequisites

- Python 3.10+
- SQL Server / PostgreSQL
- Power BI Desktop 
- Jupyter Notebook
## Project Structure

├── data/
│   ├── raw/                  # Original source datasets
│   └── cleaned/            # Cleaned and transformed datasets
│──images   
├── notebooks/
|    ├── Data_cleaning.ipynb    
|    └──   exploratory_analysis.ipynb
├── reports
│── SQL         
|   ├── 
│   └── 
|
├──
│   └── 
│
│   └── 
│
├── README.md
└── requirements.txt
