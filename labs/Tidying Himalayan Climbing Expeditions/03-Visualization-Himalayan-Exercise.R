# Himalayan Climbing Expeditions exercise

# Loading libraries -------------------------------------------------------

library(tidyverse)

# Reading the data --------------------------------------------------------

members <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2020/2020-09-22/members.csv')
expeditions <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2020/2020-09-22/expeditions.csv')
peaks <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2020/2020-09-22/peaks.csv')


# Exercise 1 --------------------------------------------------------------

# Plot the distribution of peak height using a histogram (with geom_histogram).
# Try setting a different number of bins. What does the bins parameter control?

# Try using a density instead (geom_density). 
# Discuss the differences between histogram and density. What do you prefer and why?

# Exercise 2 --------------------------------------------------------------

# When is the best season to climb a peak?
# Filter the expeditions data to successful ascends, 
# and filter the data to the top 5 (commonly climbed) peaks:
# c("Everest", "Ama Dablam", "Cho Oyu", "Manaslu", "Lhotse")

# Create a (single) plot that displays for each peak the seasons in which expeditions 
# climbed it successfully.
# The goal is to see in what season each peak was climbed.


# Exercise 3 --------------------------------------------------------------

# In what height most injuries occur? in what height most deaths occur?
# Use the members data (and visualizations) to answer these questions.

# Compare the two and discuss their meaning
