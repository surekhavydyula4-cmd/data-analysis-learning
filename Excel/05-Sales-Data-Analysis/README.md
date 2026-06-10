# Day 5 - Sales Data Analysis

## Project Overview

This project is a basic Excel sales data analysis sheet created for Day 5 practice. The sheet stores sales records for different product categories, calculates category-wise sales, counts products in each category, and highlights sales performance using conditional formatting.

## Features

* Sales data table
* Category-wise sales summary
* Product count by category
* Total sales amount by category
* Filtering and sorting
* Conditional formatting for sales analysis
* Currency formatting in Indian Rupee (₹)
* Notes section explaining formulas used

## Functions Used

* SUMIF()
* COUNTIF()
* UNIQUE()

## Conditional Formatting Rules

* Green → Sales Amount > ₹20,000
* Yellow → Sales Amount between ₹5,000 and ₹20,000
* Red → Sales Amount < ₹5,000

## Formula Logic

Category Sales:

SUMIF(Category Range, Category Name, Sales Range)

Product Count:

COUNTIF(Category Range, Category Name)

Unique Categories:

UNIQUE(Category Range)

## Learning Outcome

Practiced category-wise sales analysis using SUMIF() and COUNTIF(), created a sales summary table, applied filtering and sorting, and used conditional formatting to analyze sales performance.

