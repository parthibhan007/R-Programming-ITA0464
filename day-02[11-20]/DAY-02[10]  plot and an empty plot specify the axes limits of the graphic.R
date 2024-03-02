vector <- c(1, 2, 3, 4)
character_vector <- c("apple", "banana", "orange")
logical_vector <- c(TRUE, FALSE, TRUE)
matrix1 <- matrix(1:4, nrow = 2)
matrix2 <- matrix(c("a", "b", "c", "d"), nrow = 2)
my_function <- function(x) {
  return(x^2)
}

my_list <- list(vector = vector,
                character_vector = character_vector,
                logical_vector = logical_vector,
                matrix1 = matrix1,
                matrix2 = matrix2,
                my_function = my_function)
print(my_list)
