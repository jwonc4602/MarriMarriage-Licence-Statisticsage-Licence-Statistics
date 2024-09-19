#### Preamble ####
# Purpose: Simulate marriage registration data by year and civic centre using Poisson distribution
# Author: Jiwon Choi
# Date: 19 September 2024
# Contact: jwon.choi@mail.utoronto.ca
# License: MIT
# Pre-requisites: None

#### Workspace setup ####
library(tidyverse)
library(ggplot2)

#### Simulation 1) Number of Marriages by Year ####
set.seed(1234)  # Set a specific seed value for reproducibility

simulated_data1 <- tibble(
  "Year" = 2011:2024,
  # Simulate the number of marriages using a Poisson distribution with lambda = 10
  "Marriages_Registered" = rpois(14, lambda = 10)
)

simulated_data1

# Create a line plot of marriages by year
plot1 <- ggplot(simulated_data1, aes(x = Year, y = Marriages_Registered)) +
  geom_line(color = "blue") +
  geom_point() +
  labs(x = "Year", y = "Number of Marriages", title = "Number of Marriages Registered by Year") +
  theme_minimal()

# Display the plot
print(plot1)


#### Simulation 2) Number of Marriages by Civic Centre ####
set.seed(1234)  # Set a specific seed value for reproducibility

simulated_data2 <- tibble(
  "Civic_Centre" = c("TO", "NY", "ET", "SC"),
  # Simulate the number of marriages using a Poisson distribution with lambda = 10
  "Marriages_Registered" = rpois(4, lambda = 10)
)

simulated_data2

# Create a bar plot of marriages by civic centre
plot2 <- ggplot(simulated_data2, aes(x = Civic_Centre, y = Marriages_Registered, fill = Civic_Centre)) +
  geom_bar(stat = "identity") +
  labs(x = "Civic Centre", y = "Number of Marriages", title = "Number of Marriages Registered by Civic Centre") +
  theme_minimal() +
  geom_text(aes(label = Marriages_Registered), vjust = -0.5, size = 3)  # Add count labels above the bars

# Display the plot
print(plot2)

