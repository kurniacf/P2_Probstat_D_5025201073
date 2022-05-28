# Soal 1
# 1a
# Carilah Standar Deviasi dari data selisih pasangan pengamatan tabel diatas

# Data Sebelum melakukan aktivitas
before <- c(78, 75, 67, 77, 70, 72, 28, 74, 77)

# Data Setelah melakukan aktivitas
after <- c(100, 95, 70, 90, 90, 90, 89, 90, 100)

# Cek data
my_data <- data.frame(
    group = rep(c("sebelum", "sesudah"), each = 9),
    saturation = c(before, after)
)

# Di print
print(my_data)

# Standar Devisiasi sebelum aktivitas
SD_before <- sd(before)
SD_before

# Standar Devisiasi setelah aktivitas
SD_after <-sd(after)
SD_after

# 1b
# carilah nilai t (p-value)

# Mencari nilai t(p-value) dengan t-test
t.test(before, after, alternative = "greater", var.equal = FALSE)

# 1c
# tentukanlah apakah terdapat pengaruh yang signifikan secara statistika
# dalam hal kadar saturasi oksigen , sebelum dan sesudah melakukan
# aktivitas ???? jika diketahui tingkat signifikansi ???? = 5% serta H0 : "tidak ada
# pengaruh yang signifikan secara statistika dalam hal kadar saturasi
# oksigen , sebelum dan sesudah melakukan aktivitas ????"

var.test(before, after)

t.test(before, after, var.equal = TRUE)

# Soal 2
# 2a

