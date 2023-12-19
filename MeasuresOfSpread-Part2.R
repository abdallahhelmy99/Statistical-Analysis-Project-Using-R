# install.packages('ggplot2', repos = "http://cran.us.r-project.org")
library(ggplot2, warn.conflicts = FALSE)
library(dplyr, warn.conflicts = FALSE)

# Read the CLEANED dataset
data <- read.csv("spotify_songs_cleaned.csv")

# Calculate Range for track_popularity
print(paste0("Range of Track Popularity: ", range(data$track_popularity)))
# Calculate Interquartile Range for track_popularity
print(paste0("IQR of Track Popularity: ", IQR(data$track_popularity)))
# Calculate Variance for track_popularity
print(paste0("Variance of Track Popularity: ", var(data$track_popularity)))

print("")

# Calculate Range for track_duration_ms
print(paste0("Range of Track Duration: ", range(data$duration_ms)))
# Calculate Interquartile Range for track_duration_ms
print(paste0("IQR of Track Duration: ", IQR(data$duration_ms)))
# Calculate Variance for track_duration_ms
print(paste0("Variance of Track Duration: ", var(data$duration_ms)))

print("")

# Calculate Range for Danceability
print(paste0("Range of Danceability: ", range(data$danceability)))
# Calculate Interquartile Range for Danceability
print(paste0("IQR of Danceability: ", IQR(data$danceability)))
# Calculate Variance for Danceability
print(paste0("Variance of Danceability: ", var(data$danceability)))

