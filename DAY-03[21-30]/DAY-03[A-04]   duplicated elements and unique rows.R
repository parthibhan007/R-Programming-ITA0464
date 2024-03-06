a <- c(10, 20, 10, 10, 40, 50, 20, 30)
b <- c(10, 30, 10, 20, 0, 50, 30, 30)

df <- data.frame(a = a, b = b)

print("Duplicated elements:")
print(df[duplicated(df), ])

print("Unique rows:")
print(unique(df))
mean_b_by_a <- tapply(df$b, df$a, mean)

print("Mean of b with respect to a:")
print(mean_b_by_a)
