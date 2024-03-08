chicken_data <- data.frame(
  Time = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10),
  Diet = c(1, 2, 1, 2, 1, 2, 1, 2, 1, 2),
  Weight = c(5, 7, 6, 8, 7, 9, 8, 10, 9, 11)
)
print(chicken_data)

model <- lm(Weight ~ Time + Diet, data = chicken_data)

summary(model)

new_data <- data.frame(Time = 10, Diet = 1)
predicted_weight <- predict(model, newdata = new_data)
print(predicted_weight)

predicted_weights <- predict(model)
rmse <- sqrt(mean((chicken_data$Weight - predicted_weights)^2))
print(paste("Root Mean Squared Error:", rmse))


2.




library(reshape2)
summary(airquality)
melted_data <- melt(airquality)
print(melted_data)
melted_data <- melt(airquality, id.vars = c("Month", "Day"))
print(melted_data)
casted_data <- dcast(melted_data, Month + Day ~ variable)
print(casted_data)
monthly_avg <- dcast(melted_data, Month ~ variable, mean)
print(monthly_avg)


3.



# Load the iris dataset
data(iris)

set.seed(123)
sample_indices <- sample(1:nrow(iris), size = 0.8 * nrow(iris), replace = FALSE)
train_data <- iris[sample_indices, ]
test_data <- iris[-sample_indices, ]
library(glmnet)
model <- glm(Species ~ Petal.Width + Petal.Length, data = train_data, family = "binomial")
test_probabilities <- predict(model, newdata = test_data, type = "response")
predicted_class <- ifelse(test_probabilities > 0.5, "virginica", "not_virginica")
conf_matrix <- table(test_data$Species, predicted_class)
print(conf_matrix)

4.

col1 <- c(1, 2, 3)
col2 <- c(4, 5, 6)
col3 <- c(7, 8, 9)
col4 <- c(10, 11, 12)

my_array <- array(data = c(col1, col2, col3, col4), dim = c(3, 4, 2))
print(my_array)


                 SET -02



1.


exam_data <- data.frame(
  name = c('Anastasia', 'Dima', 'Katherine', 'James', 'Emily', 'Michael', 'Matthew', 'Laura', 'Kevin', 'Jonas'),
  score = c(12.5, 9, 16.5, 12, 9, 20, 14.5, 13.5, 8, 19),
  attempts = c(1, 3, 2, 3, 2, 3, 1, 1, 2, 1),
  qualify = c('yes', 'no', 'yes', 'no', 'no', 'yes', 'yes', 'no', 'no', 'yes')
)

print(exam_data)

2.


vector1 <- c(1, 2, 3, 4, 5)
vector2 <- c('a', 'b', 'c', 'd', 'e')
matrix1 <- matrix(1:9, nrow = 3, ncol = 3)
matrix2 <- matrix(letters[1:9], nrow = 3, ncol = 3)
my_function <- function(x) { return(x^2) }

my_list <- list(
  "vector1" = vector1,
  "vector2" = vector2,
  "matrix1" = matrix1,
  "matrix2" = matrix2,
  "my_function" = my_function
)

print(my_list)


3.




data("USArrests")
summary(USArrests)

features <- names(USArrests)
feature_types <- sapply(USArrests, class)
print("Number of Features and their Types:")
print(data.frame(Features = features, Type = feature_types))

print("Number of Records for Each Feature:")
print(sapply(USArrests, length))

print("Statistical Features of the Data:")
print(sapply(USArrests, function(x) c(mean(x), median(x), min(x), max(x))))

largest_rape_state <- rownames(USArrests)[which.max(USArrests$Rape)]
print("State with the Largest Total Number of Rape:")
print(largest_rape_state)

max_murder_state <- rownames(USArrests)[which.max(USArrests$Murder)]
min_murder_state <- rownames(USArrests)[which.min(USArrests$Murder)]
print("State with the Max Crime Rate for Murder:")
print(max_murder_state)
print("State with the Min Crime Rate for Murder:")
print(min_murder_state)

