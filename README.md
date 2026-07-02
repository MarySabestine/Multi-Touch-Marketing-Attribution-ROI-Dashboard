# 📊 Multi-Touch Marketing Attribution & ROI Dashboard

## Project Status: Work in Progress

This project is still being built. Right now, it covers the **data cleaning stage** for the conversions (sales) data. The attribution modeling, ROAS/CAC calculations, and the final dashboard are planned next steps — not built yet. This README reflects exactly what's in the repo today, and will be updated as the project grows.

---

## What This Project Will Eventually Do

The end goal is a **Multi-Touch Attribution dashboard**. Companies advertise across multiple channels — Google Ads, Meta, TikTok, LinkedIn — but customers rarely convert after seeing just one ad. Most businesses still give 100% of the credit for a sale to the very last ad someone clicked, which gives a misleading picture of what's actually working.

This project aims to fix that by fairly splitting credit across every touchpoint in a customer's journey, so marketing teams can see which channels truly deserve more (or less) budget.

---

## What's Actually in the Repo Right Now

### 1. Raw Data
- `conversions.csv.xls` — the starting dataset. Despite the `.xls` name, it's a plain CSV file with three columns: `user_id`, `conversion_date` (with a timestamp), and `revenue`. It contains 1,564 conversion records.

### 2. Data Cleaning (Python / Jupyter Notebook)
`Transforming-Conversions.ipynb` does the following:
- Loads the raw CSV with Pandas.
- Inspects the data using `.head()`, `.sample()`, `.info()`, and `.describe()` to understand its shape, column types, and basic statistics.
- Converts the `conversion_date` column from plain text into a proper datetime format, then strips out the time portion so each date is clean and consistent (this also makes the data easier to work with later in Power BI).
- Checks for duplicate rows and missing values (none were found).
- Plots a boxplot of the `revenue` column to visually check for outliers.
- Saves the cleaned result as `cleaned_conversions.csv`.

### 3. Cleaned Data
- `cleaned_conversions.csv` — the output of the notebook above. Same three columns, with the date field cleaned up.

### 4. SQL Setup
- `Anilsql1.sql` — creates a `conversions` table with the same three columns (`user_id`, `conversion_date`, `revenue`).
- `Anilsql2.sql` — basic exploration queries: `SELECT * FROM conversions` and `DESCRIBE conversions`, used to confirm the table and its data types.

---

## What's Missing (a.k.a. What's Next)

This is the honest part: a lot of the project still needs to be built. Here's what's planned:

- [ ] **Ad spend / channel data** — bringing in data for each marketing channel (Google Ads, Meta, TikTok, LinkedIn, etc.) so spend can be compared against results.
- [ ] **Touchpoint / customer journey data** — right now there's only one row per conversion. To do proper attribution, each customer's full sequence of interactions (ad seen → blog visited → search click → purchase) needs to be tracked.
- [ ] **Attribution modeling** — building the actual logic for First-Touch, Last-Touch, and Linear attribution models.
- [ ] **ROAS and CAC calculations** — once spend and channel data are in place, calculate Return on Ad Spend and Customer Acquisition Cost per channel.
- [ ] **Dashboard** — building the final interactive Power BI / Tableau dashboard to visualize and compare everything.

---

## Tools Used So Far

- **Python (Pandas, NumPy, Matplotlib)** — for loading, inspecting, and cleaning the data, and plotting a quick boxplot.
- **SQL** — for setting up a basic table structure and exploring the data.

*(Power BI / Tableau will be added once there's enough data to build a meaningful dashboard.)*

---

## Why I'm Sharing This Now (Even Though It's Incomplete)

I'd rather show real, in-progress work than wait until everything is "perfect." This README will get updated step by step as I add channel data, build the attribution logic, and put together the dashboard — so you can actually see the project develop, not just the finished result.

---

## Author

**Anil Kumar Pyarasani**
Computer Science Graduate | Aspiring Data Analyst / BI Developer

- GitHub: [github.com/Anilqumr](https://github.com/Anilqumr)
- LinkedIn: [linkedin.com/in/pyarasani-anil-kumar](https://linkedin.com/in/pyarasani-anil-kumar)


