library(dplyr)
library(tidyverse)  

# create a simulate data of a group of building with their year, score, storeys,
# number of units and property type.

set.seed(66) # set seed for reproducibility

building_data <- tibble(
  Year = sample(1950:2024, 100, replace = TRUE),
  Score = sample(50:100, 100, replace = TRUE),
  Storeys = sample(10:100, 100, replace = TRUE),
  Units = sample(100:200, 100, replace = TRUE),
  Property_type = sample(c("Private", "Social Housing", "TCHC"), 100, replace = TRUE)
)

building_data

# create scatter plot 
ggplot(building_data, aes(x = Year, y = Units, color = Property_type)) +
  geom_point(size = 0.8) +
  geom_smooth(method = "lm", se = TRUE, size = 0.8) +
  labs(title = "Year Built vs. # Units",
       x = "Year Built",
       y = "# Units",
       color = "Property Type") +
  theme_minimal()



