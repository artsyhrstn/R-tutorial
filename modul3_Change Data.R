# Change Solution
# 1. Load Packages
install.packages("tidyverse")
install.packages("skimr")
install.packages("janitor")

library(tidyverse)
library(skimr)
library(janitor)

# 2. Import Data
hotel_bookings <- read_csv("hotel_bookings.csv")

# 3. Getting Know the Data
head(hotel_bookings)
str(hotel_bookings)
colnames(hotel_bookings)

hotel_bookings_city <- 
  filter(hotel_bookings, hotel_bookings$hotel=="City Hotel")

mean(hotel_bookings$lead_time)
mean(hotel_bookings_city$lead_time)

hotel_summary <- 
  hotel_bookings %>%
  group_by(hotel) %>%
  summarise(average_lead_time=mean(lead_time),
            min_lead_time=min(lead_time),
            max_lead_time=max(lead_time))

head(hotel_summary)