# Auxiliary script to show tidyverse transformations

# If you don't have tidyverse install it like this
# install.packages("tidyverse")

# Then you can read it
library(tidyverse)

# First, we are going to read a new data set.
# We will use the Palmer Penguins data


# Read the data -----------------------------------------------------------

penguins <- read_csv("https://raw.githubusercontent.com/allisonhorst/palmerpenguins/master/inst/extdata/penguins.csv")

# Data description here:
# https://github.com/rfordatascience/tidytuesday/blob/master/data/2020/2020-07-28/readme.md


# Some quick tricks to get to know your data ------------------------------

# Explain about the pipe %>%
# Then demonstrate: glimpse, count, View, head, tail

# pretty printing:
penguins

# glimpse
penguins %>% 
  glimpse()

# counting
penguins %>% 
  count(island, sort = T)

penguins %>% 
  count(island, species, sort = T)

# viewing
penguins %>% 
  View()


# Operations that affect rows (manipulate cases) ----

# Demonstrate: filter, distinct, arrange, slice, sample_n, sample_frac

# Operations that affect columns (manipulate variables) ----


# Operations that summarize data (summarize cases) ----


# Changing the data representation (long vs. wide) ----


# Joining data sets (combine tables) ----

