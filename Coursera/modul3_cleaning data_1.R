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


# ------- TRANSFORMING DATA ----------

# Membuat dataframe
id <- c(1:10)
name <- c("John Mendes", "Rob Stewart", "Rachel Abrahamson", "Christy Hickman", "Johnson Harper", "Candace Miller", "Carlson Landy", "Pansy Jordan", "Darius Berry", "Claudia Garcia")
job_title <- c("Professional", "Programmer", "Management", "Clerical", "Developer", "Programmer", "Management", "Clerical", "Developer", "Programmer")
employee <- data.frame(id, name, job_title)

print(employee)

# 1. separate()
separate(employee, name, into = c("first_name", "last_name"), sep=' ')

# 2. unite()
first_name <- c("John", "Rob", "Rachel", "Christy", "Johnson", "Candace", "Carlson", "Pansy", "Darius", "Claudia")

last_name <- c("Mendes", "Stewart", "Abrahamson", "Hickman", "Harper", "Miller", "Landy", "Jordan", "Berry", "Garcia")

job_title <- c("Professional", "Programmer", "Management", "Clerical", "Developer", "Programmer", "Management", "Clerical", "Developer", "Programmer")

employee <- data.frame(id, first_name, last_name, job_title)

print(employee)
unite(employee, 'Name', first_name, last_name, sep=' ')

# 3. mutate()
# Membuat variabel baru dalam dataframe menggunakan mutate, menambahkan kolom dengan perhitungan kalkulasi

view(penguins)

penguins %>%
  mutate(body_mass_kg = body_mass_g/1000, flipper_length_m = flipper_length_mm/1000)  %>% drop_na()
