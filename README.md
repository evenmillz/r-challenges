# R Challenge Series — Even Richardson

This repository contains my challenge submissions from my R programming track. Each challenge reflects not just learning R, but tying code back to personal meaning, growth, and real-world thinking.

---

## Challenges in This Repository

### Challenge 6: Twin Growth Explorer

This challenge involved working with the built-in `iris` dataset. I gave it a personal twist by symbolically mapping it to reflect the early developmental journey of my newborn twin daughters.

#### What This Project Does
- Loads the `iris` dataset
- Renames measurements to represent head circumference and head width
- Uses `Species` as a symbolic stand-in for "twin identity"
- Prints summary stats grouped by each "twin"
- Generates a scatter plot (`challenge6_growth_plot.png`)
- Adds a reference overlay from real-world pediatric growth charts (`challenge6_vs_realworld_plot.png`)

#### Why I Made It Symbolic
Having just become a father of twins, I found meaning in treating this data as a symbolic growth tracker. The variable names aren’t real measurements, but they helped me emotionally connect with the learning process.

#### How to Run It
1. Open `challenge6_twin_growth.R` in RStudio
2. Click **Source**
3. Check the Console for summaries
4. View the plots in the **Plots** tab

---

### Challenge 7: Predicting MPG from Horsepower

Using the `mtcars` dataset, this script builds a simple linear regression model to predict miles per gallon (mpg) based on horsepower (hp).

#### What It Does
- Loads `mtcars`
- Symbolizes `hp` as "engine force" and `mpg` as "journey endurance"
- Trains a linear regression model
- Predicts mpg for a 150-hp vehicle
- Prints the model and symbolic output

#### Why I Made It Symbolic
To me, this challenge reflected life’s journey. I connected `hp` to the effort we give, and `mpg` to how far that effort can carry us.

#### How to Run It
1. Open `challenge7_predict_mpg.R` in RStudio
2. Click **Source**
3. Read the symbolic output in the Console

---

### Challenge 8: k-NN Species Prediction

This project uses the `iris` dataset to train a **k-nearest neighbors classifier (k = 3)** to predict species from measurements.

#### What It Does
- Shuffles and splits the dataset (70/30)
- Applies `class::knn()` to classify species
- Calculates model accuracy
- Prints symbolic output in theme

#### Why I Made It Symbolic
This classifier acts as a proxy for identifying symbolic “twin types” — reflecting the idea of proximity, likeness, and identity in nature.

#### How to Run It
1. Open `challenge8_knn_species.R` in RStudio
2. Click **Source**
3. Accuracy prints to the Console

---

### Challenge 9: Dimensional Alignment via PCA

This script performs **Principal Component Analysis (PCA)** on the `mtcars` dataset to reduce dimensionality and visualize underlying structure.

#### What It Does
- Loads the `mtcars` dataset
- Applies PCA using `prcomp()`
- Extracts and plots the first two principal components
- Saves the PCA scatter plot as `challenge9_pca_plot.png`

#### Why I Made It Symbolic
I see PCA like mental clarity — reducing noise to reveal structure. This is the first time I’ve seen how stats can *visually* express hidden order.

#### How to Run It
1. Open `challenge9_dimensional_alignment.R` in RStudio
2. Click **Source**
3. View the resulting PCA plot in the **Plots** tab

---

### Challenge 10: Naive Bayes Symbolic Identifier

This script uses the `iris` dataset to train a Naive Bayes classifier — a model that classifies based on probability and trust in patterns rather than complex logic.

#### What It Does
- Loads and shuffles the iris dataset
- Splits into training (70%) and test (30%)
- Trains a Naive Bayes classifier using `e1071::naiveBayes`
- Predicts species labels on test data
- Predicts the species of a new symbolic flower

#### Why I Made It Symbolic
Naive Bayes represents the wisdom of simplicity — learning by generalizing from patterns. I treated the final prediction as a metaphor for clarity: even with limited data, insight can still bloom.

#### How to Run It
1. Open `challenge10_naive_bayes_classifier.R` in RStudio
2. Click **Source**
3. Read the model’s accuracy and the symbolic flower’s predicted species

---

## Updates

- **Apr 23, 2025** — Challenge 9: Added PCA visualization using `mtcars` + plot export
- **Apr 23, 2025** — Challenge 8: Symbolic k-NN predictor with 70/30 validation
- **Apr 23, 2025** — Challenge 7: Symbolic regression with horsepower as effort, mpg as endurance
- **Apr 23, 2025** — Challenge 6: Real-world pediatric percentile overlay (girls, 0–13 weeks)
- **Apr 23, 2025** — README refactored to match standardized filenames

---

## 🛠Changelog

- **ADD**: Challenge 10 – Naive Bayes symbolic classifier using iris dataset
- **ADD**: Challenge 9 – PCA on `mtcars`, plotted first two principal components
- **ADD**: Challenge 8 – Symbolic k-NN predictor using `iris`
- **ADD**: Challenge 7 – Symbolic MPG predictor using `mtcars`
- **FEAT**: Overlay pediatric head circumference data on Challenge 6 plot
- **FIX**: Refined scatter logic in `challenge6_twin_growth.R`
- **RENAME**: Standardized file naming format for all challenge scripts and images

---

> Authored by: Even Richardson  
> GitHub: [@evenmillz](https://github.com/evenmillz)
