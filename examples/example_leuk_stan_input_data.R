N <- 
  42 
NT <- 
  17
obs_t <- 
  c(1, 1, 2, 2, 3, 4, 4, 5, 5, 8, 8, 8, 8, 11, 11, 12, 12, 15, 
    17, 22, 23, 6, 6, 6, 6, 7, 9, 10, 10, 11, 13, 16, 17, 19, 20, 
    22, 23, 25, 32, 32, 34, 35) 
fail <-
  c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 
    1, 1, 1, 1, 0, 1, 0, 1, 0, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 
    0) 
Z <-
  c(0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 
    0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, -0.5, -0.5, -0.5, 
    -0.5, -0.5, -0.5, -0.5, -0.5, -0.5, -0.5, -0.5, -0.5, -0.5, -0.5, 
    -0.5, -0.5, -0.5, -0.5, -0.5, -0.5, -0.5) 
t <-
  c(1, 2, 3, 4, 5, 6, 7, 8, 10, 11, 12, 13, 15, 16, 17, 22, 23, 
    35) 

## transformed data 

Y = matrix(nrow = N, ncol = NT)
dN = matrix(nrow = N, ncol = NT)
for (i in 1:N) {
  for (j in 1:NT) {
    Y[i, j] <- ifelse(obs_t[i] - t[j] + .000000001 <= 0, 0, 1)
    dN[i, j] <- Y[i, j] * fail[i] * ifelse(t[j + 1] - obs_t[i] - .000000001 <= 0, 0, 1) 
  }
}

