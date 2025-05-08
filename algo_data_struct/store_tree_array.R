# Storing a Binary Tree in an Array
# This function builds a binary tree in array form (heap-style indexing)

store_tree_in_array <- function(values) {
  n <- length(values)
  tree_array <- rep(NA, 2^ceiling(log2(n + 1)))  # allocate array with buffer
  
  # Fill tree array based on position rules
  for (i in 1:n) {
    tree_array[i] <- values[i]
  }
  
  return(tree_array)
}

# Example input (as if inserting into a binary tree)
input_values <- c("Faith", "Drive", "Love", "Wisdom", "Discipline", "Clarity", "Trauma")

tree_array <- store_tree_in_array(input_values)

cat("Binary tree stored in array format:\n")
print(tree_array)