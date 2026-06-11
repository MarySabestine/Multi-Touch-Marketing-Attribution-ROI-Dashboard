# Multi-Touch Marketing Attribution & ROI Dashboard
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
│   └── processed/            # Cleaned and transformed datasets
│
├── sql/
│   ├── data_cleaning.sql
│   ├── attribution_model.sql
│   └── roas_cac_analysis.sql
│
├── notebooks/
│   └── exploratory_analysis.ipynb
│
├── dashboard/
│   └── Marketing_Attribution.pbix
│
├── assets/
│   └── screenshots/
│
├── README.md
└── requirements.txt
