#### Preamble ####
# Purpose: Simulates Data
# Author: Bingxu Li 
# Date: 27 September 2024
# Contact: bingxu.li@mail.utoronto.ca 
# License: MIT
# Pre-requisites:None
# Any other information needed? No


#### Workspace setup ####
library(tidyverse)


#### Simulate data ####


# Load necessary library (though you may not need dplyr for this simple simulation)
# install.packages("dplyr")  # Uncomment if dplyr is not installed
library(dplyr)

# Set seed for reproducibility
set.seed(1009397314)

# Number of rows to simulate
n <- 100

# Generate an ID column
id <- 1:n

# Simulate school types
school_types <- c("PR", "EP", "ES", "SS")  # Private, English Public, English Separate, Secondary School
school_type <- sample(school_types, n, replace = TRUE)

# Simulate board names
board_names <- c("None", "Toronto District School Board", "Peel District School Board", "York Region District School Board")
board_name <- sample(board_names, n, replace = TRUE)

# Simulate geometry column with random longitude and latitude
longitude <- runif(n, -80, -79)  # Random longitudes
latitude <- runif(n, 43, 44)     # Random latitudes
geometry <- paste0("c(", round(longitude, 6), ", ", round(latitude, 6), ")")

# Combine all into a data frame
simulated_data <- data.frame(
  id = id,
  school_type = school_type,
  board_name = board_name,
  geometry = geometry
)

# View the simulated data
print(head(simulated_data))

write_csv(simulated_data, "/Users/libingxu/Downloads/starter_folder-main 10/output/analysis_data/simulated_data.csv")





