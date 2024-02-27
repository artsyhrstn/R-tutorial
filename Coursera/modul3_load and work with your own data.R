# Modul 3 - Import and Working with Data

# 1, Load Packages
install.packages("tidyverse")
library(tidyverse)

# 2. Import Data
# Menggunakan data article Hotel Booking Demand Datasets (https://www.sciencedirect.com/science/article/pii/S2352340918315191)

# Simpan data sebagai "bookings_df"
bookings_df <- read_csv("hotel_bookings.csv")

# 3, Inspect and Clean Data
head(bookings_df)
str(bookings_df)
colnames(bookings_df)

# Membuat data frame baru fokus pada average daily rate
new_df <- select(bookings_df, `adr`, adults)

# Membuat variabel baru dalam data frame 
mutate(new_df, total = `adr` / adults) # dalam data frame yang sama

# Import data sendiri dengan menggunakan
own_df <- read_csv("<filename.csv>")