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

