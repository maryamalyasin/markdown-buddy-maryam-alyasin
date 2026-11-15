<!-- AI Assistance Declaration: I used Muse (Muse Spark 1.3) on 14 November 2026 for drafting assistance and wording suggestions for this reflection, based on my own notes about the process. Prompts used: "Help me structure a reflection on using AI to draft R documentation, covering strengths and weaknesses, verification, and ethical use." I verified outputs by reading and editing the draft in my own words, checking that it matched the work I actually did, and removing anything that did not reflect my process. All final calculations are done by myself in R. I am responsible for the accuracy and originality of this work. See Appendix.md for the full prompts. -->

# Reflection — BDA400 Assignment 1: Markdown Buddy

**Author:** Maryam Alyasin
**Course:** BDA400 / Data Science Tools and Techniques
**Date:** 14 November 2026

> Note: The assignment PDF and the LMS page for this assignment did not list three separate reflection questions by wording. The three responses below therefore address the three reflection themes stated in the assignment objectives and instructions: (1) how AI supported the work, including its strengths and weaknesses, (2) how outputs were verified and refined, and (3) ethical use of AI, including attribution and validation.

## 1. How did AI support the documentation process? What were its strengths and weaknesses?

AI was most useful at the start of the work, when I needed a clear structure. I asked what sections a good README for an R project should include, and the first response gave me a usable outline: Overview, Installation, Usage, and License. That saved time, because I did not have to guess the order of sections, and it helped me compare my draft with real README files from tidyverse repositories.

AI was also useful for Markdown formatting. It suggested headings, tables, and code blocks, and it helped me keep the formatting consistent between the README and the R Markdown file. For a small project like this one, that consistency matters. A reader should be able to move from the README to the script documentation without having to learn a new layout.

The main weakness was that the first drafts were too general. The AI draft described a project in vague terms and included sections that did not match my actual files. It also used file names and paths that I had to correct. If I had copied the first draft without checking, the README would have described files that did not exist in the repository. A second weakness was tone. Some sentences sounded more polished than necessary for a short coursework project, and I had to shorten them and rewrite parts in plainer language.

Overall, AI worked well as a drafting assistant, but not as a replacement for checking. The structure and formatting suggestions were helpful. The details — file names, column names, package names, and totals — had to come from my own project files, and I had to verify each one.

## 2. How did you verify and refine the AI-generated outputs?

I used three main checks, and I made changes after each one.

First, I compared the AI structure with a real GitHub README. I looked at how a tidyverse repository organises its README and checked whether my sections were in a sensible order and whether anything important was missing. This led me to keep the structure simple and to remove extra sections from the first draft that did not apply to a small synthetic-data project.

Second, I previewed the Markdown. I checked the README in GitHub preview to make sure headings, code blocks, lists, and tables rendered correctly, and I checked the R Markdown file by knitting/previewing it in RStudio/Posit Cloud. Previewing caught formatting problems that are easy to miss in plain text, such as a table that did not line up and a code block that needed clearer labelling. I fixed those problems and previewed the files again.

Third, I checked the content against the actual project. I compared every file path, script name, and column name in the documentation with `analyze_sales.R` and `data/synthetic_sales.csv`. I also cross-checked the expected totals (30 rows, 197 units, $22,370.92 in revenue) with an independent calculation from the CSV file, so I would know if the R script produced a different result when run. This step took the most time, but it was the most important one, because a well-formatted document with wrong details would still be misleading.

The refinement process was iterative. I did not accept the first AI output. I used a seed prompt, then a refinement prompt to add missing sections, then a critique prompt to check syntax and clarity. After each step, I edited the text myself. The final files are shorter and more specific than the first drafts, and they match the repository structure.

## 3. What did you learn about ethical and responsible use of AI for documentation?

The main lesson for me was that disclosure is part of the work, not an extra step at the end. The assignment requires an AI Assistance Declaration, a disclosure section, and an appendix with prompts. I followed those requirements because a reader should know which parts were drafted with AI help and what I checked myself. Hiding AI use would make the documentation less trustworthy, not more professional, and it would go against the assignment rules.

I also learned to be careful about privacy and accuracy. I used synthetic data only, and I did not upload real or personal data to an AI tool. For accuracy, I treated every AI suggestion as a draft to be checked. AI did not run the analysis and did not calculate the totals for submission; the calculations are done by running the R script, and I am responsible for checking the outputs.

If I did this again, I would start with a shorter project summary and be more specific in my first prompt about file names and outputs. That would reduce the number of corrections needed later. I would also keep notes during the process, rather than reconstructing the prompts at the end, so the appendix is a more accurate record.

In future projects, I would use AI in the same way: for structure, formatting, and first drafts, followed by manual verification, previewing, and clear attribution. Good documentation is not only about clean formatting. It is about making sure another person can follow the instructions, run the code, and trust what the document says.