correlation_matrix <- cor(USArrests)
print("Correlation Matrix:")
print(correlation_matrix)

median_assault <- median(USArrests$Assault)
states_above_median_assault <- rownames(USArrests)[USArrests$Assault > median_assault]
print("States with Assault Arrests More Than Median of the Country:")
print(states_above_median_assault)

bottom_25_murder <- rownames(USArrests)[USArrests$Murder < quantile(USArrests$Murder, 0.25)]
print("States in the Bottom 25% of Murder:")
print(bottom_25_murder)

hist(USArrests$Murder, main = "Histogram of Murder Arrests", xlab = "Murder Arrests")
plot(density(USArrests$Murder), main = "Density Plot of Murder Arrests")

plot(USArrests$UrbanPop, USArrests$Murder, xlab = "Proportion Urban Population", ylab = "Murder Arrests", main = "Murder Arrests vs. Urban Population", col = "blue")
points(USArrests$UrbanPop, USArrests$Murder, col = heat.colors(n = length(USArrests$Assault))[rank(USArrests$Assault)], pch = 19)

barplot(USArrests$Murder, names.arg = rownames(USArrests), las = 2, main = "Murder Rate by State", xlab = "State", ylab = "Murder Rate")





#SET=03



numeric_vector <- c(1, 2, 3, 4, 5)
character_vector <- c("apple", "banana", "orange", "grape", "kiwi")
logical_vector <- c(TRUE, FALSE, TRUE, FALSE, TRUE)

print("Numeric Vector:")
print(numeric_vector)

print("Character Vector:")
print(character_vector)

print("Logical Vector:")
print(logical_vector)

print("Type of Numeric Vector:")
print(class(numeric_vector))

print("Type of Character Vector:")
print(class(character_vector))

print("Type of Logical Vector:")
print(class(logical_vector))




3.


data(women)

breaks <- c(50, 55, 60, 65, 70, 75)

height_factor <- cut(women$height, breaks = breaks, labels = c("Short", "Below Average", "Average", "Above Average", "Tall"))
print(height_factor)

4.


matrix_5x4 <- matrix(c(1:20), nrow = 5, ncol = 4, byrow = TRUE, dimnames = list(c("Row1", "Row2", "Row3", "Row4", "Row5"), c("Col1", "Col2", "Col3", "Col4")))
matrix_3x3 <- matrix(c(1:9), nrow = 3, ncol = 3, byrow = TRUE, dimnames = list(c("Row1", "Row2", "Row3"), c("Col1", "Col2", "Col3")))
matrix_2x2 <- matrix(c(1, 2, 3, 4), nrow = 2, ncol = 2, byrow = FALSE, dimnames = list(c("Row1", "Row2"), c("Col1", "Col2")))

print("Matrix 5x4:")
print(matrix_5x4)
print("Matrix 3x3:")
print(matrix_3x3)
print("Matrix 2x2:")
print(matrix_2x2)

             

                        SET-04

1.


values <- c(1, 2, 3, 4, 5, 6, 7, 8)
dimensions <- c(2, 2, 2)
dimnames_list <- list(
  c("row1", "row2"),
  c("col1", "col2"),
  c("depth1", "depth2")
)

my_array <- array(values, dim = dimensions, dimnames = dimnames_list)

print(my_array)



2.



data(airquality)

if(is.data.frame(airquality)) {
  print("airquality is a data frame.")
} else {
  print("airquality is not a data frame.")
}
ordered_airquality <- airquality[order(airquality$Month, airquality$Day), ]
print("Ordered Data Frame:")
print(ordered_airquality)
modified_airquality <- subset(ordered_airquality, select = -c(Solar.R, Wind))
print("Modified Data Frame:")
print(modified_airquality)






3...



