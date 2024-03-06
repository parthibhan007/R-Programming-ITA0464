data_table1 <- matrix(1:12, nrow = 3)
data_table2 <- matrix(13:24, nrow = 3)
your_array <- array(c(data_table1, data_table2), dim = c(3, 4, 2), dimnames = list(c("Row1", "Row2", "Row3"), c("Col1", "Col2", "Col3", "Col4"), c("Table1", "Table2")))

print(your_array)
