# ---------------------------------------------------------------
# Challenge 7 – Symbolic MPG Predictor
# A basic model trained to understand miles per gallon
# through the lens of engine force (hp)
# ----------------------------------------------------------------

# Load built-in car dataset
data("mtcars")

# Rename columns to reflect meaning while staying clear
cars <- mtcars
colnames(cars)[colnames(cars) == "mpg"] <- "Miles"
colnames(cars)[colnames(cars) == "hp"] <- "EngineForce"

# Train the model — learn how miles relate to engine power
miles_model <- lm(Miles ~ EngineForce, data = cars)

# Make a prediction for a car with 150 horsepower
future_vehicle <- data.frame(EngineForce = 150)
estimated_miles <- predict(miles_model, newdata = future_vehicle)

# Display the predicted mileage
cat("Predicted mileage for a vehicle with 150 HP:", round(estimated_miles, 2), "MPG\n")