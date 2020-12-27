# Auxiliary script to show confidence intervals and hypothesis testing

library(tidyverse)
library(broom) # we will use this for tidy t.tests and such
# We will use the Palmer Penguins data

library(palmerpenguins)


# Confidence intervals ----------------------------------------------------

# What is a confidence interval to each of the species' bill_length?
# This is a one sample t-test ----

adelie <- penguins %>% 
  filter(species == "Adelie")

t.test(adelie$bill_length_mm)

# Or in tidyverse applied on all species at once
penguin_ci <- penguins %>% 
  group_by(species) %>% 
  summarize(bill_length_lb = t.test(bill_length_mm)$conf.int[1],
            bill_length_ub = t.test(bill_length_mm)$conf.int[2])

penguin_ci

# Two sample, unpaired t-test ----

# In terms of distribution this looks like
ggplot(penguins, aes(bill_length_mm, fill = species)) + 
  geom_density(alpha = 0.3) + 
  geom_vline(data = pengion_ci, aes(color = species, xintercept = bill_length_lb)) + 
  geom_vline(data = pengion_ci, aes(color = species, xintercept = bill_length_ub))

# Compare the difference between the bill length of Adelie and Chinstrap

t.test(penguins %>% filter(species == "Adelie") %>% pull(bill_length_mm),
       penguins %>% filter(species == "Chinstrap") %>% pull(bill_length_mm))

# Gentoo versus Chinstrap
t.test(penguins %>% filter(species == "Gentoo") %>% pull(bill_length_mm),
       penguins %>% filter(species == "Chinstrap") %>% pull(bill_length_mm))

# The formula notation of t.test

penguins %>% 
  filter(species %in% c("Gentoo", "Chinstrap")) %>% 
  t.test(data = ., bill_length_mm ~ species)



# Paired t.test -----------------------------------------------------------
# The bill length versus bill_depth

t.test(penguins$bill_length_mm, penguins$bill_depth_mm, paired = T)

# Versus the unpaired version here 
# (the means of each vector are used and the std of each group is computed separately)
# t.test(penguins$bill_length_mm, penguins$bill_depth_mm)


# Variance confidence interval --------------------------------------------

var.test(penguins %>% filter(species == "Adelie") %>% pull(bill_length_mm),
         penguins %>% filter(species == "Chinstrap") %>% pull(bill_length_mm))
