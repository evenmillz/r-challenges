# R Challenge Series — Even Richardson

This repository contains my challenge submissions from my R programming track. Each challenge reflects not just learning R, but tying coding back to personal meaning, growth, and real-world thinking.

---

## ✅ Challenges in This Repository

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

## 🛠️ Updates

- **April 23, 2025** – Added real-world pediatric growth comparison to Challenge 6 using percentile data (girls, 0–13 weeks)
- **April 23, 2025** – Connected twin symbolism to fuel prediction in Challenge 7 (engine force → journey endurance)
- **April 23, 2025** – Started formal challenge tracking with distinct sections per challenge

---

## 📘 Changelog

- `f8f1144` – Challenge 7: Train symbolic MPG predictor using engine force  
- `233d27d` – FEAT: overlay pediatric head circumference median data (girls, 0–13 wks)  
- `24510bc` – FIX: corrected logic in twin_growth_explorer.R  
- `Initial commit` – Challenge 6: Twin growth symbolic scatter plot using `iris`

---

> Authored by: Even Richardson  
> GitHub: [@evenmillz](https://github.com/evenmillz)
