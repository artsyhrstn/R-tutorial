# Aktivitas Sandbox
# 1. Menginstall Packages
install.packages("tidyverse")
library(tidyverse)

# 2. Melihat data
  # Memuat dataset diamonds
head(diamonds)

str(diamonds) # Memuat data secara horizontal
glimpse(diamonds)
colnames(diamonds) # Melihat hanya kolumnya saja secara horizontal

# 3. Cleaning Data
  # Mengganti nama variabel
rename(diamonds, carat_new = carat)
# mengganti nama (dataset, nama_baru = nama lama) # hanya di kode yang dijalankan saja
rename(diamonds, carat_new = carat, cut_new = cut) # hanya di kode yang dijalankan saja

  # Merangkum dataset
summarize(diamonds, mean_carat = mean(carat))
# Mencari mean (dataset, var_baru = mean(variabel_dicari_mean))

# 4. Visualisasi Data
ggplot(data = diamonds, aes(x = carat, y = price)) +
  geom_point()

ggplot(data = diamonds, aes(x = carat, y = price, color = cut)) +
  geom_point()

ggplot(data = diamonds, aes(x = carat, y = price, color = cut)) +
  geom_point() +
  facet_wrap(~cut) # Memisahkan keterdirian komponen

# Documentation
## Membuat markdown dengan dua tanda pagar

# Melihat packages yang sudah terinstall di lokal
installed.packages()

# Packages yang termasuk ke dalam R
  #1. Kode R yang bisa dipakai ulang 2. Tes untuk menggunka 2. dokumentasi untuk menggunakan fungsi 3. contoh dataset


##############################################################################
# PACKAGES
# Tidyverse = Tidyverse adalah kumpulan paket dalam R dengan filosofi desain yang umum. Paket-paket tidyverse sangat berguna untuk manipulasi, eksplorasi, dan visualisasi data.
tidyverse_update() # Melakukan update pada packages
update.packages() # Melakukan update untuk semua packages
installed.packages() # Melakukan list packages yang sudah terinstall

# vignette = guide untuk package R, membagikan detail tentang desain masalah yang termasuk fungsi 
browseVignettes(“ggplot2”)

# CRAN = (Comprehensive R Archive Network) CRAN adalah arsip online yang umum digunakan untuk menyimpan paket-paket R dan sumber daya R lainnya. CRAN memastikan bahwa sumber daya R yang dibagikannya mengikuti standar kualitas yang disyaratkan dan otentik serta valid.
