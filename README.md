# P2_Probstat_D_5025201109
Praktikum 1 Probstat D

## Soal 1
Diberikan data seperti berikut:

![Cuplikan layar 2022-05-29 224328](https://user-images.githubusercontent.com/83849481/170878251-7a9296ed-5155-464d-93c6-a71bed3cb0d2.png)
### A. Carilah standar deviasi dari data selisih pasangan pengamatan tabel di atas
Solusi dari poin A kita memasukkan terlebih dahulu data dari tabel
```
x <- c(78, 75, 67, 77, 70, 72, 78, 74, 77)
y <- c(100, 95, 70, 90, 90, 90, 89, 90, 100)
```  

Kemudian kita menggunakan `sd()`
```
sd(x - y)
```
Sehingga didapatkan hasil sebagai berikut:

![Cuplikan layar 2022-05-29 225614](https://user-images.githubusercontent.com/83849481/170878952-227964d2-b43f-459a-bb7f-9fcfe8f2adc2.png)

### B. Carilah nilai t(p-value)
Untuk poin B dapat menggunakan `t.test`
```
t.test(x, y, paired = TRUE)
```
Sehingga didapatkan hasil sebagai berikut:

![Cuplikan layar 2022-05-29 230130](https://user-images.githubusercontent.com/83849481/170879269-69991c48-c232-48bc-a491-001067bd2d6d.png)

### C. Apakah terdapat pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen , sebelum dan sesudah melakukan aktivitas 𝐴 jika diketahui tingkat signifikansi 𝛼 = 5% serta H0 : “tidak ada pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen , sebelum dan sesudah melakukan aktivitas 𝐴”
Solusi poin C melihat komparasi x dan y terlebih dahulu dengan:
```
var.test(x, y)
```

![Cuplikan layar 2022-05-29 230451](https://user-images.githubusercontent.com/83849481/170879414-c1c1a47b-424a-40b6-adc6-bde9e2ac9cfe.png)

Kemudian untuk melihat pengaruh jika tingkat signifikasi 5% dan tidak ada pengaruh yang signifikan secara statistika
```
t.test(x, y, mu = 0, alternative = "two.sided", var.equal = TRUE)
```

![Cuplikan layar 2022-05-29 230702](https://user-images.githubusercontent.com/83849481/170879546-f44de1bb-28b5-4b4c-a3d6-3f0636b62ded.png)

Karena nilai p lebih kecil dari nilai tingkat signifikansinya. Maka H0 "Tidak ada pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen , sebelum dan sesudah melakukan aktivitas 𝐴" salah

## Soal 2
Diketahui bahwa mobil dikemudikan rata-rata lebih dari 20.000 kilometer per tahun. Untuk menguji klaim ini, 100 pemilik mobil yang dipilih secara acak diminta untuk
mencatat jarak yang mereka tempuh. Jika sampel acak menunjukkan rata-rata 23.500 kilometer dan standar deviasi 3900 kilometer.

### A. Apakah Anda setuju dengan klaim tersebut?
Setuju, karena kesimpulan dari uji z yang telah dilakukan mendapatkan hasil menolak H0, sehingga mobil dikemudikan rata-rata lebih dari 20000 kilometer per tahun.

### B. Jelaskan maksud dari output yang dihasilkan!
Dari soal dapat diketahui bahwa n = 100, sampel acak rata-rata = 23500, dan standar devias = 3900.
Sehingga diketahui null hipotesis adalah:
`H0 : μ = 20000`
Alternatif hipotesisnya yaitu:
`H1 : μ > 20000`
Kemudian dapat dengan solusi berikut:
```
zsum.test(mean.x = 23500, sigma.x = 3900, n.x = 100, alternative = "greater", mu = 20000)
```
Didapatkan hasil sebagai berikut:

![Cuplikan layar 2022-05-29 231557](https://user-images.githubusercontent.com/83849481/170879973-ca34ea9b-8b83-4071-a621-07de4c5886cf.png)

Output yang dihasilkan z = 8.9744, p-value < 2.2e-16 dengan true mean > 20.000 / H1 benar. Dengan 95% confidence interval didapat rata-rata jarak infinit - 22858.51, dan rata-rata 23.500

### C. Buatlah kesimpulan berdasarkan P-Value yang dihasilkan!
Dari penjelasan poin b nilai p mendekati nol, sehingga H0 ditolak. Dengan kesimpulan H1 diterima, yaitu mobil dikemudikan rata-rata lebih dari 20.000 km per tahun

## Soal 3
Diberikan data seperti berikut:

![Cuplikan layar 2022-05-29 231830](https://user-images.githubusercontent.com/83849481/170880110-3e0a6c0b-6821-4ee3-9959-a696bd2295ed.png)

### A. Buatlah : H0 dan H1
Dapat menggunakan rumus berikut:
```
H0 <- (3.64-0)/(1.67/sqrt(19))
H1 <- (2.79-0)/(1.32/sqrt(27))
print(H0)
print(H1)
```
Sehingga didapatkan hasil H0 dan H1 sebagai berikut:

![Cuplikan layar 2022-05-29 231949](https://user-images.githubusercontent.com/83849481/170880294-511c201a-f090-40dc-8f08-c66da269a1cd.png)

### B. Hitung Sampel Statistik
Untuk menghitung sampel dari statistik dapat menggunakan `tsum.test` sebagai berikut:
```
tsum.test(mean.x = 3.64, s.x = 1.67, n.x = 19, mean.y = 2.79, s.y = 1.32, n.y = 27
          , alternative = "greater", var.equal = TRUE)
```
Dengan hasil sebagai berikut:

![Cuplikan layar 2022-05-29 232430](https://user-images.githubusercontent.com/83849481/170880451-b209f4b1-0666-4121-bb35-87a47a305081.png)

### C. Lakukan Uji Statistik (df =2)
Dapat menggunakan `curve()`
```
curve(dt(x, df=2), from = -5, to = 5)
```

![Cuplikan layar 2022-05-29 232558](https://user-images.githubusercontent.com/83849481/170880536-ddd3ebca-cb54-4498-aede-a164d2695f68.png)

### D. Nilai Kritikal
Dapat menggunakan `qchisq`
```
kritikal = qchisq(p=0.05, df=2, lower.tail=FALSE)
kritikal
```
Sehingga dihasilkan hasil berikut:

![Cuplikan layar 2022-05-29 232826](https://user-images.githubusercontent.com/83849481/170880653-1b448653-c61f-4acc-880e-452858f0086d.png)

### E. Keputusan
Karena nilai kritikal < dari statistik, maka H0 ditolak
```
statistik = 3.64 + 2.79
kritikal > statistik
```

![Cuplikan layar 2022-05-29 232949](https://user-images.githubusercontent.com/83849481/170880715-33af6826-b4d8-480a-8629-a4db1b65b3a7.png)

### F. Kesimpulan
Tidak terdapat perbedaan rata-rata saham pada perusahaan di Bandung dan Bali

## Soal 4
Diberikan dataset sebagai berikut: https://intip.in/datasetprobstat1

### A. Buatlah masing masing jenis spesies menjadi 3 subjek "Grup" (grup 1,grup 2,grup 3). Lalu Gambarkan plot kuantil normal untuk setiap kelompok dan lihat apakah ada outlier utama dalam homogenitas varians.
Dapat menggunakan solusi berikut, yaitu kita mengambil data terlebih dahulu dari link yang diberikan. Kemudian dilakukan pengelompokkan menjadi 3 grup dan terakhir disimpan dalam 3 variabel yang berbeda juga.
```
fileData <- read.table("https://rstatisticsandresearch.weebly.com/uploads/1/0/2/6/1026585/onewayanova.txt",h=T)
attach(fileData)
names(fileData)

fileData$Group <- as.factor(fileData$Group)
fileData$Group = factor(fileData$Group,labels = c("Group 1", "Group 2", "Group 3"))
class(fileData$Group)

Group1 <- subset(fileData, Group == "Group 1")
Group2 <- subset(fileData, Group == "Group 2")
Group3 <- subset(fileData, Group == "Group 3")

qqnorm(Group1$Length)
qqnorm(Group2$Length)
qqnorm(Group3$Length)

qqline(Group1$Length)
qqline(Group2$Length)
qqline(Group3$Length)
```
Sehingga menghasilkan hasil sebagai berikut:

![Cuplikan layar 2022-05-29 233625](https://user-images.githubusercontent.com/83849481/170881086-8ce1f7f9-88ab-4892-b4be-8fc38a0df626.png)

### B. Carilah atau periksalah Homogeneity of variances nya , Berapa nilai p yang didapatkan? , apa hipotesis dan kesimpulan yang dapat diambil?
Dengan cara berikut:
```
bartlett.test(Length ~ Group, data = fileData)
```
Didapatkan hasil output Bartlett's K-squared = 0.43292, df = 2, p-value = 0.8054

![Cuplikan layar 2022-05-29 233839](https://user-images.githubusercontent.com/83849481/170881212-8cc4dcf4-3ba0-4c47-b43b-15d0cec84314.png)

### C. Untuk uji ANOVA (satu arah), buatlah model linier dengan Panjang versus Grup dan beri nama model tersebut model 1.
```
m1 = lm(Length ~ Group, data = fileData)
anova(m1)
```

![Cuplikan layar 2022-05-29 233951](https://user-images.githubusercontent.com/83849481/170881265-f6bf9cf5-c034-4d1f-b24c-3a8e8be0d5a7.png)

### D. Dari Hasil Poin C, Berapakah nilai-p?, apa yang dapat Anda simpulkandari H0?
Dari poin c, nilai p yang didapat sebesar 0.8054. Kesimpulan H0 ditolak

### E. Verifikasilah jawaban model 1 dengan Post-hoc test Tukey HSD, dari nilai p yang didapatkan apakah satu jenis kucing lebih panjang dari yang lain?
```
TukeyHSD(aov(m1))
```

![Cuplikan layar 2022-05-29 234227](https://user-images.githubusercontent.com/83849481/170881402-00e539f8-0f14-4ba1-b371-606250dd13d1.png)

### F. Visualisasikan data dengan ggplot2

![Cuplikan layar 2022-05-29 234445](https://user-images.githubusercontent.com/83849481/170881517-490fe1e1-c3e5-4262-b1cf-a7a16bf2a1e5.png)
![Cuplikan layar 2022-05-29 234503](https://user-images.githubusercontent.com/83849481/170881532-11cb6932-7067-4b07-a505-b29070ba560f.png)

## Soal 5
Diberikan dataset sebagai berikut: (https://drive.google.com/file/d/1aLUOdw_LVJq6VQrQEkuQhZ8FW43FemTJ/view)
