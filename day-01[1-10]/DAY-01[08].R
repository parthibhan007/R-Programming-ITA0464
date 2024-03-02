alphabet <- letters
first_10_lower <- alphabet[1:10]
last_10_upper <- toupper(tail(alphabet, 10))
letters_between_22_24_upper <- toupper(alphabet[22:24])
cat("First 10 English letters in lower case:", first_10_lower, "\n")
cat("Last 10 English letters in upper case:", last_10_upper, "\n")
cat("Letters between 22nd to 24th in upper case:", letters_between_22_24_upper, "\n")
