# Amazon-SQL-Analysis

This project leverages SQL to analyze Amazon purchase and survey data to uncover trends in user behavior. The analysis focuses on understanding how various factors—such as income, location, household size, and other demographics—impact purchasing patterns and survey responses.

## Goals:
- **Identify Behavioral Trends:** Analyze how user behavior varies based on income levels, geographic location, household size, and other relevant attributes.
- **Optimize Insights:** Provide actionable insights for data-driven decision-making.
- **Data Integration:** Combine purchase data with survey responses to create a holistic view of user preferences and behaviors.

## Dataset Source:
[Amazon Purchase and Survey Data](https://dataverse.harvard.edu/dataset.xhtml?persistentId=doi:10.7910/DVN/YGLYDY)

The data is in 2 main CSV files, so the first step was to get this data into tables in SQLite. This was done by using the `.import` function. The commands used are in the Amazon Table Creation file, where I created two tables, imported the data from the CSVs, and made a table joining the two tables together, called purchases and surveys. 

## Exploratory Data Analysis:
First, I wanted to explore the dataset to understand how it looks. There are 1,850,718 total records in the Amazon.com purchases data, while just 5028 records from the survey dataset. 
Shown below is a list of the Top 10 selling categories in 2022, and the same query shown in a bar chart.

![Image 1](https://github.com/user-attachments/assets/0b5468ea-d50b-49a3-bb79-c6f97e905d9c) ![Image 2](https://github.com/user-attachments/assets/14a7a71d-5649-431b-b6c5-e82a532839c3)

## Analyzing User Behavior:
After doing some exploratory data analysis on the dataset, I focused on analyzing user behavior based on income levels and geographic location.

### Income Levels:
I first analyzed how income levels correlate to the average purchase price per unit. As expected, as income increased, the average purchase price also increased. However, an interesting insight emerged: the highest income level does not buy the most items, ranking fifth out of the seven levels. This suggests that while wealthier individuals spend more per item, they may not purchase as frequently as middle-income groups.

![Income vs Purchase Price](https://github.com/user-attachments/assets/468b754e-c1f3-4b26-adf5-93e068387cd9)  
![Income vs Quantity](https://github.com/user-attachments/assets/4b0f3e6b-37ae-4f56-981a-02af14380200)  
*Income vs Purchase Price*

### Geographic Location:
Additionally, I examined how geographic location impacts purchasing behavior and preferences. This analysis aimed to reveal any regional trends that could inform marketing and sales strategies.
In addition to analyzing income levels, I also explored how geographic location impacts purchasing behavior. By examining the Shipping Address State and Purchase Price Per Unit, I observed significant regional variations. Below is a breakdown of the average purchase price per unit across different U.S. states, where states like Wyoming (WY) and Maine (ME) had higher average prices, while states like West Virginia (WV) and Washington, D.C. had lower prices.

Here are some key insights from the geographic analysis:
Highest Average Purchase Prices:
Wyoming (WY) stands out with the highest average purchase price per unit at $30.88, followed closely by Maine (ME) at $28.85 and Puerto Rico (PR) at $28.85.
Lowest Average Purchase Prices:
On the other end, states like West Virginia (WV) and Washington, D.C. had the lowest purchase prices, at $18.41 and $18.76, respectively.

This analysis suggests that purchasing behavior, and potentially even product preferences, may vary significantly depending on the region. Such insights could help target marketing campaigns or understand regional differences in purchasing power.
<img width="863" alt="Screenshot 2025-02-18 at 1 42 57 PM" src="https://github.com/user-attachments/assets/8040f180-43ad-4b56-ba0c-39242100af54" />

*Geographic Purchase Patterns*
