set.seed(123)

matrix_data <- matrix(sample(1:100, 12, replace = TRUE), nrow = 3, ncol = 4, byrow = TRUE)
colnames(matrix_data) <- c("uno", "dos", "tres", "cuatro")
rownames(matrix_data) <- c("x", "y", "z")

scaled_matrix <- matrix_data * 10

cat("Original Matrix:\n")
print(matrix_data)

cat("\nScaled Matrix:\n")
print(scaled_matrix)
