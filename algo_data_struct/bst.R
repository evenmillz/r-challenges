# Binary Search Tree in R
# Each node is a decision point—a symbolic tree of life.

# Define BST node structure
create_node <- function(value) {
  list(
    value = value,
    left = NULL,
    right = NULL
  )
}

# Insert value into the tree
insert_node <- function(root, value) {
  if (is.null(root)) {
    return(create_node(value))
  }
  
  if (value < root$value) {
    root$left <- insert_node(root$left, value)
  } else if (value > root$value) {
    root$right <- insert_node(root$right, value)
  }
  
  return(root)
}

# In-order traversal (left, root, right)
in_order <- function(node) {
  if (!is.null(node)) {
    in_order(node$left)
    print(node$value)
    in_order(node$right)
  }
}

# Search for a value in the tree
search_bst <- function(root, target) {
  if (is.null(root)) return(FALSE)
  if (root$value == target) return(TRUE)
  if (target < root$value) {
    return(search_bst(root$left, target))
  } else {
    return(search_bst(root$right, target))
  }
}

# Example usage
values <- c(8, 3, 10, 1, 6, 14, 4, 7, 13)
bst <- NULL

for (v in values) {
  bst <- insert_node(bst, v)
}

cat("In-order traversal (sorted BST):\n")
in_order(bst)

cat("\nSearching for 6:\n")
print(search_bst(bst, 6))

cat("Searching for 12:\n")
print(search_bst(bst, 12))