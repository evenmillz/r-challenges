# Bubble Sorting Baby Formula by Price

# Bubble Sort used to organize baby formula options by cost.
# Real life requires real logic—especially when you're raising twins.

bubble_sort_formula <- function(prices) {
  n <- length(prices)
  
  cat("Original formula prices:\n")
  print(prices)
  
  for (i in 1:(n - 1)) {
    for (j in 1:(n - i)) {
      if (prices[j] > prices[j + 1]) {
        # Swap prices
        temp <- prices[j]
        prices[j] <- prices[j + 1]
        prices[j + 1] <- temp
        
        # Swap brand names too
        temp_name <- names(prices)[j]
        names(prices)[j] <- names(prices)[j + 1]
        names(prices)[j + 1] <- temp_name
      }
    }
  }
  
  cat("\nSorted by price (lowest to highest):\n")
  print(prices)
  return(prices)
}

# Example: Baby formula brands and prices (in dollars)
formula_prices <- c(24.99, 19.89, 27.49, 22.50, 20.75)
names(formula_prices) <- c("Enfamil", "Parent's Choice", "Similac", "Gerber", "Earth's Best")

# Sort formula prices
bubble_sort_formula(formula_prices)