# Healthcare Revenue & Claims Analytics

## Project Overview

This project analyzes healthcare claims data to understand revenue collection, claim denials, outstanding amounts, processing time, and insurance-wise claim performance.

The objective is to identify areas contributing to revenue leakage or delayed collections and provide actionable insights through an interactive Power BI dashboard.

## Business Problem

Healthcare organizations process a large number of claims, but some claims may be denied, remain pending, or result in lower-than-expected collections.

This project focuses on identifying these issues and understanding their impact on revenue.

## Dataset

The project uses a portfolio healthcare claims dataset containing 2,000 claims across 8 related tables:

- Patients
- Providers
- Services
- Claims
- Claim Lines
- Payments
- Claim Denials
- Insurance Payers

## Tools Used

- **Microsoft Excel** – Data cleaning, validation, KPI analysis and exploratory analysis
- **MySQL** – Relational data analysis and SQL queries
- **Power BI** – Interactive dashboard and data visualization

## Key KPIs

| KPI | Value |
|---|---:|
| Total Claims | 2,000 |
| Total Billed Amount | 2.71M |
| Total Paid Amount | 1.57M |
| Denied Claims | 317 |
| Pending Claims | 197 |
| Denial Rate | 15.85% |
| Collection Rate | 57.99% |
| Outstanding Amount | 1.14M |

## Key Analysis

The analysis focused on:

- Claims by status
- Billed amount by insurance type
- Denied claims by insurance type
- Denial reasons and amount held
- Monthly denial trends
- Claim processing time
- Insurance-wise claim performance
- High-value claims

## Key Insights

- Denied claims represent a significant area affecting revenue collection.
- There is a considerable gap between the total billed and collected amounts.
- Certain denial reasons contribute more frequently to the amount held.
- Claim processing time differs between paid and denied claims.
- Insurance types show different claim volumes and billed amounts.

## Dashboard

The Power BI dashboard provides an interactive view of:

- Claims
- Billed and paid amounts
- Denials
- Pending claims
- Outstanding amount
- Insurance performance
- Monthly denial trends

## Recommendations

- Monitor high-impact denial reasons regularly.
- Improve claim submission accuracy to reduce avoidable denials.
- Prioritize high-value denied claims for follow-up.
- Monitor pending claims to reduce collection delays.
- Track outstanding amounts and collection performance regularly.

## Repository Structure

```text
Healthcare Revenue & Claims Analytics
│
├── Healthcare_Claims_Analysis.xlsx
├── Healthcare_Claims_Analysis.sql
├── Healthcare_Revenue_Claims_Analytics.pbix
├── dashboard.png
└── README.md
