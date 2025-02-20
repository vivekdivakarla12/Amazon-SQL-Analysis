# Amazon-SQL-Analysis

This project leverages SQL to analyze Amazon purchase and survey data to uncover trends in user behavior. The analysis focuses on understanding how various factors—such as income, location, household size, and other demographics—impact purchasing patterns and survey responses.

## Goals:
- **Identify Behavioral Trends:** Analyze how user behavior varies based on income levels, geographic location, household size, and other relevant attributes.
- **Optimize Insights:** Provide actionable insights for data-driven decision-making.
- **Data Integration:** Combine purchase data with survey responses to create a holistic view of user preferences and behaviors.

## Dataset Source:
[Amazon Purchase and Survey Data](https://dataverse.harvard.edu/dataset.xhtml?persistentId=doi:10.7910/DVN/YGLYDY)

This project utilizes two main datasets: amazon-purchases.csv and survey.csv. The two datasets are combined to provide a comprehensive view of consumer behavior and demographic information.

amazon-purchases.csv:
This dataset contains longitudinal purchase data from 5027 Amazon.com users in the U.S., spanning from 2018 to 2022. Each row in this file represents an individual Amazon order, with the following columns:
- Survey ResponseID: A unique identifier that links survey responses to Amazon purchases.
- Order date: The date when the order was placed.
- Shipping address state: The state to which the order was shipped.
- Purchase price per unit: The price of each item in the order.
- Quantity: The number of items purchased.
- ASIN/ISBN (Product Code): The Amazon Standard Identification Number or ISBN of the product.
- Title: The title or name of the product.
- Category: The category of the product.


survey.csv:
This dataset includes demographic information and other consumer-level variables for each user. The data was collected through an online survey, which provides insights into user characteristics, preferences, and behaviors. The fields in this file correspond to various survey questions, and further details about the questions and possible responses can be found in the survey instrument.

These two CSVs were imported into SQLite using the .import function, and joined together on the Survey Response ID column, using the queries in the Amazon Table Creation file

## Exploratory Data Analysis:
The dataset was first explored to understand its structure. The amazon-purchases.csv file contains a total of 1,850,718 records, while the survey.csv file includes just 5028 
Before conducting in-depth analysis, an initial exploratory data analysis (EDA) was performed to assess the dataset's quality and distribution.

- Missing Values: No null values were found in key fields such as Order Date, Purchase Price Per Unit, Quantity, Survey ResponseID, and Q-demos-income, ensuring data completeness.
- Purchase Price Per Unit Analysis: A boxplot was generated to visualize the distribution of Purchase Price Per Unit, identifying potential outliers.
- Sorting by Purchase Price Per Unit: The dataset was sorted in descending order to examine the highest purchase prices and detect any anomalies or extreme values.
- Sorting by Quantity: The dataset was sorted in descending order to examine the highest quantities purchased and detect any anomalies or extreme values.

Upon reviewing these values alongside corresponding quantities, all outliers were found to be reasonable, suggesting no data entry errors or inconsistencies.
These initial insights helped guide further analysis into consumer purchasing behavior based on income levels and geographic location.
records.

Shown here is the boxplot of purchase price per unit of each order in the dataset. 


<img src="https://github.com/user-attachments/assets/b4c0181d-523a-4da1-ab73-922498a1e809" width="300">

The bar chart below shows the top 10 categories purchased from 2022. Books, Pet Food, and Gift Cards were the most popular categories. 
<img src="https://github.com/user-attachments/assets/14a7a71d-5649-431b-b6c5-e82a532839c3" width="350">

## Analyzing User Behavior:
After conducting exploratory data analysis on the dataset, the focus shifted to analyzing user behavior based on income levels and geographic location.

### Income Levels:
The analysis began by examining how income levels correlate with the average purchase price per unit. As expected, higher income levels were associated with higher average purchase prices. However, an interesting insight emerged: the highest income level did not result in the most items purchased, ranking fifth out of the seven income levels. This suggests that while wealthier individuals tend to spend more per item, they may not purchase as frequently as middle-income groups. Notably, the $50,000–$74,999 and $100,000–$149,999 income groups had higher purchase quantities than those earning $150,000 or more, indicating that middle-to-upper-middle-income consumers are more active purchasers.

<img src="https://github.com/user-attachments/assets/468b754e-c1f3-4b26-adf5-93e068387cd9" width="500">
<img width="500" alt="Screenshot 2025-02-19 at 9 54 03 PM" src="https://github.com/user-attachments/assets/91bd092d-8dd9-485a-b084-1c595ee4bbb7" />

*Income vs Purchase Price and Quantity*

### Geographic Location:
Additionally, geographic location was examined to understand its impact on purchasing behavior and preferences. This analysis aimed to identify regional trends that could inform marketing and sales strategies. By analyzing the Shipping Address State and Purchase Price Per Unit, significant regional variations were observed. States such as Wyoming (WY) and Maine (ME) had higher average prices, while states like West Virginia (WV) and Washington, D.C. exhibited lower prices.
Here are some key insights from the geographic analysis:
Highest Average Purchase Prices:
Wyoming (WY) stands out with the highest average purchase price per unit at $30.88, followed closely by Maine (ME) at $28.85 and Puerto Rico (PR) at $28.85.
Lowest Average Purchase Prices:
On the other end, states like West Virginia (WV) and Washington, D.C. had the lowest purchase prices, at $18.41 and $18.76, respectively.

This analysis suggests that purchasing behavior, and potentially even product preferences, may vary significantly depending on the region. Such insights could help target marketing campaigns or understand regional differences in purchasing power.
<img width="500" alt="Screenshot 2025-02-18 at 1 42 57 PM" src="https://github.com/user-attachments/assets/8040f180-43ad-4b56-ba0c-39242100af54" />
<img width="500" alt="Screenshot 2025-02-19 at 9 43 01 PM" src="https://github.com/user-attachments/assets/dff09858-3996-48bf-9048-4bd7e0540790" />

*Geographic Purchase Patterns*

The map visualization highlights regional differences in the average purchase price of Amazon orders across the United States.
Northwestern states (such as Wyoming, Utah, and Idaho) show higher average purchase prices (red hues). This suggests that consumers in these states tend to spend more per order rather than products being inherently more expensive.
Midwestern and Northeastern states exhibit lower average purchase prices (blue hues), indicating that consumers in these regions may be making smaller or less expensive purchases on average.
