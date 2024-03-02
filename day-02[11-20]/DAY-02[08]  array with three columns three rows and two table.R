vector1 <- c(1, 2, 3)
vector2 <- c(4, 5, 6)
vector3 <- c(7, 8, 9)

matrix1 <- cbind(vector1, vector2, vector3)

matrix2 <- matrix(c(10, 11, 12, 13, 14, 15, 16, 17, 18), nrow = 3)
my_array <- array(c(matrix1, matrix2), dim = c(3, 3, 2),
                  dimnames = list(c("Row1", "Row2", "Row3"),
                                  c("Col1", "Col2", "Col3"),
                                  c("Table1", "Table2")))
print(my_array)
