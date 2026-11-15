# AI Assistance Declaration: I used Muse (Muse Spark 1.3) on 14 November 2026 for formatting suggestions and comments for this script. Prompts used: "Here is my R script description. Suggest Markdown formatting and code block examples." and "Add syntax highlighting and improve section organization (e.g., # Purpose, ## Inputs, ## Outputs)." I verified outputs using manual code review and by checking the script logic against the input file structure. All final calculations are done by myself in R. I am responsible for the accuracy and originality of this work.
#
# analyze_sales.R
# Synthetic Retail Sales Analysis
# Author: Maryam Alyasin
# Course: BDA400 / Data Science Tools and Techniques, Assignment 1
#
# Purpose: Read synthetic sales data, calculate revenue, and summarise
# total units and total revenue by category and by region.
# Inputs:  data/synthetic_sales.csv
# Outputs: outputs/sales_by_category.csv
#          outputs/revenue_by_category.png
#          Console summaries by category and by region
#
# Run from the project root directory with:
#   source("analyze_sales.R")

library(tidyverse)

# 1. Read the input data -----------------------------------------------
# The file contains synthetic data only. No real or personal data is used.
sales <- read_csv(
  "data/synthetic_sales.csv",
  col_types = cols(
    date = col_date(),
    region = col_character(),
    category = col_character(),
    units_sold = col_integer(),
    unit_price = col_double()
  )
)

# 2. Basic checks ------------------------------------------------------
# Stop with a clear message if an expected column is missing.
expected_columns <- c("date", "region", "category", "units_sold", "unit_price")
missing_columns <- setdiff(expected_columns, names(sales))

if (length(missing_columns) > 0) {
  stop("Missing expected column(s): ", paste(missing_columns, collapse = ", "))
}

# 3. Calculate revenue -------------------------------------------------
# Revenue is calculated here in R, for each row, as units * price.
sales <- sales %>%
  mutate(revenue = units_sold * unit_price)

# 4. Summarise by category and by region --------------------------------
sales_by_category <- sales %>%
  group_by(category) %>%
  summarise(
    total_units = sum(units_sold),
    total_revenue = sum(revenue),
    .groups = "drop"
  ) %>%
  arrange(desc(total_revenue))

sales_by_region <- sales %>%
  group_by(region) %>%
  summarise(
    total_units = sum(units_sold),
    total_revenue = sum(revenue),
    .groups = "drop"
  ) %>%
  arrange(desc(total_revenue))

# 5. Print summaries to the console -------------------------------------
print(sales_by_category)
print(sales_by_region)

# 6. Save outputs --------------------------------------------------------
dir.create("outputs", showWarnings = FALSE)

write_csv(sales_by_category, "outputs/sales_by_category.csv")

revenue_plot <- ggplot(sales_by_category, aes(x = reorder(category, -total_revenue), y = total_revenue)) +
  geom_col() +
  labs(
    title = "Total revenue by product category",
    subtitle = "Synthetic data only",
    x = "Product category",
    y = "Total revenue ($)"
  ) +
  theme_minimal()

ggsave("outputs/revenue_by_category.png", plot = revenue_plot, width = 7, height = 4.5)

message("Done. Outputs saved to outputs/.")
