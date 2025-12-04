# Insurance Customer EDA (R Project)

## 1. Quick Access
**Read the full Insights Report here:**  **[insights.md](insights/insights.md)**  
_(This file summarizes all findings.)_

## 2. Project Overview
This project performs an Exploratory Data Analysis (EDA) on a real insurance customer dataset (1,000 rows).  
The goal is to:

- Understand customer demographics and behavior  
- Identify potential predictors of insurance interest  
- Visualize key patterns  
- Generate actionable business insights for insurance distribution  

Tools used: **R, dplyr, ggplot2, tidyverse**

Dataset: `train.csv` from Kaggle (Health Insurance Cross Sell Prediction)

## 3. Key Findings (Summary)

- Nearly half of customers (**49.6%**) show interest in buying insurance  
- Customers with **vehicle damage** are much more likely to be interested  
- Age distribution centers around **30–60**, the most active insurance segment  
- Gender and vehicle age are **well-balanced**, suitable for comparative analysis  
- Dataset is clean and reliable (no extreme imbalance across categories)

**Detailed explanations, visuals, and data-driven reasoning are in** 
→  **[insights.md](insights/insights.md)**

## 4. Files in Project
### **Data**
- `data/train.csv` – raw insurance dataset.

### **Code**
- `code/load_data.R` - loads dataset and prints structure & data types.  
- `code/eda_summary.R` - summary statistics, distributions, response rate.  
- `code/eda_visualization.R` - histograms, bar charts, scatterplots (all saved in `/plots`).  
- `code/eda_insights.R` - segmentation analysis using group_by(), summarise().

### **Visualizations**
- `plots/age_histogram.jpg`  
- `plots/vehicle_age_barplot.jpg`  
- `plots/age_response_scatter.jpg`  

### **Insights**
- `insights/insights.md` - comprehensive findings, each section linked to source code.

### **Documentation**
- `README.md` – project overview (this file)


## 5. Code Files

### **1. load_data.R**  
Loads dataset and outputs structure + data types.  
[View file](code/load_data.R)

### **2. eda_summary.R**  
Computes summary statistics, distributions, response rate, categorical breakdowns.  
[View file](code/eda_summary.R)

### **3. eda_visualization.R**  
Generates histograms, barplots, scatterplots, and saves them in `/plots/`.  
[View file](code/eda_visualization.R)

### **4. eda_insights.R**  
Group-by segmentation analysis used to compute deeper insights.  
[View file](code/eda_insights.R)

## 6. Visualizations (sample)

### Age Distribution  
![Age Histogram](plots/age_historgram.jpg)

### Vehicle Age Distribution  
![Vehicle Age Distribution](plots/vehicle_age_barplot.jpg)

### Response vs Age  
![Response vs Age](plots/age_response_scatter.jpg)

## 7. Purpose of This Project

This project was completed as part of my preparation for a **Data Analyst Internship**.  
It demonstrates:

- Practical R programming  
- Ability to explore datasets independently  
- Competence extracting insights from real data  
- Visualization & statistical reasoning  
- Business-oriented interpretation  

## 8. Contact

If you would like to know more about this project or my other work:

**Trần Hoàng Nguyệt Nhi**  
Email: thnn16102005@gmail.com  
GitHub: https://github.com/Nguyetnheee


