install.packages("modeest", repos = "http://cran.us.r-project.org")
library(dplyr)
library(DescTools)
library(modeest)

# Read the dataset
print("Loading dataset...")
data <- read.csv("spotify_songs.csv")
print("Dataset loaded successfully.")

# Remove Unnecessary Columns
columns_to_remove <- c("track_id", "track_album_id", "playlist_id", "playlist_name", "playlist_genre", "playlist_subgenre")  # Replace with actual column names
print("Removing unnecessary columns...")
data <- select(data, -one_of(columns_to_remove))
print("Unnecessary columns removed successfully.")

# Remove duplicates
print("Removing duplicates...")
data <- data[!duplicated(data), ]
print("Duplicates removed successfully.")

# Check for missing values in the data (12 missing values)
print("Checking for missing values...")
missing_values <- sum(is.na(data))
print(paste("Number of missing values:", missing_values))

if (missing_values > 0) {
    print("Imputing missing values...")
    # Impute missing values with the mode (loop over each column and replace na with column's mode)
    for (i in 1:ncol(data)) {
        data[is.na(data[, i]), i] <- names(which.max(table(data[, i])))
    }
    print("Missing values imputed successfully.")
}

# Check for missing values in the data (0 missing values)
print("Checking for missing values...")
missing_values <- sum(is.na(data))
print(paste("Number of missing values:", missing_values))

# Handle Inconsistent Data
print("Handling inconsistent data...")
data$track_name <- tolower(data$track_name)
data$track_artist <- tolower(data$track_artist)
data$track_album_name <- tolower(data$track_album_name)
print("Inconsistent data handled successfully.")

# Convert Data Types
print("Converting data types...")
data$track_album_release_date <- as.Date(data$track_album_release_date, format="%Y-%m-%d")
print("Data types converted successfully.")

# Save cleaned data to a new file
print("Saving cleaned data...")
write.csv(data, "spotify_songs_cleaned.csv", row.names = FALSE)
print("Cleaned data saved successfully.")
