Person <- function(name, age, gender) {
  person <- list(name = name,
                 age = age,
                 gender = gender)
  
  class(person) <- "Person"
  
  return(person)
}

print.Person <- function(x) {
  cat("Name: ", x$name, "\n")
  cat("Age: ", x$age, "\n")
  cat("Gender: ", x$gender, "\n")
}

person1 <- Person(name = "Alice", age = 30, gender = "Female")

print(person1)
