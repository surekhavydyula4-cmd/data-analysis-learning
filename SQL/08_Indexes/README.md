# SQL Chapter 8 - Indexes

## Topics Covered

### Indexes
- What is an Index
- Creating Indexes
- Single Column Index
- Composite Index
- Unique Index
- Dropping Indexes
- Advantages of Indexes
- Disadvantages of Indexes

## What is an Index?
An index is used to improve the speed of data retrieval operations on a table.

Indexes work similarly to book indexes:
instead of scanning the entire table, SQL can quickly locate rows.

## Syntax

CREATE INDEX index_name
ON table_name(column_name);

## Types of Indexes
- Single Column Index
- Composite Index
- Unique Index

## Advantages
- Faster SELECT queries
- Better filtering and sorting performance

## Disadvantages
- Slower INSERT/UPDATE/DELETE
- Extra storage required

## Files
- schema.sql
- prcatice_questions.sql
- solutions.sql
