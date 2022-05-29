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

