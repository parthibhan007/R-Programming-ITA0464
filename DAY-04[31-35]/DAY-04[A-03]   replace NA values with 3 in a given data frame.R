exam_data <- data.frame(
  name = c('Anastasia', 'Dima', 'Katherine', 'James', 'Emily', 'Michael', 'Matthew', 'Laura'),
  score = c(12.5, 9, 16.5, 12, 9, 20, 14.5, 13.5),
  attempts = c(1, NA, 2, NA, 2, NA, 1, 1),
  qualify = c('yes', 'no', 'yes', 'no', 'no', 'yes', 'yes', 'no')
)

exam_data$attempts[is.na(exam_data$attempts)] <- 3

sorted_data <- exam_data[order(exam_data$score), ]

print("Sorted Data Frame:")
print(sorted_data)

qualified_first_attempt <- subset(exam_data, qualify == "yes" & attempts == 1)
average_score <- mean(qualified_first_attempt$score, na.rm = TRUE)

print("Average Score of Those Who Qualified in First Attempt:")
print(average_score)
