## Nama: Angga Ramadhan
## NIM: 3338250019
## Kelas: 3B
## Tugas 4 Mata Kuliah Komputasi Statistika

lambda <- 3
x <- 0:15
pmf <- dpois(x, lambda)
plot(x, pmf, type="h", 
     lwd=3, 
     main="Poisson(λ=3)", 
     xlab="k", 
     ylab="P(X=k)")

# P(X >= 5) = 1 - P(X <= 4)
p_ge5 <- 1 - ppois(4, lambda)
p_ge5


N <- 100   # total bola
K <- 20    # bola merah (sukses)
n <- 10    # ukuran sampel

k <- 0:min(n, K)
pmf <- dhyper(k, m = K, n = N - K, k = n)
data.frame(k = k, P = pmf)

plot(k, pmf, type="h", lwd=3,
     main=paste0("Hypergeometric(N=",N,", K=",K,", n=",n,")"),
     xlab="k (banyak bola merah terambil)", ylab="P(X=k)")

# Cek nilai harapan
mean_hyper <- n*K/N          # = 2
mean_hyper


set.seed(2025)
m <- 1000
n <- 15
p <- 0.4

samp <- rbinom(m, size=n, prob=p)

# Histogram hasil simulasi
hist(samp, breaks=seq(-0.5, n+0.5, 1), freq=FALSE,
     col="lightblue", main="Simulasi vs PMF Teoretis Binomial(15, 0.4)",
     xlab="Jumlah sukses (k)", ylab="Proporsi / P(X=k)")

# PMF teoretis
x <- 0:n
pmf_teori <- dbinom(x, size=n, prob=p)
lines(x, pmf_teori, type="h", col="red", lwd=2)
points(x, pmf_teori, col="red", pch=19)
legend("topright", legend=c("Simulasi", "Teoretis"), fill=c("lightblue", NA),
       col=c(NA, "red"), lty=c(NA,1), pch=c(NA,19))

mean(samp)          # rata-rata simulasi, ≈ 6.0
n*p                 # rata-rata teoretis