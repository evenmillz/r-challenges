# Decision Tree Classifier (Iris Dataset)

# Load required package
library(tree)

# Load the built-in Iris dataset
data(iris)

# Set seed for reproducibility
set.seed(42)

# Split into training and testing sets
indexes <- sample(1:nrow(iris), 100)
train <- iris[indexes, ]
test <- iris[-indexes, ]

# Train the decision tree model
model <- tree(Species ~ ., data = train)

# Make predictions on the test set
predictions <- predict(model, newdata = test, type = "class")

# Evaluate with a confusion matrix
conf_matrix <- table(Predicted = predictions, Actual = test$Species)
print(conf_matrix)

# Calculate and print accuracy
accuracy <- sum(diag(conf_matrix)) / sum(conf_matrix)
cat("Model Accuracy:", round(accuracy * 100, 2), "%\n")

