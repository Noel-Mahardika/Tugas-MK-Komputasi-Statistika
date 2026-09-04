# Nama: Angga Ramadhan
# NIM: 3338250019
# Tugas 1 MK Komputasi Statistika


# 1. VEKTOR (numeric, integer, logical, character)
vec_numeric  <- c(12.5, 7.2, 9.8, 15.1, 3.3)
vec_integer  <- c(1L, 2L, 3L, 4L, 5L)
vec_logical  <- c(TRUE, FALSE, TRUE, TRUE, FALSE)
vec_char     <- c("Statistika", "Ekonomi", "Agribisnis", "Matematika", "Komputasi")

print(vec_numeric)
print(vec_integer)
print(vec_logical)
print(vec_char)

# 2. MATRIX 4x4
mat_4x4 <- matrix(1:16, nrow = 4, ncol = 4, byrow = TRUE)
print(mat_4x4)

# 3. ARRAY 4 DIMENSI
# Contoh: array dengan dimensi 2x2x2x2
arr_4d <- array(1:16, dim = c(2, 2, 2, 2))
print(arr_4d)

# 4. DATA FRAME (4 kolom: character, numeric, logical, logical)
df <- data.frame(
  Nama       = c("Andi", "Budi", "Citra", "Dewi"),
  Nilai      = c(85.5, 78.2, 90.1, 88.0),
  Lulus      = c(TRUE, TRUE, TRUE, TRUE),
  Beasiswa   = c(TRUE, FALSE, TRUE, FALSE)
)
print(df)
str(df)

# 5. LIST DENGAN 5 KOMPONEN
vec_baris  <- matrix(1:4, nrow = 1)        # vector baris (1x4)
vec_kolom  <- matrix(1:4, ncol = 1)        # vector kolom (4x1)

list_utama <- list(
  vector_baris   = vec_baris,
  vector_kolom   = vec_kolom,
  matrix_4x4     = mat_4x4,
  data_frame     = df,
  list_dalam     = list(
    matrix_4x4  = mat_4x4,
    array_4d    = arr_4d,
    data_frame  = df,
    vector_baris = vec_baris
  )
)

print(list_utama)
str(list_utama)