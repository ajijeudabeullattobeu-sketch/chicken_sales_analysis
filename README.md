# food service sales analysis 
End-to-end sales analysis project using SQL, Excel, and Power BI

Chicken Sales Analysis

Project Overview

This project analyzes daily chicken sales data to identify sales patterns, compare weekday and weekend performance, and generate actionable business insights.

The analysis was conducted using SQL, Excel, and Power BI, combining data querying, statistical analysis, and data visualization.

Tools & Technologies

- SQL (MySQL) — data querying and analysis
- Microsoft Excel — statistical analysis and hypothesis testing
- Power BI — dashboard development and data visualization

Dataset

The dataset contains 62 daily observations with the following variables:

- Date
- Day of the week
- Day type (weekday/weekend)
- Number of orders
- Revenue
- Average Order Value (AOV)
- Weather conditions

Business Questions

1. Which days of the week generate the highest average revenue?
2. How does the number of orders differ between weekdays and weekends?
3. Is there a statistically significant difference in the average number of orders between weekdays and weekends?
4. Is there a statistically significant difference in Average Order Value (AOV) between weekdays and weekends?

Key Analysis & Findings

1. Sales Performance

- Total revenue: approximately ₩83 million
- Total orders: 3,431
- Overall Average Order Value: approximately ₩24,430

Saturday generated the highest total revenue among the days of the week.

2. Weekday vs. Weekend Analysis

The average number of orders was:

- Weekdays: 49.73 orders
- Weekends: 70.18 orders

Weekend orders were approximately 41.1% higher than weekday orders.

3. Hypothesis Testing

Two independent-samples t-tests were conducted to compare weekday and weekend performance.

Hypothesis 1: Average Number of Orders

- H₀: There is no difference in the average number of orders between weekdays and weekends.
- H₁: There is a difference in the average number of orders between weekdays and weekends.

Result:

- p-value: 0.0000151
- Significance level: 0.05

The null hypothesis was rejected. The difference in average order volume between weekdays and weekends was statistically significant.

Hypothesis 2: Average Order Value (AOV)

- H₀: There is no difference in average order value between weekdays and weekends.
- H₁: There is a difference in average order value between weekdays and weekends.

Result:

- Weekday AOV: approximately ₩24,484
- Weekend AOV: approximately ₩24,270
- p-value: 0.64341
- Significance level: 0.05

The null hypothesis was not rejected. There was insufficient statistical evidence to conclude that average order value differs between weekdays and weekends.


Business Recommendations

Based on the analysis:

- Consider increasing staff availability during weekends to handle higher order volumes.
- Adjust inventory and ingredient preparation according to expected weekend demand.
- Monitor weekday sales performance to identify opportunities to increase order volume.
- Focus on increasing order volume rather than assuming that customers spend more per order on weekends.

Limitations

- The dataset contains only 62 daily observations.
- The analysis covers a limited time period.
- Weather categories were not sufficiently consistent for reliable statistical comparisons.
- The findings describe relationships in the available dataset and should not automatically be interpreted as causal effects.

Project Deliverables

- SQL queries
- Excel statistical analysis
- Power BI interactive dashboard
- Business insights and recommendations
- Excel statistical analysis
- Power BI interactive dashboard
- Business insights and recommendations
