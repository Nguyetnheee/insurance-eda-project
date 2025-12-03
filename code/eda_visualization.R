library(readr)
library(ggplot2)
data <- read_csv("insurance-eda-project/data/train.csv")

#Histogram: Age
ggplot(data, aes(age)) +
geom_histogram(fill = "steelblue") +
ggtitle("Age Distribution Customers")
ggsave("insurance-eda-project/plots/age_historgram.jpg")


#Vehicle Age
ggplot(data, aes(vehicle_age)) + 
geom_bar(fill = "orange") +
ggtitle("Vehicle Age Distribution")
ggsave("insurance-eda-project/plots/vehicle_age_barplot.jpg")

#Response vs Age
ggplot(data, aes(age,response)) +
  geom_point() + 
  ggtitle("Age vs Insurance Interest")
ggsave("insurance-eda-project/plots/age_response_scatter.jpg")
