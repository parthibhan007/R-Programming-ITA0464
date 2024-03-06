vector1 <- c(1, 2, 3, 4, 5, 6, 7, 8, 9)
vector2 <- c(10, 11, 12, 13, 14, 15, 16, 17, 18)
your_array <- array(c(vector1, vector2), dim = c(3, 3, 2), dimnames = list(c("Row1", "Row2", "Row3"), c("Col1", "Col2", "Col3"), c("Matrix1", "Matrix2")))

print(your_array)

cat("\nSecond row of the second matrix:\n")
print(your_array["Row2", , "Matrix2"])

cat("\nElement in the 3rd row and 3rd column of the 1st matrix:\n")
print(your_array["Row3", "Col3", "Matrix1"])
