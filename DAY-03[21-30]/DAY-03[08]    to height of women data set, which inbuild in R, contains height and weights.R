data(women)

height_factor <- cut(women$height, breaks = c(55, 60, 65, 70, 75), labels = c("Short", "Average", "Tall", "Very Tall"))

cat("Original Women Dataset:\n")
print(women)

cat("\nFactor Corresponding to Height:\n")
print(height_factor)
