# PRAKTIKUM PROBSTAT MODUL1 2022 KELAS D 

#### Nama    : Kurnia Cahya Febryanto
#### NRP     : 5025201073
#### Kelas   : Probabilitas dan Statistik D

</br>

## PENJELASAN 
### Nomor 1 
Seorang peneliti melakukan penelitian mengenai pengaruh aktivitas 𝐴 terhadap kadar saturasi oksigen pada manusia. Peneliti tersebut mengambil sampel sebanyak 9 responden. Pertama, sebelum melakukan aktivitas 𝐴, peneliti mencatat kadar saturasi oksigen dari 9 responden tersebut. Kemudian, 9 responden tersebut diminta melakukan aktivitas 𝐴. Setelah 15 menit, peneliti tersebut mencatat kembali kadar saturasi oksigen dari 9 responden tersebut. Berikut data dari 9 responden mengenai kadar saturasi oksigen sebelum dan sesudah melakukan aktivitas 𝐴

![soal 1](https://user-images.githubusercontent.com/70510279/170801862-fb8feada-e470-4bdd-90c8-2b1b050563ca.jpg)

Berdasarkan data pada tabel diatas, diketahui kadar saturasi oksigen dari responden ke-3 ketika belum melakukan aktivitas 𝐴 sebanyak 67, dan setelah melakukan aktivitas 𝐴 sebanyak 70.

#### 1a
Carilah Standar Deviasi dari data selisih pasangan pengamatan tabel diatas

</br>

Langkah pertama penyelesaian adalah memasukkan semua data yang ada pada tabel pada sebuah variabel sebagai berikut
```
before <- c(78, 75, 67, 77, 70, 72, 28, 74, 77)
```
```
after <- c(100, 95, 70, 90, 90, 90, 89, 90, 100)
```
Setelah dimasukkan semua datanya, maka dilakukan cek data menggunakan `data.frame` yaitu
```
my_data <- data.frame(
    group = rep(c("sebelum", "sesudah"), each = 9),
    saturation = c(before, after)
)
```
Setelah itu dilihat hasil framenya sebagai berikut
```
print(my_data)
```
![1a-1](https://user-images.githubusercontent.com/70510279/170801700-5a72cc8a-a5e8-4331-9466-534b5adba1b0.jpg)

Selanjutnya mencari standar deviasinya. Standar deviasi sebelum aktivitas adalah
```
SD_before <- sd(before)
SD_before
```
Maka hasilnya : 
</br>
![1a-2](https://user-images.githubusercontent.com/70510279/170802086-33f51947-7316-4eb1-a173-8b27355b2c21.jpg)
</br>

Standar deviasi setelah aktivitas adalah
```
SD_after <-sd(after)
SD_after
```
Maka hasilnya : 
</br>
![1a-3](https://user-images.githubusercontent.com/70510279/170802089-d7e550cd-e308-41a0-9881-dee36fcec0f8.jpg)

#### 1b
carilah nilai t (p-value)

</br>

Untuk mencari nilai t terutama p-value maka bisa menggunakan fungsi `t.test` yaitu sebagai berikut
```
t.test(before, after, alternative = "greater", var.equal = FALSE)
```
Maka hasilnya adalah: 
</br>

![1b](https://user-images.githubusercontent.com/70510279/170802497-1c8e11ec-b849-46df-970c-ae7a53990355.jpg)

#### 1c
tentukanlah apakah terdapat pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen, sebelum dan sesudah melakukan aktivitas 𝐴 jika diketahui tingkat signifikansi 𝛼 = 5% serta H0 : “tidak ada pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen , sebelum dan sesudah melakukan aktivitas 𝐴”

</br>

Langkah pertama yaitu melihat hasil komparasi dua variabel berikut
```
var.test(before, after)
```
![1c-1](https://user-images.githubusercontent.com/70510279/170803286-8d17ff49-ab43-4c8d-b68f-8252e50de12c.jpg)

</br>

Selanjutnya, untuk melihat pengaruh jika tingkat signifikasi 5% dan tidak ada pengaruh yang signifikan secara statistika, maka adalah sebagai berikut
```
t.test(before, after, var.equal = TRUE)
```
![1c-2](https://user-images.githubusercontent.com/70510279/170803288-c8b36ba6-954b-49b3-83e1-51e6236efe74.jpg)

</br>

Bisa dilihat bahwa mean dan convidence sama dengan 1b, yang berbeda adalah p-value dan df. Sehingga tidak memiliki pengaruh yang signifikan secara statistika

### Nomor 2
Diketahui bahwa mobil dikemudikan rata-rata lebih dari 20.000 kilometer per tahun. Untuk menguji klaim ini, 100 pemilik mobil yang dipilih secara acak diminta untuk mencatat jarak yang mereka tempuh. Jika sampel acak menunjukkan rata-rata 23.500 kilometer dan standar deviasi 3900 kilometer. (Kerjakan menggunakan 2 library seperti referensi pada modul).

#### 2a
Apakah Anda setuju dengan klaim tersebut?

*Setuju*

#### 2b
Jelaskan maksud dari output yang dihasilkan!

![2c](https://user-images.githubusercontent.com/70510279/170825033-001339b6-b1c3-42ab-b928-162ead8d4fbe.jpg)

Diketahui n = 100, Rata-Rata (X̄) = 23500, dan standar deviasi(σ) = 3900
Maka null hipotesis adalah 
```
H0 : μ = 20000
```
Alternatif hipotesisnya yaitu
```
H1 : μ > 20000
```

#### 2c
Buatlah kesimpulan berdasarkan P-Value yang dihasilkan!


Untuk mencari nilai z nya yaitu 
</br>
![image-removebg-preview](https://user-images.githubusercontent.com/70510279/170823253-92e9ca27-09f7-4d40-a51c-9fd4392bb742.png)

Lalu mencari nilai p-value nya sebagai berikut
![image-removebg-preview (1)](https://user-images.githubusercontent.com/70510279/170823313-044b2776-38ff-49d4-bca6-455ef75db0a5.png)
![image-removebg-preview (2)](https://user-images.githubusercontent.com/70510279/170823338-3d86d1f2-14dc-458c-af6a-eb06f0fd8333.png)

Sehingga kesimpulan yang didapat adalah bahwa mobil dikemudikan rata-rata lebih dari 20.000 kilometer per tahun

### Nomor 3
Diketahui perusahaan memiliki seorang data analyst ingin memecahkan permasalahan pengambilan keputusan dalam perusahaan tersebut. Selanjutnya didapatkanlah data berikut dari perusahaan saham tersebut.
</br>
![image](https://user-images.githubusercontent.com/70510279/170834251-73d308da-69c9-4e86-b2b8-4917e598efae.png)
Dari data diatas berilah keputusan serta kesimpulan yang didapatkan dari hasil diatas. Asumsikan nilai variancenya sama, apakah ada perbedaan pada rata-ratanya (α= 0.05)? Buatlah :

#### 3a
H0 dan H1
dilakukan perhitungan H0 sebagai berikut
</br>
![image](https://user-images.githubusercontent.com/70510279/170837176-254c2846-c1b7-47c0-aa9f-c3b2e5db149a.png)
</br>
dilakukan perhitungan H1 sebagai berikut
</br>
![image](https://user-images.githubusercontent.com/70510279/170837297-542b8a9e-309b-41be-92c5-880e284beef4.png)

#### 3b
Hitung Sampel Statistik
Penghitungan dilakukan sebagai berikut
```
tsum.test(mean.x=3.64, s.x = 1.67, n.x = 19, mean.y =2.79 , s.y = 1.32, n.y = 27, alternative = "greater", var.equal = TRUE)
```
![image](https://user-images.githubusercontent.com/70510279/170847031-6d2d82a4-dad1-4e70-b204-5782eb790bf7.png)


#### 3c
Lakukan Uji Statistik (df =2)

Melakukan install library `mosaic`
```
install.packages("mosaic")
library(mosaic)
```

```
plotDist(dist='t', df=2, col="blue")
```
![image](https://user-images.githubusercontent.com/70510279/170845594-721682ce-705c-4423-b6e2-5d3ad48e10cf.png)

#### 3d
Nilai kritikal
Adapun untuk mendapatkan nilai kritikal bisa menggunakan `qchisq` dengan `df=2` sesuai soal sebelumnya

![image](https://user-images.githubusercontent.com/70510279/170846422-617fe5b8-b90c-4e5a-9533-dfec22c62ff3.png)

#### 3e
Keputusan

Teori keputusan adalah teori formal pengambilan keputusan di bawah ketidakpastian. 
Aksinya adalah : `({a}_{a∈A})`
Kemungkinan konsekuensi : `({c}_{c∈C})` (tergantung pada keadaan dan tindakan)
Maka keputusan dapat dibuat dengan `t.test`

#### 3f
Kesimpulan
Kesimpulan yang didapatkan yaitu perbedaan rata-rata yang terjadi tidak ada jika dilihat dari uji statistik dan akan ada tetapi tidak signifikan jika dipengaruhi nilai kritikal.

### Nomor 4
Seorang Peneliti sedang meneliti spesies dari kucing di ITS . Dalam penelitiannya ia mengumpulkan data tiga spesies kucing yaitu kucing oren, kucing hitam dan kucing putih dengan panjangnya masing-masing.
Jika : diketahui dataset https://intip.in/datasetprobstat1
H0 : Tidak ada perbedaan panjang antara ketiga spesies atau rata-rata panjangnya sama. Maka Kerjakan atau Carilah:
#### 4a
Buatlah masing masing jenis spesies menjadi 3 subjek "Grup" (grup 1,grup 2,grup 3). Lalu Gambarkan plot kuantil normal untuk setiap kelompok dan lihat apakah ada outlier utama dalam homogenitas varians.
</br>
Langkah pertama mengambil data dari link yang telah disediadakan

```
myFile  <- read.table(url("https://rstatisticsandresearch.weebly.com/uploads/1/0/2/6/1026585/onewayanova.txt")) 
dim(myFile)
head(myFile)
```

Selanjutnya membuat myFile menjadi group 
```
myFile$Group <- as.factor(myFile$Group)
myFile$Group = factor(myFile$Group,labels = c("Kucing Oren","Kucing Hitam","Kucing Putih"))
```

Setelah itu, dicek apakah dia menyimpan nilai di groupnya
```
class(myFile$Group)
```

Lalu bagi tiap valuer menjadi 3 bagian ke 3 grup
```
group1 <- subset(myFile, Group=="Kucing Oren")
group2 <- subset(myFile, Group=="Kucing Hitam")
group3 <- subset(myFile, Group=="Kucing Putih")
```
#### 4b
carilah atau periksalah Homogeneity of variances nya , Berapa nilai p yang didapatkan? , Apa hipotesis dan kesimpulan yang dapat diambil ?

Mencari Homogeneity of variances bisa menggunakan command sebagai berikut
```
bartlett.test(Length~Group, data=dataoneway)
```
Setelah di jalankan maka nilai p-value = 0.8054. 
Kesimpulan yang didapatkan yaitu Bartlett's K-squared memiliki nilai sebesar 0.43292 dan df bernilai 2
#### 4c

```
qqnorm(group1$Length)
qqline(group1$Length)
```

![image](https://user-images.githubusercontent.com/70510279/170848819-3b70668f-ba55-4d57-b297-a14cb7d7218a.png)

#### 4d
Dari Hasil Poin C, Berapakah nilai-p ? , Apa yang dapat Anda simpulkan dari H0?
Setelah di jalankan maka nilai p-value = 0.8054. 

#### 4e
Verifikasilah jawaban model 1 dengan Post-hoc test Tukey HSD, dari nilai p yang didapatkan apakah satu jenis kucing lebih panjang dari yang lain? 3 Jelaskan.
Langkah pertama adalah menggunakan command ANOVA
```
model1 <- lm(Length~Group, data=myFile)
```
Selanjutnya menggunakan command 
```
anova(model1)
```
Lalu menggunakan model Post-hoc Tukey HSD sebagai berikut
```
TukeyHSD(aov(model1))
```

#### 4f
Visualisasikan data dengan ggplot2
```
library(ggplot2)
ggplot(dataoneway, aes(x = Group, y = Length)) + geom_boxplot(fill = "grey80", colour = "black") + scale_x_discrete() + xlab("Treatment Group") +  ylab("Length (cm)")
```


### Nomor 5
#### 5a