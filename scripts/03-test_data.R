#### Preamble ####
# Purpose: Tests simulated_data
# Author: Bingxu Li
# Date: 27 September 2024
# Contact: bingxu.li@mail.utoronto.ca
# License: MIT
# Pre-requisites: None
# Any other information needed? No


#### Workspace setup ####
library(tidyverse)
library(dplyr)

#### Test data ####
#Test simulated data
simulated_data <- read_csv("/Users/libingxu/Downloads/starter_folder-main 10/output/analysis_data/simulated_data.csv")
# Check if any value in school_type, board_name, or geometry is zero or empty
check_zero_or_empty <- simulated_data %>%
  summarize(
    school_type_empty = any(school_type == "" | is.na(school_type)),
    board_name_empty = any(board_name == "" | is.na(board_name)),
    geometry_empty = any(geometry == "" | is.na(geometry))
  )

# View the results
print(check_zero_or_empty)

#Test cleaned data
cleaned_data <- read.csv("/Users/libingxu/Downloads/starter_folder-main 10/output/analysis_data/analysis_data.csv")

# Check if any value in SCHOOL_TYPE, BOARD_NAME, or geometry is zero, NA, or empty
check_values <- cleaned_data %>%
  summarize(
    school_type_zero_or_empty = any(SCHOOL_TYPE == "" | SCHOOL_TYPE == 0 | is.na(SCHOOL_TYPE)),
    board_name_zero_or_empty = any(BOARD_NAME == "" | BOARD_NAME == 0 | is.na(BOARD_NAME)),
    geometry_zero_or_empty = any(geometry == "" | geometry == 0 | is.na(geometry))
  )

# View the results
print(check_values)

