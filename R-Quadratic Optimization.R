# R-Quadratic Optimization (Quadratic Programming
library(quadprog)
# Optimization
# min Q(x, y) : Q(x) = 1/2 [x, y][2 -1: -1 2][x:y] - [-3 2][x:y] + 4
# Subject to : y >= 2 - x ; y >= -2+x ; y <= 3

Dmat <- matrix(c(2, -1, -1, 2), nrow = 2, byrow = TRUE)
dvec <- c(-3, 2)
# quadprog required A^T x = b_o
# then we have to transpose  matrix coeff of x -> Amat
Amat <- t(matrix(c(1, 1, -1, 1, 0, -1), nrow = 3, byrow = TRUE))
bvec <- c(2, -2, -3)

sol  <- solve.QP(Dmat, dvec, Amat, bvec, meq = 0)
sol$solution
sol$value
sol$iterations
sol$Lagrangian