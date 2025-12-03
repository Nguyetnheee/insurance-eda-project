#LIFE INSURANCE EDA PROJECT 
library(readr)
library(dplyr)

#1. LOAD DATA
data <- read_csv("train.csv")

#2. QUICK LOOK
head(data)
str(data)
summary(data)
names(data)

#2.1 check missing values per column
colSums(is.na(data))

#2.2 check total rows and colums
dim(data)
# check for duplicated rows
sum(duplicated(data))
#2.3 Age
summary(data$age)
sd(data$age)
hist(data$age,
     main = "Age Distribution",
     xlab = "Age",
     col = "lightblue")

boxplot(data$age, 
        main = "Age Boxplot",
        ylab = "Age",
        col = "blue")
#2.4 Anual premium
summary(data$annual_premium)
hist(data$annual_premium,
     main = "Annual premium distribution",
     xlab = "Annual Premimum",
     col = "light green")
#box plot
boxplot(data$annual_premium,
        main = "Annual Premium", 
        col = "light blue",
        ylab = "annual premium")
#2.5. Vintage
summary(data$vintage)

hist(data$vintage, 
     main = "Vintage Distribution", 
     xlab = "Vintage (days)",
     col = "lightgray")

#3. CATEGORICAL:
table(data$gender)
barplot(table(data$gender), 
        main = "Gender Distribution",
        ylab = "count", 
        col = "lightblue")

table(data$vehicle_age)
barplot(table(data$vehicle_age),
        main = "Vehicle Age Distribution",
        ylab = "Count",
        col = "purple")

table(data$vehicle_damage)
barplot(table(data$vehicle_damage),
        main = "Vehicle Damage History",
        ylab = "Count",
        col = "pink")

table(data$previously_insured)
barplot(table(data$previously_insured),
        main = "Previously Insured",
        names.arg = c("No", "Yes"),
        ylab = "Count",
        col = "yellow")

# Response (target)
table(data$response)
prop.table(table(data$response))
barplot(table(data$response),
        main = "Insurance Interest (Response)",
        names.arg = c("No", "Yes"),
        ylab = "Count",
        col = "lightgreen")


#4. AVERAGE BY RESPONSE
# Average age by response
data %>%
  group_by(response) %>%
  summarise(mean_age = mean(age),
            median_age = median(age),
            n = n())
boxplot(age ~ response,
        data = data,
        main = "Age by Response",
        xlab = "Response (0 = No, 1 = Yes)",
        ylab = "Age",
        col="lightgreen")

table(data$vehicle_damage, data$response)

prop.table(table(data$vehicle_damage, data$response), 1)

table(data$vehicle_age, data$response)
prop.table(table(data$vehicle_age, data$response), 1)


data %>%
  group_by(response) %>%
  summarise(mean_premium = mean(annual_premium),
            median_premium = median(annual_premium))

summary(data$response)
