# 4 Hands On - Visualizing with ggplot

# 1. Install Packages
install.packages("ggplot2")
install.packages("palmerpenguins")

library(ggplot2)
library(palmerpenguins)

# 2. Load ggplot and dataset
library(ggplot2)
library(palmerpenguins)

data("penguins")
View(penguins)

# 3. Create Plot
ggplot(data = penguins) + geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g))

# ggplot(data = penguins) ; membuat sistem kordinat menggunakan data penguin
# + ; menambahkan layer ke plot
# geom_point() ; membuat scatterplot
# geom_bar() ; membuat grafik batang
# (mapping = aes(x = flipper_length_mm, y = body_mass_g)) ; mendefinisikan bagaimana variabel dalam dataset Anda dipetakan ke properti visual
#                                                           Argumen pemetaan selalu dipasangkan dengan fungsi aes(). Argumen x dan y dari fungsi aes() menentukan variabel mana yang akan dipetakan ke sumbu x dan sumbu y pada sistem koordinat. Dalam kasus ini, Anda ingin memetakan variabel "flipper_length_mm" ke sumbu x, dan variabel "body_mass_g" ke sumbu y.


