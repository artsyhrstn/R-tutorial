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