# Twin Growth Explorer - by Even Richardson
# Symbolic analysis using R's built-in iris dataset

# Load the dataset
data("iris")

# Rename columns symbolically
colnames(iris)[1:2] <- c("Head.Circumference", "Head.Width")
iris$Twin <- iris$Species # Treat Species as symbolic twin identity

# View symbolic summary
cat("\n Twin-Specific Summary:\n")
print(aggregate(cbind(Head.Circumference, Head.Width) ~ Twin, data = iris, FUN = mean))

# Create scatter plot
plot(
  iris$Head.Circumference,
  iris$Head.Width,
  col = as.numeric(iris$Twin),
  pch = 19,
  main = "Twin Growth Pattern: Circumference vs Width",
  xlab = "Head Circumference (cm)",
  ylab = "Head Width (cm)"
)
legend"topright", legend = levels(iris$Twin), col = 1:3, pch = 19