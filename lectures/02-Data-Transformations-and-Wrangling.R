# Auxiliary script to show tidyverse transformations

# If you don't have tidyverse install it like this
# install.packages("tidyverse")

# Then you can read it
library(tidyverse)

# Note about: 
#   * Using cheat sheets
#   * Getting help using F1 or ?

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


# Operations that affect rows (manipulate cases) -------------------------

# Demonstrate: filter, distinct, arrange, slice, sample_n, sample_frac

# Operations that affect columns (manipulate variables) ------------------

# Demonstrate: select (including helpers: contains, ends_with, starts_with),
#   mutate, across, mutate_all, mutate_at, mutate_if, rename

penguins %>% 
  mutate(body_mass_kg = body_mass_g/1000)

penguins %>% 
  mutate(across(contains("_mm"), 
                ~{./100}))

penguins %>% 
  mutate_if(is.numeric, 
            ~{./100})

penguins %>% 
  mutate_at(vars(contains("_mm")),
            ~{./100})

# Operations that summarize data (summarize cases) -----------------------

# Demonstrate:
#   * `group_by` and `summarize`, followed by:
#   * `sum`, `n`, `mean`, `median`, `first`, `last`, `quantile`, `min`, `max`, `sd`


# Changing the data representation (long vs. wide) -----------------------

# Demonstrate pivot_longer and pivot_wider on this:

modified_penguins <- penguins %>% 
  count(species, island)

# Pivoting to wider
# Let's build a table that has 4 columns. 
# The first column is species, the next three are the islands in the data
# The values will be the number of observations per each island

# Pivoting to longer
# Let's build a data with pengion type, island, sex, year, type of length measurement, and value of measurement
# (The measurements represent bill length, depth, flipper length and body mass)

# This is especially useful when plotting with ggplot2, which we discussed

# Joining data sets (combine tables) -------------------------------------

# We need to artificially create new data sets here from the original one.
# For example, lets assume we have three sources (one for each penguin type):

# Adelie <- ...
# Chinstrap <- ...
# Gentoo <- ...

# Now we can bind them together to return back to the original

# To show how we join data, let's split the data to an all numeric/demographic
# First we need to generate a key variable (penguin id)
# Then split to
# penguins_background <- ...
# penguins_measurement <- ...

# Now we can join (experiment with full join, left_join, right_join, see what happens when some cases are missing)




