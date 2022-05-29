# 1
# Poin A (Mencari sd dari selisih data tabel)
x <- c(78, 75, 67, 77, 70, 72, 78, 74, 77)
y <- c(100, 95, 70, 90, 90, 90, 89, 90, 100)

sd(x - y)

# Poin B (Mencari nilai t(p-value))
t.test(x, y, paired = TRUE)

# Poin C
var.test(x, y)
t.test(x, y, mu = 0, alternative = "two.sided", var.equal = TRUE)

# 2
install.packages("BSDA")
library(BSDA)

# Poin A
# Setuju

# Poin B
zsum.test(mean.x = 23500, sigma.x = 3900, n.x = 100, alternative = "greater", mu = 20000)
# Output yang dihasilkan z = 8.9744, p-value < 2.2e-16 dengan true mean > 20.000 / H1 benar
# Dengan 95% confidence interval didapat rata-rata jarak infinit - 22858.51
# Dengan rata-rata 23.500

# Poin C
# Dari penjelasan poin b nilai p mendekati nol, sehingga H0 ditolak
# Dengan kesimpulan H1 diterima, yaitu mobil dikemudikan rata-rata lebih dari 20.000 km per tahun

# 3
# Poin A (nilai H0 dan H1)
H0 <- (3.64-0)/(1.67/sqrt(19))
H1 <- (2.79-0)/(1.32/sqrt(27))
print(H0)
print(H1)

# Poin B (hitung sampel statistik)
tsum.test(mean.x = 3.64, s.x = 1.67, n.x = 19, mean.y = 2.79, s.y = 1.32, n.y = 27
          , alternative = "greater", var.equal = TRUE)

# Poin C (uji statistik df=2)
curve(dt(x, df=2), from = -5, to = 5)

# Poin D (nilai kritikal)
kritikal = qchisq(p=0.05, df=2, lower.tail=FALSE)
kritikal

# Poin E (keputusan)
statistik = 3.64 + 2.79
kritikal > statistik
# h0 ditolak karena statistik > kritikal

# Poin F (kesimpulan)
# Tidak terdapat perbedaan rata-rata saham pada perusahaan di Bandung dan Bali


# 4
# Poin A (membuat 3 subjek grup dan gambar plot kuantil normal)
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

# Poin B (mencari homogeneity of variances)
bartlett.test(Length ~ Group, data = fileData)

# Poin C (Uji anova 1 arah)
m1 = lm(Length ~ Group, data = fileData)
anova(m1)

# Poin D (nilai p dan kesimpulan dari H0)
# Dari poin c, nilai p yang didapat sebesar 0.8054
# Kesimpulan H0 ditolak

# Poin E (post-hoc test Tukey HSD)
TukeyHSD(aov(m1))

# Poin F (visualisasi data dengan ggplot2)
install.packages("ggplot2")
library(ggplot2)
ggplot(fileData, aes(x = Group, y = Length)) + geom_boxplot(fill = "green", colour = "black") + 
  scale_x_discrete() + xlab("Treatment Group") +  ylab("Length (cm)")