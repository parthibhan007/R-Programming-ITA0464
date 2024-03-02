matrix1 <- matrix(1:6, nrow = 2, byrow = TRUE)
matrix2 <- matrix(7:12, nrow = 2, byrow = TRUE)

combined_column <- cbind(matrix1, matrix2)

combined_row <- rbind(matrix1, matrix2)

cat("Matrix 1:\n")
print(matrix1)

cat("\nMatrix 2:\n")
print(matrix2)

cat("\nCombined Column-Wise:\n")
print(combined_column)

cat("\nCombined Row-Wise:\n")
print(combined_row)
