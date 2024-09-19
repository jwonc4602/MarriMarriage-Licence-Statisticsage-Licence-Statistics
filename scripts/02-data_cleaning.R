#### Preamble ####
# Purpose: Cleans the raw plane marriage licence statistics data
# Author: Jiwon Choi
# Date: 19 September 2024
# Contact: jwon.choi@mail.utoronto.ca
# License: MIT
# Pre-requisites: None
# Any other information needed? 01-download_data.R

#### Workspace setup ####
library(tidyverse)

#### Clean data ####
raw_data <- read_csv("data/raw_data/raw_data.csv")

cleaned_data <-
  raw_data |>
  janitor::clean_names() |>
  separate(col = time_period,
           into = c("year", "month"),
           sep = "-") |>
  mutate(date = lubridate::ymd(paste(year, month, "01", sep = "-"))
         )

#### Save data ####
write_csv(cleaned_data, "data/analysis_data/analysis_data.csv")
