set.seed(123)

random_factor <- factor(sample(LETTERS, 20, replace = TRUE))

cat("Original Factor:\n")
print(random_factor)

selected_levels <- levels(random_factor)[1:5]

cat("\nSelected Levels:\n")
print(selected_levels)
