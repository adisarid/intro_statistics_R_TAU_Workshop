# Auxiliary script to show confidence intervals and hypothesis testing

library(tidyverse)

# For this exercise we will load the ipf power lift data (also from tidytuesday)

ipf <- readr::read_csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2019/2019-10-08/ipf_lifts.csv")
# from here:
# https://github.com/rfordatascience/tidytuesday/tree/master/data/2019/2019-10-08

# Use everything you have learned so far (including things we learned in the previous sessions)

# Exercise 1 ----
# We are interested to compare squat lifting weight of males and females.

# Preprocess
# First note that some weights are negative. 
# This is because of the way results are recorded.
# Transform best3squat_kg, best3bench_kg, best3deadlift_kg by using absolute value.

# Part 1:
# Create a plot comparing the density of squat weight between males and females (variable sex)
# Does the distribution resemble normal distribution?

# Part 2:
# Use a t.test to compare the weights (is this a one sample, two sample unpaired or two sample paired test?).

# Part 3:
# Compare the variance of weight between males and females.


# Exercise 2 --------------------------------------------------------------

# Part 1:
# Use a transformation to set a new variable which is 
# the difference between bench press weight and deadlift weight

# Part 2:
# Use a boxplot to compare the difference you computed in part 1.

# Part 3:
# Use a t.test to compare the difference of bench press weight and the deadlift weight.
# (Is that a one sample t.test/unpaired two sample/paired two sample test?)