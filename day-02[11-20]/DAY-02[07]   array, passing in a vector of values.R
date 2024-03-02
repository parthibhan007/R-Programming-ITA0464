values <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12)
dimensions <- c(3, 2, 2)  # Represents a 3x2x2 array

my_array <- array(values, dim = dimensions, dimnames = list(c("Dim1", "Dim2", "Dim3"),
                                                           c("Col1", "Col2"),
                                                           c("Depth1", "Depth2")))
print(my_array)
