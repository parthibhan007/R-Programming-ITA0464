exam_data <- data.frame(
  name = c('Anastasia', 'Dima', 'Katherine', 'James', 'Emily', 'Michael', 'Matthew', 'Laura', 'Kevin', 'Jonas'),
  score = c(12.5, 9, 16.5, 12, 9, 20, 14.5, 13.5, 8, 19),
  attempts = c(1, 3, 2, 3, 2, 3, 1, 1, 2, 1),
  qualify = c('yes', 'no', 'yes', 'no', 'no', 'yes', 'yes', 'no', 'no', 'yes')
)

new_exam_data <- data.frame(name = c('Robert', 'Sophia'), score = c(10.5, 9), attempts = c(1, 3), qualify = c('yes', 'no'))

combined_data <- rbind(exam_data, new_exam_data)

print(combined_data)
sorted_data <- combined_data[order(combined_data$name, combined_data$score), ]

print(sorted_data)
write.csv(sorted_data, "sorted_data.csv", row.names = FALSE)

file_content <- read.csv("sorted_data.csv")
print(file_content)
