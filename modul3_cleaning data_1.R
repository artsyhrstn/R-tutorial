# Modul 3 - Cleaning Data
install.packages("here")
install.packages("skimr")
install.packages("janitor")
install.packages("dplyr")

library("skimr") # Makes sumarizing data
library("janitor") # Untuk melakukan cleaning data
library("dplyr")

read_csv() # Input file nama sendiri dalam kurung

# Memuat dataset penguin
install.packages("palmerpenguins")
library(palmerpenguins)

# Beberapa fungsi cleaning
skim_without_charts(penguins)
glimpse(penguins)
head(penguins)

# Menampilkan kolom tertentu
penguins %>%
  select(species)

penguins %>%
  select(-species) # selain kolom tertentu (-)

# Mengganti nama variabel (kolom)
penguins %>%
  rename(island_new=island)

rename_with(penguins,tolower) #toupper / tolower (janitor)

clean_names(penguins) # memastikan hanya karakter, nomor, dan underscore yang berada pada nama kolom

# ORGANIZE DATA
library(tidyverse)
penguins %>% arrange(bill_length_mm) # Mengurutkan sesuai dengan bill_length_mm (ascending)(-descending)

# 1. Membuat dataset baru dengan bill length descending
penguins2 <- penguins %>% arrange(-bill_length_mm)

# 2. Group by
library(tidyverse)
penguins %>% group_by(island) %>% drop_na() %>% summarize(mean_bill_length_mm = mean(bill_length_mm))

penguins %>% group_by(island) %>% drop_na() %>% summarize(max_bill_length_mm = max(bill_length_mm))

penguins %>% group_by(island, species) %>% drop_na() %>% summarize(max_bl = max(bill_length_mm), mean(bill_length_mm))

# 3. Filter
penguins %>% filter (species == "Adelie") %>% drop_na() # Hanya menampilkan spesies Adelie