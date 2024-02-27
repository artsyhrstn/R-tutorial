# Data Import (Basic)
data()
# Mencoba untuk memuat data mtcars (Motor Trend Car Road Tests)
data(mtcars)

#Install Package
install.packages("Rcpp")
library(readr)
readr_example()
read_csv(readr_example("mtcars.csv"))

# Memuat file excel
library(readxl)
readxl_example()
read_excel(readxl_example("type-me.xlsx"))

excel_sheets(readxl_example("type-me.xlsx"))
read_csv()

read_excel(readxl_example("type-me.xlsx"), sheet = "numeric_coercion")