data(ChickWeight)
ordered_chick_weight <- ChickWeight[order(ChickWeight$weight, ChickWeight$diet), ]
last_6_records <- tail(ordered_chick_weight, 6)
print("(i) Last 6 Records from Ordered Data Frame:")
print(last_6_records)
melted_data <- reshape2::melt(ChickWeight, id.vars = c("Chick", "Time", "Diet"))
print("(ii) a. Melted Data:")
print(melted_data)
casted_mean_data <- reshape2::dcast(melted_data, Diet ~ variable, mean)

print("(ii) b. Casted Data (Mean Value of Weight Grouped by Diet):")
print(casted_mean_data)
casted_mode_data <- reshape2::dcast(melted_data, Diet ~ variable, function(x) {
  table(x)[which.max(table(x))]
})
print("(ii) c. Casted Data (Mode of Weight Grouped by Diet):")
print(casted_mode_data)




4....


data(iris)

set.seed(123)

train_indices <- sample(1:nrow(iris), 0.8 * nrow(iris))
train_data <- iris[train_indices, ]
test_data <- iris[-train_indices, ]

library(nnet)

logistic_model <- multinom(Species ~ Petal.Width + Petal.Length, data = train_data)

predicted_probabilities <- predict(logistic_model, newdata = test_data, type = "probs")

predicted_classes <- colnames(predicted_probabilities)[apply(predicted_probabilities, 1, which.max)]

confusion_matrix <- table(test_data$Species, predicted_classes)

print("Confusion Matrix:")
print(confusion_matrix)




           SLOT  05
1..

set.seed(123)
sample_letters <- sample(LETTERS, 20)
sample_factor <- as.factor(sample_letters)
five_levels <- levels(sample_factor)[1:5]
print("Five levels of the factor:")
print(five_levels)



2..

set.seed(123)
sample_letters <- sample(LETTERS, 20)
sample_factor <- as.factor(sample_letters)
five_levels <- levels(sample_factor)[1:5]
print("Five levels of the factor:")
print(five_levels)



3...

set.seed(123)
random_integers <- sample(-50:50, 10, replace = TRUE)
print(random_integers)

4...


fizz_buzz <- function(num) {
  if (num %% 3 == 0 && num %% 5 == 0) {
    print("FizzBuzz")
  } else if (num %% 3 == 0) {
    print("Fizz")
  } else if (num %% 5 == 0) {
    print("Buzz")
  } else {
    print(num)
  }
}
for (i in 1:100) {
  fizz_buzz(i)
}



        SET-06


1..


find_factors <- function(num) {
  factors <- numeric(0)
  for (i in 1:num) {
    if (num %% i == 0) {
      factors <- c(factors, i)
    }
  }
  return(factors)
}
number <- 24
result <- find_factors(number)
print(paste("Factors of", number, "are:", result))


2..

set.seed(123)
random_numbers <- rnorm(100, mean = 0, sd = 1)  # Generate 100 random numbers with mean 0 and standard deviation 1
count_occurrences <- table(round(random_numbers, digits = 2))
print(count_occurrences)


3..

data(Titanic)
titanic_df <- as.data.frame(Titanic)
barplot(table(titanic_df$Class, titanic_df$Survived), beside = TRUE, col = c("red", "green"),
        main = "Survival of passengers based on Passenger Class",
        xlab = "Passenger Class", ylab = "Count", legend = c("Died", "Survived"))
barplot(table(titanic_df$Class, titanic_df$Survived, titanic_df$Gender), beside = TRUE, col = c("red", "green"),
        main = "Survival of passengers based on Passenger Class and Gender",
        xlab = "Passenger Class", ylab = "Count", legend = c("Male", "Female"), args.legend = list(x = "topright"))
hist(titanic_df$Age, breaks = seq(0, 100, by = 5), col = "skyblue", border = "black",
     main = "Distribution of Age of Titanic Passengers",
     xlab = "Age", ylab = "Frequency")




4,,




