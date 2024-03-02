create_transaction <- function(amount, date, description) {
  transaction <- list(amount = amount,
                      date = as.Date(date, format = "%d/%m/%Y"),
                      description = description)
  
  class(transaction) <- "transaction"
  
  return(transaction)
}

print.transaction <- function(x) {
  cat("Amount: ", x$amount, "\n")
  cat("Date: ", x$date, "\n")
  cat("Description: ", x$description, "\n")
}

transaction1 <- create_transaction(500000, "12/07/2000", "Computers")
transaction2 <- create_transaction(200000, "13/08/2000", "Software")
transaction3 <- create_transaction(100000, "14/09/2000", "Home Product")

print(transaction1)
print(transaction2)
print(transaction3)
