# ==========================================================
# Tugas Eksplorasi Data - dataset airquality (bawaan R)
# Materi: 03-eksplorasi-data (SPADA UNTIRTA)
# ==========================================================

# ---- 0. Buka data ----------------------------------------
data(airquality)
str(airquality)
head(airquality)
summary(airquality)

# Wind tidak punya NA (NA hanya di Ozone dan Solar.R)
sum(is.na(airquality$Wind))
summary(airquality$Wind)

# ---- 1. Histogram Wind + density -------------------------
dens <- density(airquality$Wind)

hist(airquality$Wind,
     breaks = seq(0, 22, by = 2),
     probability = TRUE,
     ylim = c(0, max(dens$y) * 1.15),
     xlab = "Wind (mph)",
     main = "Histogram + Kurva Kepadatan: Wind")
lines(dens, col = "blue", lwd = 2)

# Peka terhadap breakpoints? Bandingkan dua pilihan breaks
par(mfrow = c(1, 2))
hist(airquality$Wind, breaks = seq(0, 22, by = 2),
     probability = TRUE, ylim = c(0, 0.15),
     xlab = "Wind (mph)", main = "Histogram A: breaks 0, 2, 4, ...")
lines(dens, col = "blue", lwd = 2)
hist(airquality$Wind, breaks = seq(1, 21, by = 2),
     probability = TRUE, ylim = c(0, 0.15),
     xlab = "Wind (mph)", main = "Histogram B: breaks 1, 3, 5, ...")
lines(dens, col = "blue", lwd = 2)
par(mfrow = c(1, 1))

# ---- 2. Boxplot dan stem-and-leaf ------------------------
boxplot(airquality$Wind,
        horizontal = TRUE,
        col = "lightblue",
        xlab = "Wind (mph)",
        main = "Boxplot: Wind")

# Nilai statistik lima serangkai dan pencilan
fivenum(airquality$Wind)
boxplot.stats(airquality$Wind)$out

# Diagram batang-daun
stem(airquality$Wind)

# ---- 3. Scatter plot -------------------------------------
# Ozone vs Temp (Ozone punya NA, jadi pakai kasus lengkap)
aq <- airquality[complete.cases(airquality$Ozone, airquality$Temp), ]

plot(Ozone ~ Temp, data = aq,
     xlab = "Temperature (F)",
     ylab = "Ozone (ppb)",
     main = "Scatter Plot: Ozone vs Temperature")
lines(lowess(aq$Temp, aq$Ozone), col = "red", lwd = 2)  # kurva lowess
rug(aq$Temp, side = 1)                                  # rug plot sumbu x
rug(aq$Ozone, side = 2)                                 # rug plot sumbu y

cor(aq$Temp, aq$Ozone)                       # Pearson
cor(aq$Temp, aq$Ozone, method = "spearman")  # Spearman

# Tambahan (opsional): Ozone vs Wind
aq2 <- airquality[complete.cases(airquality$Ozone, airquality$Wind), ]
plot(Ozone ~ Wind, data = aq2,
     xlab = "Wind (mph)", ylab = "Ozone (ppb)",
     main = "Scatter Plot: Ozone vs Wind")
lines(lowess(aq2$Wind, aq2$Ozone), col = "red", lwd = 2)
cor(aq2$Wind, aq2$Ozone)

# ---- (Opsional) simpan grafik ke file PNG -----------------
# png("hist_wind.png", width = 800, height = 600)
# ... kode plot ...
# dev.off()
