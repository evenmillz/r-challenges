# Twin Growth Explorer — by Even Richardson
# Symbolic analysis using R's built-in iris dataset

# Load the dataset
data("iris")

# Rename columns symbolically
colnames(iris)[1:2] <- c("Head.Circumference", "Head.Width")
iris$Twin <- iris$Species  # Treat Species as symbolic twin identity

# View symbolic summary
cat("\n Twin Head Growth Summary:\n")
summary(iris[, c("Head.Circumference", "Head.Width")])

# Optional: View group-wise summary
cat("\n Twin-Specific Summary:\n")
print(aggregate(cbind(Head.Circumference, Head.Width) ~ Twin, data = iris, FUN = mean))

# --------------------------------------------------
# Add Pediatric Head Circumference Median Data (Girls)
# Source: Growth chart for girls (0–13 weeks, median values)
weeks <- 0:13
girl_median <- c(33.9, 34.6, 35.2, 35.8, 36.4, 36.8, 37.3, 37.7, 38.4, 38.7, 39.0, 39.3, 39.5, 39.5)

# Normalize real-world data to symbolic ranges
girl_x <- scales::rescale(girl_median, to = range(iris$Head.Circumference))
girl_y <- scales::rescale(weeks, to = range(iris$Head.Width))

# Create scatter plot of symbolic twin data
png("twin_growth_vs_realworld.png", width = 800, height = 600)
plot(
  iris$Head.Circumference,
  iris$Head.Width,
  col = as.numeric(iris$Twin),
  pch = 19,
  main = "Twin Growth Pattern vs Real-World Data",
  xlab = "Head Circumference (cm)",
  ylab = "Head Width (cm)"
)

# Add pediatric triangles
points(
  girl_x,
  girl_y,
  col = "purple",
  pch = 17,
  cex = 1.5
)

# Add updated legend
legend(
  "topright",
  legend = c(levels(iris$Twin), "Girl Median (0–13 wks)"),
  col = c(1:3, "purple"),
  pch = c(19, 19, 19, 17),
  pt.cex = c(1, 1, 1, 1.5)
)

dev.off()