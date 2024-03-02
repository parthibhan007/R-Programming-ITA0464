numeric_vector <- 1:6
complex_vector <- complex(real = 1:6, imaginary = 1:6)
logical_vector <- c(TRUE, FALSE, TRUE, FALSE, TRUE, FALSE)
character_vector <- c("apple", "banana", "cherry", "date", "elderberry", "fig")

print(numeric_vector)
print(complex_vector)
print(logical_vector)
print(character_vector)


given_list <- list(g1 = "item1", g2 = "item2", g3 = "item3")

given_list$g4 <- "R Prog"
print(given_list)
