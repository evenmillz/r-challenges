# ----------------------------------------------------------
# Challenge 10 - Naive Bayes Classifier on iris
# Final test: trusting patterns without needing perfection
# ----------------------------------------------------------

# Load required libraries
if (!require(e1071)) install.packages("e1071", repos = "http://cran.us.r-project.org")
library(e1071)

# Load and shuffle the iris dataset
set.seed(41) # Symbolic: 4 = fooundation, 1 = creation
iris <- iris[sample(nrow(iris)), ]

# Split the data into trainin (70%) and testing (30%)
split_index <- floor(0.7 * nrow(iris))
train_set <- iris[1:split_index, ]
test_set <- iris[(split_index + 1):nrow(iris), ]

# Train the Naive Bayes classifier
model_nb <- naiveBayes(Species ~ ., data = train_set)

# Make predictions on the test set
predicted_species <- predict(model_nb, test_set[, -5])

# Check prediction accuracy
actual_species <- test_set$Species
accuracy <- round(mean(predicted_species == actual_species) * 100, 2)

# Predict the species of a new symbolic flower
symbolic_flower <- data.frame(Sepal.length = 5.1,
                             Sepal.Width = 3.5,
                             Petal.Length = 1.4,
                             Petal.Width = 0.2)

predicted_label <- predict(model_nb, symbolic_flower)

# Output the result
cat("Challenge 10: Naive Bayes Symbolic Identifier\n")
cat(" Model Accuracy:", accuracy, "% on test data\n")
cat("Prediction for symbolic flower:", as.character(predicted_label), "\n")
