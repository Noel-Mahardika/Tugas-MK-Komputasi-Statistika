## Nama: Angga Ramadhan
## NIM: 3338250019
## Kelas: 3B
## Mata Kuliah Komputasi Statistika
## Tugas: Manajemen Data dengan dataset iris

library(dplyr)

# Memuat dataset iris (sudah tersedia bawaan di R)
data(iris)
head(iris)


## 1. Tampilkan data Sepal.Length saja
iris$Sepal.Length
# alternatif:
iris[, "Sepal.Length"]


## 2. Sebutkan tipe data tiap kolom
str(iris)
# alternatif ringkas:
sapply(iris, class)


## 3. Buat variabel baru 'turunan' dari Sepal.Width
##    "Besar" jika Sepal.Width > 3, selain itu "Kecil"
iris <- iris %>%
  mutate(turunan = ifelse(Sepal.Width > 3, "Besar", "Kecil"))

# alternatif base R:
# iris$turunan <- ifelse(iris$Sepal.Width > 3, "Besar", "Kecil")

head(iris)


## 4. Ubah nama variabel 'turunan' menjadi 'sepal'
iris <- iris %>%
  rename(sepal = turunan)

# alternatif base R:
# names(iris)[names(iris) == "turunan"] <- "sepal"

head(iris)


## 5. Ambil data dengan sepal bernilai "Besar" dari species virginica
iris_virginica_besar <- iris %>%
  filter(sepal == "Besar", Species == "virginica")

# alternatif base R:
# iris_virginica_besar <- iris[iris$sepal == "Besar" & iris$Species == "virginica", ]

iris_virginica_besar


## 6. Cek jumlah species dalam data
table(iris$Species)
# jumlah kategori species yang unik:
length(unique(iris$Species))


## 7. Pecah data iris menjadi 3 data frame, tiap data frame
##    khusus untuk satu species
iris_setosa     <- iris[iris$Species == "setosa", ]
iris_versicolor <- iris[iris$Species == "versicolor", ]
iris_virginica  <- iris[iris$Species == "virginica", ]

# alternatif lebih ringkas dengan split() (hasil berupa list of data frame):
# iris_split <- split(iris, iris$Species)
# iris_setosa     <- iris_split$setosa
# iris_versicolor <- iris_split$versicolor
# iris_virginica  <- iris_split$virginica


## 8. Dari setiap data frame species, urutkan data berdasarkan
##    Sepal.Width
iris_setosa     <- iris_setosa[order(iris_setosa$Sepal.Width), ]
iris_versicolor <- iris_versicolor[order(iris_versicolor$Sepal.Width), ]
iris_virginica  <- iris_virginica[order(iris_virginica$Sepal.Width), ]

head(iris_setosa)
head(iris_versicolor)
head(iris_virginica)
