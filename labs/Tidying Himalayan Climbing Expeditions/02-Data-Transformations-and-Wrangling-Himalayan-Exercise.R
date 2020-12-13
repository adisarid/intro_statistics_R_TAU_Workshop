# Himalayan Climbing Expeditions exercise

# Loading libraries -------------------------------------------------------

library(tidyverse)

# Reading the data --------------------------------------------------------

members <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2020/2020-09-22/members.csv')
expeditions <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2020/2020-09-22/expeditions.csv')
peaks <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2020/2020-09-22/peaks.csv')

# Exercise 1: initial exploration of the data -----------------------------

# Using functions such as glimpse, and View, explore the three data sets
# * Discuss what you see within your group, and answer:
# * What is the size of each data set? (number of cases = rows and number of variables = columns)
# * What are the relationships between the data sets? (how are they related to one another)
# * What variables are shared between the data sets?
# * Which variable indicates when a peak was first ascended?
# * How can you find out if and when a specific expedition reached the peak?
# * How would you find out the role of a specific expedition member, and if he suffered an injury?
# * How would you find the number of deaths with a specific expedition?
#      (at this stage don't compute it, just think how to - we will do it later on)
# * How would you find the number of injuries with a specific expedition?
#      (at this stage don't compute it, just think how to - we will do it later on)

# Exercise 2: understanding variables and values --------------------------

# Use count, filter, arrange, distinct, and View to answer the following questions:

# * What is the expedition year range?
# * How many distinct citizenships were there in expeditions up to 1950?
# * Do expeditions have a single or multiple citizenship in that period? how many share multiple citizenships?

# * What is the best season to climb the Everest's peak? (how did you decide based on the data?)
# * What is the best season to climb the Ama Dablam peak?
# * How many attempts are documented for the Everest's peak before its successful climb in 1953?

# * How many Himalayan peaks exceed 8000m?
# * What peaks were first ascended by Australians, and when?

# Exercise 3 --------------------------------------------------------------

# Use mutate and select (and additional functions if you need) to answer the following questions:

# For the following, use the members table
# * Using the functions: mutate and str_detect, create a new variable in the peaks data set called is_leader
#   This variable will be TRUE if the word "Leader" appears in the expedition_role and FALSE otherwise
#   filter the leaders and save the result to a new table called leaders.
# * How many leaders are documented in the data?
# * Do the same for the word "Doctor" and save it to a new tabel called doctors.
# * Are there any Leaders who are also Doctors? How many?
# * How many doctors died climbing the Himalayans?

# For the following use the expeditions table
# * Using the functions `mutate` and `cut` to create a new variable called decade
#   The decade should show the expedition year with breaks of:
#   up to 50s, 60s, 70s, 80s, 90s, 2000s, 2010, 2020.
#
# * Use this new variable to count how many expeditions went out in each decade

# Exercise 4 --------------------------------------------------------------

# You would like to climb a peak in the Himalayan which is above 8000m.
# * Create a list of these peaks using the peaks table. 
#   Store them in a vector called top_peaks (use `pull` to do that).

# You have decided you will hire a trekking agency which is one of the top 10 agencies 
#    (in terms of number of expeditions)
# * Use the expeditions table to decide Which agencies are there on your list. 
#   Store them in a vector called popular_trekking_agencies

# Other than choosing a popular trekking company, you also care about safety.
#  * Use mutate to calculate the proportion of member deaths (out of the expeditions total number of participants)
#  * Filter to the selected trekking agencies and peaks obtained in the previous steps.
#  * Calculate the average proportion of deaths (using group_by, summarize, and mean).

#  * Which trekking company would you use?

#  * Discuss: do you see any problems with the data? do you trust this analysis?
#  * What would you change in this analysis to make sure your results are more reliable?

# Exercise 5 --------------------------------------------------------------

# * Using the expeditions table and the `mutate` and `case_when` functions, create a new variable called `termination_clust`.
#   This variable should be based on termination_reason, but limited to 5 possible values instead of 15 
#   (e.g. Success, Accident, Bad Weather, Lack, Other)
#
# * Using count, and pivot_? (replace ? with wider or longer) create a new table with:
#   Each peak has its own case (row)
#   Each column is a termination_reason
#   Each cell has the number of expeditions on that peak with the respective clustered termination reason (based on your termination_clust)

# Exercise 6 --------------------------------------------------------------

# * Create a new table by joining expeditions and peaks which will contain:
# From expeditions peak_id, peak_name, year, season, highpoint_metres
# From peaks height_metres
# For this you will need to use ?_join (replace ? with full/right/left)

# * Calculate the median and mean gap between the peak height and the highpoint the expedition reached grouped by peak
#   You will need mutate, group_by, summarize, median, and mean