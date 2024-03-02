get_unique_elements <- function(string) {
  unique_chars <- unique(strsplit(string, "")[[1]])
  return(unique_chars)
}
get_unique_numbers <- function(vector) {
  unique_nums <- unique(vector)
  return(unique_nums)
}
input_string <- "hellol"
input_vector <- c(1, 2, 3, 1, 2, 4, 5, 3)

unique_elements_string <- get_unique_elements(input_string)
unique_elements_vector <- get_unique_numbers(input_vector)

print("Unique elements of the string:")
print(unique_elements_string)

print("Unique numbers of the vector:")
print(unique_elements_vector)
