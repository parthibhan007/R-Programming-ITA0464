# Load the Iris dataset
data(iris)

# (i) Find dimension, Structure, Summary statistics, Standard Deviation of all features
cat("Dimension of the dataset:\n")
print(dim(iris))

cat("\nStructure of the dataset:\n")
str(iris)

cat("\nSummary statistics of all features:\n")
print(summary(iris))

cat("\nStandard Deviation of all features:\n")
print(sapply(iris, sd))

# (ii) Find mean and standard deviation of features grouped by three species of Iris flowers
mean_by_species <- tapply(iris$Sepal.Length, iris$Species, mean)
sd_by_species <- tapply(iris$Sepal.Length, iris$Species, sd)

cat("\nMean of Sepal.Length grouped by Species:\n")
print(mean_by_species)

cat("\nStandard Deviation of Sepal.Length grouped by Species:\n")
print(sd_by_species)

# (iii) Find quantile value of sepal width and length
cat("\nQuantile values of Sepal.Width and Sepal.Length:\n")
print(quantile(iris$Sepal.Width))
print(quantile(iris$Sepal.Length))

# (iv) Create new data frame named iris1 with a new column named Sepal.Length.Cate
iris1 <- iris
iris1$Sepal.Length.Cate <- cut(iris1$Sepal.Length, breaks = quantile(iris1$Sepal.Length), labels = c("Q1", "Q2", "Q3", "Q4"))

# (v) Average value of numerical variables by two categorical variables: Species and Sepal.Length.Cate
cat("\nAverage value of numerical variables by Species and Sepal.Length.Cate:\n")
print(tapply(iris1[, c("Sepal.Length", "Sepal.Width", "Petal.Length", "Petal.Width")], list(iris1$Species, iris1$Sepal.Length.Cate), mean))

# (vi) Average mean value of numerical variables by Species and Sepal.Length.Cate
cat("\nAverage mean value of numerical variables by Species and Sepal.Length.Cate:\n")
print(aggregate(cbind(Sepal.Length, Sepal.Width, Petal.Length, Petal.Width) ~ Species + Sepal.Length.Cate, data = iris1, mean))

# (vii) Create Pivot Table based on Species and Sepal.Length.Cate
pivot_table <- table(iris1$Species, iris1$Sepal.Length.Cate)

cat("\nPivot Table based on Species and Sepal.Length.Cate:\n")
print(pivot_table)
