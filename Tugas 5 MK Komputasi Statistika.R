# Nama  : Angga Ramadhan
# NIM   : 3338250019
# Kelas : 3B
# Tugas 5 - Komputasi Statistika

# SOAL 1
# Rata-rata waktu tunggu mu = 5 menit. Berapa peluang P(X > 5)?
# (diasumsikan eksponensial, rate = 1/mu)
mu1 <- 5
p1 <- pexp(5, rate = 1/mu1, lower.tail = FALSE)
p1   # 0.3678794


# SOAL 2
# Kereta komuter tiba secara acak antara pukul 07.00 hingga 07.20
# (interval 20 menit). Berapakah ragam (varians) waktu tunggu
# penumpang? (seragam kontinu U(0, 20))
a <- 0
b <- 20
v2 <- (b - a)^2 / 12
v2   # 33.33333

# SOAL 3
# Masa pakai sensor suhu memiliki rata-rata mu = 10 tahun.
# Berapa peluang sensor rusak sebelum mencapai usia 5 tahun?
# (diasumsikan eksponensial, rate = 1/mu)
mu3 <- 10
p3 <- pexp(5, rate = 1/mu3)
p3   # 0.3934693

# SOAL 4
# Berat bersih kemasan kopi menyebar normal dengan mu = 250 gram
# dan sigma = 5 gram. Kemasan underweight jika beratnya kurang
# dari 240 gram. Berapa proporsi produk yang underweight?
p4 <- pnorm(240, mean = 250, sd = 5)
p4   # 0.02275013 (sekitar 2,28%)