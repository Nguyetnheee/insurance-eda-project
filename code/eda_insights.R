library(dplyr)
library(readr)

data <- read.csv("insurance-eda-project/data/train.csv")

#Segment analysis
data %>% group_by(vehicle_damage) %>%
  summarise(interest_rate = mean(response))

data %>% group_by(vehicle_age) %>%
  summarise(avg_interest = mean(response))

data %>% group_by(gender) %>%
  summarise(avg_interest = mean(response))
