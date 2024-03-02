my_vector <- c(1, 2, 3, 4, 5)
my_data_frame <- data.frame(Name = c("John", "Jane", "Bob"), Age = c(25, 30, 22))
my_matrix <- matrix(1:9, nrow = 3, ncol = 3)
cat("Objects in Memory:\n")
print(ls())
cat("\nDetails of Objects:\n")
for (object_name in ls()) {
  cat("Object Name: ", object_name, "\n")
  cat("   Class: ", class(get(object_name)), "\n")
  cat("   Size: ", object.size(get(object_name)), "bytes\n\n")
}
