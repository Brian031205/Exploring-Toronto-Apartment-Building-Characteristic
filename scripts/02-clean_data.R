library(dplyr)
library(readr)

# read the raw data 
raw_data <- read_csv(
  file = "data/raw_data/raw_data.csv"
)


# change the variable name to appropriate
colnames(raw_data) <- gsub("\\.", "_", colnames(raw_data))


# select data of interest
cleaned_data = raw_data |> select(YEAR_BUILT, CURRENT_BUILDING_EVAL_SCORE,
                                      CONFIRMED_STOREYS, CONFIRMED_UNITS,
                                      PROPERTY_TYPE)
# filter out the missing value
cleaned_data = na.omit(cleaned_data)

cleaned_data

# change year built, confirmed storeys, confirmed units,
# proactive building score and building evaluation score to integer type

cleaned_data$YEAR_BUILT <- as.integer(cleaned_data$YEAR_BUILT)

cleaned_data$CONFIRMED_STOREYS <- as.integer(cleaned_data$CONFIRMED_STOREYS)

cleaned_data$CONFIRMED_UNITS <- as.integer(cleaned_data$CONFIRMED_UNITS)

cleaned_data$CURRENT_BUILDING_EVAL_SCORE <- as.integer(cleaned_data$CURRENT_BUILDING_EVAL_SCORE)

# filter the data with year built greater than 1900
cleaned_data = cleaned_data |> filter(YEAR_BUILT > 1950)


cleaned_data
# save the cleaned data to csv file
write_csv(
  x = cleaned_data,
  file = "data/analysis_data/cleaned_data.csv"
)