array1 <- matrix(1:4, nrow = 2, ncol = 2)
array2 <- matrix(5:8, nrow = 2, ncol = 2)
array3 <- matrix(9:12, nrow = 2, ncol = 2)
combined_array <- rbind(array1[1,], array2[1,], array3[1,])
print(combined_array)

            SET-07


1..


vector1 <- c(1, 2, 3, 4, 5, 6, 7, 8, 9)
vector2 <- c(9, 8, 7, 6, 5, 4, 3, 2, 1)
matrix1 <- matrix(vector1, nrow = 3, ncol = 3, byrow = TRUE)
matrix2 <- matrix(vector2, nrow = 3, ncol = 3, byrow = TRUE)
array <- array(c(matrix1, matrix2), dim = c(3, 3, 2))
print("Second row of the second matrix of the array:")
print(array[2, , 2])
print("Element in the 3rd row and 3rd column of the 1st matrix:")
print(array[3, 3, 1])


2...
vector1 <- c(1, 2, 3)
vector2 <- c(4, 5, 6)
vector3 <- c(7, 8, 9)
vector4 <- c(10, 11, 12)
vector5 <- c(13, 14, 15)
vector6 <- c(16, 17, 18)
matrix1 <- matrix(c(vector1, vector2, vector3), nrow = 3, byrow = TRUE)
matrix2 <- matrix(c(vector4, vector5, vector6), nrow = 3, byrow = TRUE)

array <- array(c(matrix1, matrix2), dim = c(3, 3, 2))
print(array)


3....


data(airquality)
mean_temp <- sum(airquality$Temp) / length(airquality$Temp)
print(paste("Mean temperature:", mean_temp))
first_five_rows <- airquality[1:5, ]
print("First five rows from airquality:")
print(first_five_rows)
airquality_subset <- airquality[, !(names(airquality) %in% c("Temp", "Wind"))]
print("Subset of airquality without Temp and Wind columns:")
print(airquality_subset)
coldest_day <- airquality[which.min(airquality$Temp), "Day"]
print(paste("Coldest day during the period:", coldest_day))
days_greater_than_17mph <- sum(airquality$Wind > 17, na.rm = TRUE)
print(paste("Number of days with wind speed greater than 17 mph:", days_greater_than_17mph))



4..

data <- data.frame(
  name = c("John", "Alice", "Bob", "Emily"),
  score = c(85, 92, 78, 90)
)
cat("Original Data Frame:\n")
print(data)
sorted_data <- data[order(data$name, data$score),]
cat("\nSorted Data Frame by Name and Score:\n")
print(sorted_data)

                  SET-08

1..
plot.new()
title(main = "Empty Plot")
plot(NA, xlim = c(0, 10), ylim = c(0, 10), type = "n")
title(main = "Empty Plot with Specified Axes Limits")


2..


values <- c(1, 2, 3, 4, 5, 6, 7, 8, 9)
dims <- c(3, 3, 1)  # Specify the dimensions as a vector

arr <- array(values, dim = dims, dimnames = list(
  c("Row1", "Row2", "Row3"),
  c("Col1", "Col2", "Col3"),
  c("Table1")
))

print(arr)



3...


data(airquality)

summary_stats <- summary(airquality)
print("(i) Summary Statistics of air quality dataset:")
print(summary_stats)

library(reshape2)
melted_data <- melt(airquality)
print("(iii) Melted airquality dataset (long-format data):")
print(head(melted_data))

melted_data_id <- melt(airquality, id.vars = c("Month", "Day"))
print("(iv) Melted airquality dataset with Month and Day as ID variables:")
print(head(melted_data_id))

casted_data <- dcast(melted_data_id, Month ~ Day)
print("(v) Casted airquality dataset with respect to month and date features:")
print(head(casted_data))

mean_ozone_by_month <- dcast(melted_data, Month ~ variable, mean)
print("(vi) Mean ozone concentration by month:")
print(mean_ozone_by_month)






                             SET-09
