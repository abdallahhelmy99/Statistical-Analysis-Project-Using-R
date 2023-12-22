# Load the required packages
library(ggplot2)

# Read the CLEANED dataset
data <- read.csv("spotify_songs_cleaned.csv")

# Fit a simple linear regression model: track_popularity vs. duration_ms
model_duration_popularity <- lm(track_popularity ~ duration_ms, data = data)
summary(model_duration_popularity)
coefficients(model_duration_popularity)

# Fit a simple linear regression model: duration_ms vs. danceability
model_duration_danceability <- lm(duration_ms ~ danceability, data = data)
summary(model_duration_danceability)
coefficients(model_duration_danceability)

# Fit a simple linear regression model: track_popularity vs. loudness
model_loudness_popularity <- lm(track_popularity ~ loudness, data = data)
summary(model_loudness_popularity)
coefficients(model_loudness_popularity)

# Fit a simple linear regression model: track_popularity vs. danceability
model_danceability_popularity <- lm(track_popularity ~ danceability, data = data)
summary(model_danceability_popularity)
coefficients(model_danceability_popularity)

# Make Predictions
predictions_duration_popularity <- predict(model_duration_popularity)
predictions_duration_danceability <- predict(model_duration_danceability)
predictions_loudness_popularity <- predict(model_loudness_popularity)
predictions_danceability_popularity <- predict(model_danceability_popularity)

# Print or use predictions as needed
print(predictions_duration_popularity)
print(predictions_duration_danceability)
print(predictions_loudness_popularity)
print(predictions_danceability_popularity)