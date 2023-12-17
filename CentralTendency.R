# install.packages('DescTools', repos = "http://cran.us.r-project.org")
library(modeest)
library(dplyr)

data <- read.csv("spotify_songs_cleaned.csv")

# Calculate mean for track_popularity
print(paste0("Mean of Track Popularity: ", mean(data$track_popularity)))
# Calculate median for track_popularity
print(paste0("Median of Track Popularity: ", median(data$track_popularity)))
# Calculate mode for track_popularity using modeest::mlv():
print(paste0("Mode of Track Popularity: ", mlv(data$track_popularity)))


# Calculate mean for track_duration_ms
print(paste0("Mean of Track Duration: ", mean(data$duration_ms)))
# Calculate median for track_duration_ms
print(paste0("Median of Track Duration: ", median(data$duration_ms)))
# Calculate mode for track_duration_ms using modeest::mlv():
print(paste0("Mode of Track Duration: ", mlv(data$duration_ms)))
