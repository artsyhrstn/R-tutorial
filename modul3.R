# Modul 3
# Data Frames = Koleksi data kolom
# data yang bersih merupakan 1. variabel terorganisir dalam sebuah kolom, observasi terorganisir dalam row, dan setiap value memiliki setiap sel masing masing

# Membuat data frame
# 1. Cek pada packages
library(tidyverse)

# 2. Membuat data frame
# create individual vectors of data and then combine them into a data frame using the `data.frame()` function.

names <- c("Andi", "Budi", "Tono", "Dani") # Membuat vektor nama (str)
age <- c(17, 20, 25, 30) # Membuat vektor umur (int)

people <- data.frame(names, age) # Membuat data frame (people)

# 3. Inspeksi data frame
head(people) # Menampilkan 5 teratas pada dataframe
glimpse(people) # Rangkuman dari dataframe

str(people)
colnames(people) # Untuk mendapatkan list nama kolom

# Mutate = membuat variabel dengan menambahkan operator tertentu (seperti "gen" dalam stata)
mutate(people, exp_age = age^2)

# 4. Try yourself
fruit <- c("Lemon", "Blueberry", "Grapefruit", "Mango", "Strawberry")
rank <- c(4, 2, 5, 3, 1)
fruit_ranks <- data.frame(fruit, rank)

glimpse(fruit)