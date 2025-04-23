# R Challenge Series — Even Richardson

This repository contains my challenge submissions from my R programming track. Each challenge reflects not just learning R, but tying coding back to personal meaning, growth, and real-world thinking.

---

## Challenges in This Repository

### Challenge 6: Twin Growth Explorer

This is my solution to Challenge 6 from my R training. The challenge involved working with the built-in `iris` dataset in R. Instead of just using it as-is, I gave it a personal twist, remixing it to reflect what's going on in my real life.

#### What This Project Does
- Loads the `iris` dataset
- Renames a couple columns to represent symbolic twin growth measurements
- Treats the Species column as a symbolic stand-in for twin identity
- Prints summary stats grouped by each "twin"
- Displays a scatter plot of head circumference vs. head width
- Includes a PNG version of the plot (`twin_growth_plot.png`) saved from the script

#### Why I Made It Symbolic
I just had twin daughters, and this challenge was assigned right around that time. Instead of just doing it the default way, I wanted to make it feel more personal. So I renamed some of the variables to represent things like head circumference and head width. It's not real data about them, but it helped me stay engaged and tie the learning to something that matters to me.

#### How to Run the Code
1. Open RStudio
2. Make sure you're inside the `r-challenges` project folder
3. Open the file `twin_growth_explorer.R`
4. Click the **Source** button
5. Check the **Console** for summaries
6. View the plot in the **Plots** tab

---

### Challenge 7: Predicting MPG from Horsepower

This is my solution to Challenge 7 from the R track. The goal was to train a simple linear regression model using the built-in `mtcars` dataset to predict miles per gallon (mpg) based on horsepower (hp).

#### What It Does
- Loads the `mtcars` dataset
- Symbolically treats `hp` as the engine's *force of will* and `mpg` as its *journey endurance*
- Trains a linear regression model (`lm`) to predict mpg from hp
- Makes a prediction for a car with 150 horsepower
- Prints the model summary and the prediction

#### Why I Made It Symbolic
Since the twins came, I’ve been connecting more with the idea of *inner strength*. I decided to treat `hp` as symbolic for how much effort a person (or engine) puts in, and `mpg` as how far that effort can carry them.

This helped me learn regression in a way that felt more meaningful and made the concepts easier to remember.

#### How to Run It
1. Open `symbolic_mpg_predictor.R` in RStudio
2. Click **Source** to run the whole script
3. Check the Console for the model details and prediction for a 150-hp car

---

### Challenge 8: k-NN Species Prediction

This project trains a **k-nearest neighbors classifier (k = 3)** using the `iris` dataset to predict flower species based on four measurements. The dataset is shuffled and split 70/30 into training and test sets, and accuracy is printed on unseen data.

#### What It Does
- Uses `class::knn()` to classify species
- Shuffles data and splits into 70% training, 30% testing
- Evaluates the model's accuracy
- Prints the results in a symbolic, real-world-flavored way

#### Why I Made It Symbolic
The model stands in as a proxy for identifying unknown “twin types” based on observed patterns — continuing the theme of proximity, symbolic identity, and hidden order in nature.

#### How to Run It
1. Open `challenge8_knn_species_predictor.R` in RStudio
2. Click **Source**
3. View printed accuracy in the Console

---

## Updates

- **April 23, 2025** – Challenge 8: Symbolic k-NN species predictor with 70/30 validation
- **April 23, 2025** – Challenge 7: Symbolic linear regression with horsepower as effort, mpg as endurance
- **April 23, 2025** – Challenge 6: Real-world pediatric percentile overlay (girls, 0–13 weeks)
- **April 23, 2025** – README restructured to track challenges with a narrative approach

---

## Changelog

- **ADD**: Challenge 8 – Symbolic k-NN predictor using `iris`
- **ADD**: Challenge 7 – Symbolic MPG predictor using `mtcars`
- **FEAT**: Overlay real-world pediatric head circumference data (Challenge 6)
- **FIX**: Refactored plot logic in `twin_growth_explorer.R`
- **INIT**: Twin growth symbolic scatter plot with customized labels (Challenge 6)

---

> Authored by: Even Richardson  
> GitHub: [@evenmillz](https://github.com/evenmillz)
