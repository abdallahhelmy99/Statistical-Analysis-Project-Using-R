data <- read.csv("spotify_songs_cleaned.csv")

# Set up a new layout for the plots
par(mfrow = c(2, 2))

# Scatter Plot for Track Popularity vs. Track Duration
plot(data$track_duration, data$track_popularity, main = "Track Popularity vs. Track Duration", 
     xlab = "Duration (ms)", ylab = "Popularity", col = "blue")

# Scatter Plot for Track Popularity vs. Danceability
plot(data$danceability, data$track_popularity, main = "Track Popularity vs. Danceability", 
     xlab = "Danceability", ylab = "Popularity", col = "green")

# Scatter Plot for Track Duration vs. Danceability
plot(data$danceability, data$track_duration, main = "Danceability vs. Track Duration", 
     xlab = "Danceability", ylab = "Duration (ms)", col = "red")

# Scatter Plot for Loudness vs. Energy (not correlated variables)
plot(rnorm(100), rnorm(100), main = "Scatter Plot for Non-correlated Variables", 
     xlab = "Loudness", ylab = "Energy", col = "purple")
