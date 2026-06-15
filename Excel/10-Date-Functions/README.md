# Day 10 - Employee Joining Date Analysis

## Project Overview

This project is a simple employee joining date analysis sheet created for Day 10 practice. The sheet uses Excel date functions to analyze employee joining dates and calculate experience in years.

## Features

- Employee details table
- Joining date column
- Joining year extraction
- Experience calculation
- Conditional formatting based on experience
- Filtering by joining year
- Notes section explaining functions used

## Functions Used

- TODAY()
- YEAR()

## Conditional Formatting Rules

- Green → Experience greater than 5 years
- Yellow → Experience between 3 and 5 years
- Red → Experience less than 3 years

## Formula Logic

Joining Year:

Used YEAR() to extract the joining year from the joining date.

Experience:

Used YEAR(TODAY()) - YEAR(Joining Date) to calculate employee experience in years.

Filtering:

Used filters to analyze employees based on joining year.

## Learning Outcome

Practiced date functions in Excel and learned how to extract years, calculate experience, and analyze employee data based on joining dates.
