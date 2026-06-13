# Multi-Touch Marketing Attribution & ROI Dashboard

Project Description
This project implements an analytical engine to evaluate multi-channel marketing campaigns. In the modern customer journey, interactions are fragmented across various paid and organic platforms. Standard evaluation methods heavily overemphasize the final interactions, completely ignoring prior touchpoints that initially built brand awareness or nurtured consideration. This discrepancy leads to inefficient budget allocation and inaccurate performance metrics.

The core of this system addresses this problem by calculating Multi-Touch Marketing Attribution models. It centralizes clickstream traffic, conversion events, and financial data into a cohesive analytical model. By distributing fractional credit across all touchpoints in a customer's journey, the system accurately calculates key indicators such as Return on Ad Spend (ROAS) and Customer Acquisition Cost (CAC).

Core Features
Algorithmic Revenue Allocation: Features processing pipelines that dynamically distribute conversion values across historical customer touchpoints using First-Touch, Last-Touch, and Linear models.

Data Consolidation & Cleansing: Integrates high-volume web event logs, granular advertising spend data, and bottom-of-funnel conversion milestones. The pipeline resolves common structural issues such as fragmented web session tracking, timezone variances, and irregular tracking strings.

Segmented Performance Insights: Facilitates deep multi-dimensional analysis by linking core financial returns back to distinct business characteristics such as industry verticals, company scales, and user tier designations.

Data Model Architecture
The database structure relies on a centralized point of truth designed for rapid aggregation and clean reporting relationships:

fact_marketing_attribution: Tracks every distinct engagement action an individual completes. Rather than inflating conversion numbers, it houses a specialized, calculated field storing the proportional revenue earned by that specific event.

dim_customer: Contains descriptive client parameters, serving as the source for demographic segmentation.

dim_campaign: Catalogs advertising channels, asset group identifiers, and total costs over time.

dim_date: Provides a continuous temporal baseline allowing standardizations for cohort tracking and trend analysis.

Repository Deliverables
Ingestion & Optimization Framework: Automated Python scripts executing heavy structural cleanups, standardizations, and data enrichment steps.

Attribution Core Logic: Relational database operations utilizing advanced sequencing and analytical windows to structure behavioral paths.

Executive Visualization Layout: Interactive analytical workspaces featuring cohort conversions, return scatter distributions, and campaign efficiency matrices.
