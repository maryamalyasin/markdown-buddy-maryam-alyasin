<!-- AI Assistance Declaration: I used Muse (Muse Spark 1.3) on 14 November 2026 for drafting and formatting this README, including section structure, Markdown formatting, and wording suggestions. Prompts used: "Explain what sections a good GitHub README for an R data analysis project should include."; "Here is a summary of my R project: [synthetic retail sales analysis]. Generate a professional README.md file using Markdown."; "Add sections for Installation, Example Code, and License. Keep tone concise and professional."; "Review the Markdown for syntax errors and suggest 2 improvements for clarity." I verified outputs using GitHub preview, a Markdown syntax check, comparison with a tidyverse README, and an independent cross-check of the totals in the R script. All final calculations are done by myself in R. I am responsible for the accuracy and originality of this work. See Appendix.md for the full prompts and key responses. -->

# Synthetic Retail Sales Analysis in R

A small, reproducible R project that summarises synthetic retail sales data by product category and region, and creates a simple chart of revenue by category.

This repository was created for BDA400 Assignment 1: Markdown Buddy — Use AI to Draft and Format R Docs.

**Author:** Maryam Alyasin
**Course:** BDA400 / Data Science Tools and Techniques
**Repository name:** `markdown-buddy-maryam-alyasin`

> GitHub repository: https://github.com/maryamalyasin/markdown-buddy-maryam-alyasin

## Overview

The project answers two basic questions about a synthetic sales file:

1. How many units were sold, and how much revenue was recorded, for each product category?
2. How did revenue differ by region?

The analysis is intentionally small so the documentation, code, and outputs are easy to follow and check. No real or personal data is used.

## Project structure

```text
markdown-buddy-maryam-alyasin/
├── README.md                # This file
├── analyze_sales.R          # Main R script
├── analyze_sales.Rmd        # R Markdown documentation for analyze_sales.R
├── Reflection.md            # Reflection on the AI-assisted documentation process
├── Appendix.md              # Prompts, key AI responses, and verification notes
├── data/
│   └── synthetic_sales.csv  # Synthetic input data only (30 rows)
└── outputs/
    ├── sales_by_category.csv
    └── revenue_by_category.png
```

The files in `outputs/` are created when you run `analyze_sales.R`. They are not included in this repository until the script has been run.

## Data

Input file: `data/synthetic_sales.csv`

The file contains 30 synthetic rows with the following columns:

| Column | Type | Description |
| --- | --- | --- |
| `date` | Date | Sale date, 1–10 January 2026 |
| `region` | Text | Sales region: North, South, East, or West |
| `category` | Text | Product category: Electronics, Clothing, or Home |
| `units_sold` | Integer | Number of units sold |
| `unit_price` | Number | Price per unit in dollars |

Revenue is not stored in the input file. It is calculated in R as `units_sold * unit_price`. The data is synthetic and was created for this assignment only.

## Installation

You need R and either RStudio or Posit Cloud.

1. Clone the repository:

   ```bash
   git clone https://github.com/maryamalyasin/markdown-buddy-maryam-alyasin.git
   ```

2. Open the project folder in RStudio or Posit Cloud.

3. Install the required package, if it is not already installed:

   ```r
   install.packages("tidyverse")
   ```

### Dependencies

- R (version 4.3 or later recommended)
- `tidyverse` — used for `readr`, `dplyr`, and `ggplot2`

No other packages are required.

## Example usage

Run the script from the project root directory:

```r
source("analyze_sales.R")
```

Or, in RStudio, open `analyze_sales.R` and click **Source**.

The script will:

1. Read `data/synthetic_sales.csv`.
2. Check that the expected columns are present.
3. Calculate revenue for each row.
4. Summarise total units and total revenue by category and by region.
5. Save a summary table and a bar chart to `outputs/`.
6. Print the summaries to the console.

### Expected output

After running the script, you should see a summary by category in the console. With the supplied synthetic data, the totals to check against are:

- Total rows: 30
- Total units sold: 197
- Total revenue: $22,370.92

If your console totals do not match these values, do not use the outputs. Check that you are running the script from the project root and that `data/synthetic_sales.csv` has not been changed.

## Outputs

| Output | Description |
| --- | --- |
| `outputs/sales_by_category.csv` | Total units and total revenue by product category |
| `outputs/revenue_by_category.png` | Bar chart of total revenue by product category |

The chart is a simple summary chart. It is not meant to support business decisions, because the input data is synthetic.

## Documentation

`analyze_sales.Rmd` documents `analyze_sales.R` in R Markdown. It explains the purpose of the script, its inputs and outputs, and how each code chunk works.

To preview it, open `analyze_sales.Rmd` in RStudio or Posit Cloud and click **Knit**, or use the visual preview. Check that the headings, code chunks, and tables render correctly before submitting.

## Verification and refinement

The following checks were used while preparing this documentation:

- Compared the README structure with a tidyverse repository README for section order and clarity.
- Previewed this file in GitHub preview to check headings, code blocks, lists, and tables.
- Checked that all file paths in the text match the actual project structure.
- Cross-checked the expected totals above with an independent calculation from the CSV file.
- Shortened the first AI draft, removed repeated wording, and corrected the project structure to match the files actually included.

See `Appendix.md` for the prompts used and the main changes made after review.

## License

This project is shared under the MIT License for coursework purposes. See your course instructions if you need a different licence for reuse.

## AI Assistance Disclosure

**Tool used:** Muse (Muse Spark 1.3) on 14 November 2026.

**What it was used for:** Drafting the README structure, suggesting Markdown formatting, and suggesting clearer wording. It was not used to run the analysis or to replace manual checking.

**Main prompts:**

- "Explain what sections a good GitHub README for an R data analysis project should include."
- "Here is a summary of my R project: [synthetic retail sales analysis]. Generate a professional README.md file using Markdown."
- "Add sections for Installation, Example Code, and License. Keep tone concise and professional."
- "Review the Markdown for syntax errors and suggest 2 improvements for clarity."

**Changes I made after reviewing the outputs:**

- Corrected the project structure and file names to match the files in this repository.
- Added the exact expected totals after cross-checking them against the CSV file.
- Removed extra sections from the first draft that did not apply to this small project.
- Reworded the Overview and Usage sections in my own words and checked every file path and package name.

Full prompts and key responses are in `Appendix.md`.
