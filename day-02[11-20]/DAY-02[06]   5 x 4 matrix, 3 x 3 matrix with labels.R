matrix_5x4 <- matrix(1:20, nrow = 5, ncol = 4, byrow = TRUE,
                     dimnames = list(c("Row1", "Row2", "Row3", "Row4", "Row5"),
                                     c("Col1", "Col2", "Col3", "Col4")))
matrix_3x3 <- matrix(letters[1:9], nrow = 3, ncol = 3,
                     dimnames = list(c("Row1", "Row2", "Row3"),
                                     c("Col1", "Col2", "Col3")))
matrix_2x2 <- matrix(1:4, nrow = 2, ncol = 2, byrow = FALSE,
                     dimnames = list(NULL, c("Col1", "Col2")))
print("5x4 Matrix with Row Labels:")
print(matrix_5x4)

print("3x3 Matrix with Row and Column Labels:")
print(matrix_3x3)

print("2x2 Matrix with Column Labels:")
print(matrix_2x2)
