library(tidyverse)

# Read the palmer penguins data set
# If package is installed use
# library(palmerpneguins)
# Otherwise

penguins <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2020/2020-07-28/penguins.csv')

# Exercise 1 ----

# For each penguin type and gender, plot a qqplot of penguin body mass

# Use a hypothesis test to determine if the Adelie male body mass is normally distributed



# Exercise 2 ----

# Build a linear regression model to predict the penguin body mass

# Interpret the model