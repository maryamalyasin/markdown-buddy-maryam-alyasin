<!-- AI Assistance Declaration: I used Muse (Muse Spark 1.3) on 14 November 2026 for formatting this appendix and summarising the prompts and responses used in this assignment. I verified outputs by checking the prompts against the work completed and the files submitted. All final calculations are done by myself in R. I am responsible for the accuracy and originality of this work. -->

# Appendix — AI Prompts, Key Responses, and Verification Notes

**Author:** Maryam Alyasin
**Course:** BDA400 / Data Science Tools and Techniques, Assignment 1
**AI tool:** Muse (Muse Spark 1.3)
**Date of AI use:** 14 November 2026
**Data used:** Synthetic data only. No real or personal data was uploaded to an AI tool.

This appendix records the prompts used, a summary of the key AI responses, and the changes made after review, as required by the AI Usage Rules in the assignment instructions.

## Step 1: Understand Markdown structure

### Seed prompt

> Explain what sections a good GitHub README for an R data analysis project should include.

**Key response (summary):** A list of common README sections, including Overview/Project Description, Installation/Requirements, Usage/Example Code, Project Structure, Data, Outputs, and License, with a short explanation of what each section should contain.

### Refinement prompt

> Revise the sections list so it is concise and uses Markdown headers and bullet formatting.

**Key response (summary):** A shorter, formatted outline using Markdown headers and bullets, suitable as a starting structure for the README.

### Critique / validation prompt

> Check the Markdown syntax for correctness and readability.

**Key response (summary):** Confirmation that the heading levels, bullets, and code block formatting were consistent, with a suggestion to keep section headings short and to avoid repeating the same information in the Overview and Usage sections.

**Verification:** Compared the structure with a tidyverse repository README. Kept the order Overview, Project Structure, Data, Installation, Usage, Outputs, Documentation, Verification, License, and AI Assistance Disclosure.

## Step 2: Generate a draft README.md

### Project summary supplied to AI

> Synthetic retail sales analysis in R. Purpose: summarise synthetic sales by product category and region. Key script: analyze_sales.R. Input: data/synthetic_sales.csv (30 rows: date, region, category, units_sold, unit_price). Dependencies: tidyverse. Outputs: summary table and bar chart in outputs/.

### Seed prompt

> Here is a summary of my R project: [summary above]. Generate a professional README.md file using Markdown.

**Key response (summary):** A full README draft with Overview, Installation, Usage, and License sections, formatted in Markdown.

### Refinement prompt

> Add sections for Installation, Example Code, and License. Keep tone concise and professional.

**Key response (summary):** A revised draft with the requested sections added and shorter, more direct wording.

### Critique / validation prompt

> Review the Markdown for syntax errors and suggest 2 improvements for clarity.

**Key response (summary):** Two main suggestions: (1) add a project structure diagram so readers can see file locations at a glance, and (2) add expected totals so readers can check whether the script ran correctly.

**Changes made after review:**

- Corrected file names and paths to match the actual repository.
- Added the project structure diagram.
- Added the expected totals after cross-checking them against the CSV file.
- Removed sections that did not apply to this small project.
- Reworded the Overview and Usage sections in plainer language.

## Step 3: Document a single R script with R Markdown

### Seed prompt

> Here is my R script description. Suggest Markdown formatting and code block examples.

**Key response (summary):** Suggested R Markdown sections (Purpose, Inputs, Outputs) and example fenced code chunks with syntax highlighting.

### Refinement prompt

> Add syntax highlighting and improve section organization (e.g., # Purpose, ## Inputs, ## Outputs).

**Key response (summary):** A revised section outline with consistent heading levels and labelled R code chunks.

### Critique / validation prompt

> Is the Markdown consistent with RMarkdown best practices?

**Key response (summary):** Yes, with reminders to include a YAML header, to label code chunks, and to set `eval=FALSE` for documentation chunks that should display code without running the full analysis during knitting.

**Changes made after review:**

- Added a YAML header with title, author, and date.
- Labelled each code chunk and set `eval=FALSE` for documentation display.
- Added input/output tables with exact column names from the CSV file.
- Added a Limitations section and expected totals for checking.

## Reflection drafting

### Prompt

> Help me structure a reflection on using AI to draft R documentation, covering strengths and weaknesses, verification, and ethical use.

**Key response (summary):** A three-part structure matching the assignment themes, with prompt questions for each part.

**Changes made after review:** The reflection was written and edited to match the work actually done, including the specific checks used and the specific corrections made. General statements that did not reflect this project were removed.

## Verification checklist

| Check | Method | Result |
| --- | --- | --- |
| README structure | Compared with a tidyverse README | Structure kept simple and in a sensible order |
| README rendering | GitHub preview | Headings, code blocks, lists, and tables checked |
| R Markdown rendering | Knit/preview in RStudio or Posit Cloud | Headings, tables, and code chunks checked |
| File paths and names | Manual comparison with repository files | All paths corrected to match actual files |
| Script logic | Manual code review of `analyze_sales.R` | Column check, revenue calculation, summaries, and outputs reviewed |
| Expected totals | Independent calculation from `synthetic_sales.csv` | 30 rows, 197 units, $22,370.92 — to be confirmed again when the script is run in R |
| Privacy | Review of data supplied to AI | Synthetic data only; no real or personal data used |
| Attribution | Declaration and disclosure sections | Included at the top of each file and at the bottom of the README |

**Important note for submission:** Before submitting, run `analyze_sales.R` in RStudio/Posit Cloud, confirm the console totals match the expected totals above, knit `analyze_sales.Rmd`, preview `README.md` on GitHub, and confirm the GitHub username in the repository URL is `maryamalyasin`. Do not submit until those checks have been completed.
