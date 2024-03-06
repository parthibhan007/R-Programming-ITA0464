exam_data <- data.frame(
  name = c('Anastasia', 'Dima', 'Katherine', 'James', 'Emily', 'Michael', 'Matthew', 'Laura'),
  score = c(12.5, 9, 16.5, 12, 9, 20, 14.5, 13.5),
  attempts = c(1, 3, 2, 3, 2, 3, 1, 1),
  qualify = c('yes', 'no', 'yes', 'no', 'no', 'yes', 'yes', 'no')
)

sorted_df <- exam_data[order(exam_data$name, exam_data$score), ]

average_score <- tapply(exam_data$score, exam_data$qualify, mean)

print("Sorted data frame by name and score:")
print(sorted_df)

print("Average score based on qualify:")
print(average_score)
