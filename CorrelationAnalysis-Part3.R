# install.packages('ggplot2', repos = "http://cran.us.r-project.org")
library(ggplot2, warn.conflicts = FALSE)
library(dplyr, warn.conflicts = FALSE)

# Read the CLEANED dataset
data <- read.csv("spotify_songs_cleaned.csv")

# Correlation Analysis

# Calculate Correlation between track_popularity and track_duration_ms
print(paste0("Correlation between Track Popularity and Track Duration: ", cor(data$track_popularity, data$duration_ms))) # nolint

# Calculate Correlation between track_popularity and danceability
print(paste0("Correlation between Track Popularity and Danceability: ", cor(data$track_popularity, data$danceability))) # nolint

# Calculate Correlation between track_duration_ms and danceability
print(paste0("Correlation between Track Duration and Danceability: ", cor(data$duration_ms, data$danceability))) # nolint

# Calculate Correlation between loudness and energy
print(paste0("Correlation between Loudness and Energy: ", cor(data$loudness, data$energy))) # nolint