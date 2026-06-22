# 📊 Multi-Touch Marketing Attribution & ROI Dashboard

## Overview

Companies advertise across multiple channels — Google Ads, Meta, TikTok, LinkedIn — but customer journeys are rarely simple. A customer might see a Facebook ad, read a blog post, and finally convert through a Google search ad. Most businesses still give 100% of the credit to that last click, which paints an inaccurate picture of what's actually driving results.

This project builds a **Multi-Touch Attribution dashboard** that fairly distributes credit across every touchpoint in a customer's journey, instead of just the final one. It helps marketing teams understand which channels truly drive value, so they can spend their budget more effectively.

---

## Problem Statement

- Last-click attribution overvalues the final touchpoint and ignores everything that led up to it.
- This causes budget to be pulled away from channels that are actually working (just not at the very end of the journey).
- Businesses need a clearer, fairer way to measure channel performance.

---

## What This Project Does

- Combines website traffic data, ad spend data, and conversion/sales data into one clean dataset.
- Calculates **Return on Ad Spend (ROAS)** and **Customer Acquisition Cost (CAC)** for each channel.
- Applies three attribution models so users can compare results:
  - **First-Touch** – credit goes to the first interaction
  - **Last-Touch** – credit goes to the final interaction
  - **Linear** – credit is spread evenly across all interactions
- Presents everything in an interactive Power BI / Tableau dashboard.

---

## Who This Helps

| Role | What They Get From It |
|---|---|
| **Marketing Leadership** | A clear, high-level view of which channels are actually worth the spend |
| **Marketing Analysts** | The ability to drill into specific campaigns and see early vs. late funnel impact |

---

## Project Steps

1. **Data Cleaning** – Cleaned and standardized raw marketing data (timestamps, missing values, duplicate records).
2. **Attribution Modeling** – Built logic to calculate First-Touch, Last-Touch, and Linear attribution for each customer journey.
3. **Metrics Calculation** – Calculated key business metrics like CAC and ROAS for each channel.
4. **Dashboard Build** – Designed an interactive dashboard so results can be explored visually and compared across models.

---

## Tools Used

- **Python (Pandas)** – data cleaning and preparation
- **SQL** – data modeling and calculations
- **Power BI / Tableau** – final dashboard and visualization

---

## Dashboard Preview

> _Add your dashboard screenshot here:_
> `![Dashboard Preview](assets/dashboard_preview.png)`

---

## Key Takeaways

> _Add 2–3 real findings once the dashboard is complete, for example:_
> - Channel X looked underperforming under last-click attribution, but was actually responsible for a large share of early customer awareness.
> - Switching to a linear model changed the calculated CAC by X%, showing the true cost of acquisition was higher than originally thought.

---

## Author

**Anil Kumar Pyarasani**
Computer Science Graduate | Aspiring Data Analyst / BI Developer

- GitHub: [github.com/Anilqumr](https://github.com/Anilqumr)
- LinkedIn: [linkedin.com/in/pyarasani-anil-kumar](https://linkedin.com/in/pyarasani-anil-kumar)