1..


data(women)
height_factor <- cut(women$height, breaks = c(50, 60, 70), labels = c("Short", "Medium", "Tall"))
print(height_factor)\


22,,


data("LETTERS")
set.seed(123)  # Set seed for reproducibility
sample_letters <- sample(LETTERS, 100, replace = TRUE)

sample_factor <- factor(sample_letters)
five_levels <- levels(sample_factor)[1:5]
print("Five levels of the factor:")
print(five_levels)


3..



vector1 <- c(1, 2, 3, 4, 5, 6, 7, 8, 9)
vector2 <- c(9, 8, 7, 6, 5, 4, 3, 2, 1)
matrix1 <- matrix(vector1, nrow = 3, ncol = 3, byrow = TRUE)
matrix2 <- matrix(vector2, nrow = 3, ncol = 3, byrow = TRUE)
array <- array(c(matrix1, matrix2), dim = c(3, 3, 2))
print("Second row of the second matrix of the array:")
print(array[2, , 2])
print("Element in the 3rd row and 3rd column of the 1st matrix:")
print(array[3, 3, 1])


4.. ALLREADY WRITEN


              SET-10






1.


# Load the USArrests dataset
data("USArrests")

# (i) a. Explore the summary of Dataset
# Get summary of the dataset
summary_data <- summary(USArrests)
cat("(i) Summary of Dataset:\n")
print(summary_data)

# (i) b. Print the state which saw the largest total number of rape
largest_rape_state <- names(which.max(USArrests$Rape))
cat("\n(i) b. State with largest total number of rape:", largest_rape_state, "\n")

# (i) c. Print the states with the max & min crime rates for murder
max_murder_state <- names(which.max(USArrests$Murder))
min_murder_state <- names(which.min(USArrests$Murder))
cat("\n(i) c. State with max crime rate for murder:", max_murder_state, "\n")
cat("(i) c. State with min crime rate for murder:", min_murder_state, "\n")

# (ii) a. Find the correlation among the features
correlation_matrix <- cor(USArrests)
cat("\n(ii) a. Correlation among the features:\n")
print(correlation_matrix)

# (ii) b. Print the states which have assault arrests more than median of the country
median_assault <- median(USArrests$Assault)
states_above_median_assault <- names(USArrests$Assault[USArrests$Assault > median_assault])
cat("\n(ii) b. States with assault arrests more than median of the country:\n")
print(states_above_median_assault)

# (ii) c. Print the states that are in the bottom 25% of murder
bottom_25_percent_murder <- names(USArrests$Murder[USArrests$Murder < quantile(USArrests$Murder, 0.25)])
cat("\n(ii) c. States in the bottom 25% of murder:\n")
print(bottom_25_percent_murder)

# (iii) a. Create a histogram and density plot of murder arrests by US state
hist(USArrests$Murder, main = "Histogram of Murder Arrests by US State", xlab = "Murder Arrests")

# Density plot
plot(density(USArrests$Murder), main = "Density Plot of Murder Arrests by US State", xlab = "Murder Arrests")

# (iii) b. Create the plot showing the relationship between murder arrest rate and proportion of the population that is urbanised by state
urban_population <- USArrests$UrbanPop
murder_arrests <- USArrests$Murder
assault_arrests <- USArrests$Assault

# Plotting
plot(urban_population, murder_arrests, col = heat.colors(length(urban_population)),
     main = "Relationship between Murder Arrest Rate and Urban Population",
     xlab = "Proportion of Population Urbanized", ylab = "Murder Arrests")
points(urban_population, assault_arrests, col = heat.colors(length(urban_population)), pch = 2)

# (iii) c. Draw a bar graph to show the murder rate for each of the 50 states
barplot(USArrests$Murder, names.arg = row.names(USArrests), main = "Murder Rate for Each US State",
        xlab = "State", ylab = "Murder Rate")








