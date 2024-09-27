library(dplyr)
library(readr)

# test the data

cleaned_data <- read_csv(
  file = "data/analysis_data/cleaned_data.csv"
)

is.numeric(cleaned_data$YEAR_BUILT) == TRUE

is.numeric(cleaned_data$CURRENT_BUILDING_EVAL_SCORE) == TRUE

is.numeric(cleaned_data$CONFIRMED_STOREYS) == TRUE

is.numeric(cleaned_data$CONFIRMED_UNITS) == TRUE

is.character(cleaned_data$PROPERTY_TYPE) == TRUE

