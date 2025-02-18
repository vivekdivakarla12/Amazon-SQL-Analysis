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

*Geographic Purchase Patterns*
