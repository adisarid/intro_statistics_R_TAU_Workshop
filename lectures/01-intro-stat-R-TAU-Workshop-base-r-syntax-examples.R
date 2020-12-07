# This script is used to demonstrate the RStudio IDE and some base R commands

# RStudio IDE is an environment which helps us develop R code.
# -> Explain about the script window
# -> Explain about the console
# -> Explain about the Environment, History panes
# -> Explain about the Files, Plots, Packages, Help, Viewer panes

# With RStudio you can easily access cheat sheets which will help you later on (Help -> Cheat sheets)


# Basic syntax ------------------------------------------------------------

2 + 2

a <- 5
b <- 3

a + b

a_plus_b <- a + b
a_plus_b


# Types of variables ------------------------------------------------------

some_integer <- c(1L, 2L, 3L)  # The L sign stands for "Long integer"
some_integer

some_double <- c(1, 2, pi, exp(1))
some_double

some_character <- c("This", "is", "a", "character", "vector")
some_character

some_factor <- factor(c("Apples", "Oranges", "Paers", "Mangos", "Apples", "Oranges"))
some_factor
# What are factors? can you give examples for factors?

some_date <- c(Sys.Date(), as.Date("1993-08-01"))
some_date

some_logical <- c(TRUE, FALSE, FALSE, TRUE) # can also use c(T, F, F, T) is the same
some_logical

# Reading a part of a vector
some_factor[1:2]


# List --------------------------------------------------------------------

# Structure of a different kind

my_list <- list(my_int = some_integer,
                my_double = some_double,
                my_character = some_character,
                my_factor = some_factor,
                my_date = some_date)
my_list

# Reading a specific vector out of a list

my_list$my_date


# Data frames -------------------------------------------------------------
# later on we might call them tibbles, but the concept is the same

my_data <- data.frame(name = c("Danny", "Moshe", "Iris", "Ronit"),
                      favorite_fruit = factor(c("Mango", "Apple", "Apple", "Paer")),
                      age = c(25L, 32L, 22L, 30L),
                      height = c(1.8, 1.75, 1.6, 1.68),
                      married = c(F, T, F, T))
my_data

# *** Intermezzo on tidy data (presentation) ***


# Functions ---------------------------------------------------------------

# Using functions is very easy. We have base-R functions such as:

sin(2*pi)

mean(c(1, 10, 100))

# We can also extend R and build our own functions:

# define a new function which adds a number
one_plus <- function(number){
  number + 1
}
# use the function:
one_plus(1)

one_plus(one_plus(1))

# There are packages in R which extend it further. Tidyverse is a budle of packages.
# For example, readr is a package for reading files.
# stringr is a package for handling strings
# ggplot2 is a package for visualizations (you've actually used it earlier without knowing it)

library(ggplot2)

ggplot(mtcars, aes(x = disp, y = mpg)) + 
  geom_point()


# Operators ---------------------------------------------------------------

# Logical operators: TRUE and FALSE (same as T and F)


a <- 5
b <- 6

(a < 3) && (b >= 3)

(a >= 5) || (b > 10)

v1 <- c(T, T, F, F)
v2 <- c(T, F, T, F)

v1 | v2

# Not is !

!TRUE
!FALSE


# Conditionals (if else) --------------------------------------------------

some_value <- 100

if (is.numeric(some_value)) {
  cat("This is indeed a numeric value!")
} else {
  cat("This is not a numeric value!")
}

some_value <- "foobar"

if (is.numeric(some_value)) {
  cat("This is indeed a numeric value!")
} else {
  cat("This is not a numeric value!")
}


# For loops ---------------------------------------------------------------

fruits <- c("Mango", "Bannana", "Pineapple", "Orange", "Apple", "Prune", "Lemon", "Loquat")
my_garden <- c("Mango", "Orange", "Lemon", "Loquat")

for (current_fruit in fruits) {
  if (current_fruit %in% my_garden) {
    cat("\nI grow", current_fruit)
  } else {
    cat("\nI don't grow", current_fruit)
  }
}

# Special values ----------------------------------------------------------

# There are special values such as:

NA

Inf

NULL

NaN

# With respective functions such as:
is.finite(100/0)
is.infinite(log(0))

NA + 1
NA * 0
NA ^ 0