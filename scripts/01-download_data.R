#### Preamble ####
# Purpose: Downloads and saves the data from Opendata
# Author: Bingxu Li
# Date: 27 September 2024
# Contact: bingxu.li@mail.utoronto.ca
# License: MIT
# Pre-requisites: None
# Any other information needed? No


#### Workspace setup ####
library(opendatatoronto)
library(tidyverse)
# [...UPDATE THIS...]

#### Download data ####
# Search for a specific package on OpenDataToronto by keyword ("Marriage Licence Statistics")
marriage_licence_packages <- search_packages("School Locations - All Types")
marriage_licence_packages
# Retrieve a list of all resources (datasets) available within the found package
marriage_licence_resources <- marriage_licence_packages %>%
  list_package_resources()
# Display the list of resources available in the "Marriage Licence Statistics" package
marriage_licence_resources
marriage_licence_statistics <- marriage_licence_resources[1,] %>%
  get_resource()
marriage_licence_statistics
data = marriage_licence_statistics


#### Save data ####
# change the_raw_data to whatever name you assigned when you downloaded it.
write_csv(data, "/Users/libingxu/Downloads/starter_folder-main 10/input/data/raw_data/raw_data.csv") 

         
