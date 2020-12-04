library(tidyverse)

global_mobility_trends_raw <- read_csv("../../Downloads/Global_Mobility_Report.csv")

global_mobility_trends <- global_mobility_trends_raw %>% 
  filter(is.na(sub_region_1) & is.na(sub_region_2)) %>% 
  select(country_region, date, 
         retail_and_recreation_percent_change_from_baseline:residential_percent_change_from_baseline) %>% 
  filter(country_region %in% c(
    "United Arab Emirates",
    "Argentina",
    "Bahrain",
    "Brazil",
    "Canada",
    "Switzerland",
    "Chile",
    "Germany",
    "Denmark",
    "France",
    "Greece",
    "Ireland",
    "Israel",
    "Italy",
    "Jordan",
    "Japan",
    "Lebanon",
    "Malta",
    "Mexico",
    "Peru",
    "Philippines",
    "Portugal",
    "Qatar",
    "Russia",
    "Turkey",
    "Ukraine",
    "United States",
    "Uruguay",
    "South Africa"
  )) %>% 
  rename_at(3:8, ~str_remove(., "_percent_change_from_baseline"))

write_csv(global_mobility_trends, "labs/Visualizing COVID19 Mobility Trends/global_mobility_trends.csv")  
