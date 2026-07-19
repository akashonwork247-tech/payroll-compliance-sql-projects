# Payroll Compliance SQL Project

A MySQL project simulating Indian payroll processing — covering statutory 
compliance checks for PF, ESI, and TDS deductions.

## Tools Used
- MySQL Workbench 8.0

## Structure
- `schema/` — table creation, trigger for auto-generated employee IDs
- `queries/` — analysis queries (aggregates, window functions, compliance checks)
- `data/` — sample fictional employee dataset (50 records)

## Key Features
- Auto-incrementing employee ID system (ISP-1001, ISP-1002...) via trigger
- Department-wise payroll aggregation
- Window functions for salary ranking within departments
- Compliance checks: PF ceiling breaches, ESI eligibility, TDS gaps
