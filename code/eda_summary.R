library(dplyr)
library(readr)
data <- read_csv("insurance-eda-project/data/train.csv")
str(data)

#basic summary
summary(data)


nrow(data)

#number of distinct ages
length(unique(data$age))

#check duplicate data row
sum(duplicated(data))

table(data$gender)
table(data$vehicle_age)
table(data$vehicle_damage)

#response rate
table(data$response)
prop.table(table(data$response))
