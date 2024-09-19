#### Preamble ####
# Purpose: Tests the marriage registration dataset
# Author: Jiwon Choi
# Date: 19 September 2024
# Contact: jwon.choi@mail.utoronto.ca
# License: MIT
# Pre-requisites: 01-download_data.R, 02-data_cleaning.R

#### Workspace setup ####
library(tidyverse)

# Load the dataset
data <- read_csv("data/analysis_data/analysis_data.csv")

#### Test 1: Check that the 'year' column contains valid years ####
all(data$year >= 2011 & data$year <= 2024)

#### Test 2: Check that the 'marriage_licenses' column is numeric ####
is.numeric(data$marriage_licenses)

#### Test 3: Check that 'civic_centre' contains expected values ####
expected_centres <- c("ET", "NY", "SC", "TO")
all(data$civic_centre %in% expected_centres)

