#### Preamble ####
# Purpose: Cleans the opendata.
# Author: Bingxu Li
# Date: 26 September 2024
# Contact: bingxu.li@mail.utoronto.ca
# License: MIT
# Pre-requisites: None
# Any other information needed? No

#### Workspace setup ####
library(tidyverse)
library(dplyr)
#### Clean data ####
raw_data <- read_csv("/Users/libingxu/Downloads/starter_folder-main 10/input/data/raw_data")


# Select the relevant columns and remove rows with NA values
cleaned_data <- data %>%
  select('_id', SCHOOL_TYPE, BOARD_NAME, geometry) %>%
  na.omit()

# View the cleaned data
head(cleaned_data)


#### Save data ####
write_csv(cleaned_data, "/Users/libingxu/Downloads/starter_folder-main 10/output/analysis_data/analysis_data.csv")

