# ---------------------------------------------------------------
# Challenge 8 - KNN: Learning to Identify with Proximity
# Using iris dataset with a k=3 model to predict species
# ---------------------------------------------------------------

# Load the dataset
data("iris")

# Shuffle the rows (to prevent ordering bias)
set.seed(41)  # Stable randomness, for symbolic clarity
iris <- iris[sample(nrow(iris)), ]

# Split the data 70/30 into training and test sets
divider <- floor(0.7 * nrow(iris))
iris_train <- iris[1:divider, ]
iris_test  <- iris[(divider + 1):nrow(iris), ]

# Save actual labels from test set
actual_species <- iris_test$Species

# Load the required library
if (!require(class)) install.packages("class", repos = 'http://cran.us.r-project.org')
library(class)

# Step 1: Extract features and labels
train_features <- iris_train[, 1:4]
train_labels   <- iris_train$Species

test_features  <- iris_test[, 1:4]

# Step 2: Apply k-NN with k = 3
predicted_species <- knn(train = train_features, test = test_features, cl = train_labels, k = 3)

# Step 3: Evaluate accuracy
correct_matches  <- sum(predicted_species == actual_species)
accuracy_percent <- round((correct_matches / length(actual_species)) * 100, 2)

# Step 4: Output result
cat("Twin Proxy Species Identifier (KNN)\n")
cat("Accuracy on unseen iris data:", accuracy_percent, "%\n")
