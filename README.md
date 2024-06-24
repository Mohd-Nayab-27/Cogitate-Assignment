Overview
This repository contains solutions to multiple tasks that involve SQL queries, data scraping, exploratory data analysis (EDA), machine learning, and web scraping. Each task is designed to test various problem-solving skills and technical knowledge.
Table of Contents
Task 1: SQL Queries
Task 2: SQL Swapping Values
Task 3: Laptop Data Scraping, EDA, and Prediction
Task 4: Website Color Extraction and Recommendation
Task 1: SQL Queries
Description
Write a SQL query to output the names of those students whose friends got offered a higher salary than them. Names must be ordered by the salary amount offered to the best friends.

Approach
Join the Students, Friends, and Packages tables to relate each student with their friend's salary.
Filter the results where the friend's salary is higher than the student's salary.
Order the results by the friend's salary.
Task 2: SQL Swapping Values
Description
Write a SQL query to swap the Name and Marks values where Id is odd with even Id. The Id values must remain unchanged.

Approach
Use a self-join to pair each odd-ID row with the corresponding even-ID row.
Swap the Name and Marks values between these paired rows.

Task 3: Laptop Data Scraping, EDA, and Prediction
Description
Scrape laptop data (specifications, warranty details, price) from a website like Amazon, Flipkart, or Reliance.
Perform EDA and data cleaning.
Train a model to predict the price of a laptop given some specifications.
Approach
Use Python libraries like BeautifulSoup, Scrapy, or Selenium to scrape data.
Clean the data and perform EDA to gain insights.
Train a regression model using libraries like scikit-learn.
Task 4: Website Color Extraction and Recommendation
Description
Scrape a given website to extract the logo image, primary colors, and button colors. Recommend a button color that complements the website's design.

Approach
Use Python libraries like BeautifulSoup, Scrapy, or Selenium to scrape the website.
Extract and identify colors using image processing libraries like OpenCV and color analysis tools.
Recommend a button color based on the extracted color scheme.
