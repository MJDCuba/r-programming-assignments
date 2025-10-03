A <- matrix(c(2, 0, 1, 3), ncol = 2)
B <- matrix(c(5, 2, 4, -1), ncol = 2)

A
B

A + B
A - B

D <- diag(c(4, 1, 2, 3))

D

E <- matrix(0, nrow = 5, ncol = 5)

E[1, ] <- 1

E[, 1] <- 2

diag(E) <- 3

E

