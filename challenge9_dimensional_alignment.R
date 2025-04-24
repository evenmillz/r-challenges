# ---------------------------------------------------------------
# Challenge 9: Dimensional Alignment - PCA on mtcars
# Extracting symolic clarity from mechanical chaos
# ---------------------------------------------------------------

# Load mtcars dataset
data("mtcars")

# Symbolism: Each car represents a lifeform - seeking direction

# Normalize features (important for PCA)
mtcars_scaled <- scale(mtcars)

# Perform PCA
pca_result <- prcomp(mtcars_scaled, center = TRUE, scale. = TRUE)

# Show explained variance (symbolic clarity from chaos)
explained <- round(summary(pca_result)$importance[2, 1:2] * 100, 2)

# Prepare for plot
pc_df <- as.data.frame(pca_result$x)
pc_df$car <- rownames(mtcars)

#Plot the first two principal components
plot(
  pc_df$PC1, pc_df$PC2,
  pch = 21, 
  bg = "skyblue",
  col + "gray25",
  xlab = past0("PC1 (", explained[1], "% of variance)"),
  ylab = past0("PC2(", explained[2], "% of variance)"),
  main = "Challenge 9: Dimensional Alignment via PCA"
)

# Label each car
text(pc_df$PC1, pc_df$PC2, labels = pc_df$car, cex = 0.6, pos = 3)