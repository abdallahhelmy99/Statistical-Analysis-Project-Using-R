library(dplyr)

# Read the dataset
data <- read.csv("spotify_songs.csv")

columns_to_remove <- c("track_id", "track_album_id", "playlist_id", "playlist_name", "playlist_genre", "playlist_subgenre")  # Replace with actual column names
data <- select(data, -one_of(columns_to_remove))

# Check the structure of the dataset
# str(data)
# # View the first few rows of the dataset
# head(data)
# # Summary statistics
# summary(data)


# Remove duplicates
duplicate_rows <- data[duplicated(data), ]
data <- data[!duplicated(data), ]

# Print number of rows and columns
print(dim(data))

# Check for missing values in the data
sum(is.na(data))

if (sum(is.na(data)) > 0) {
    # Impute missing values with the mode (loop over each column and replace na with column's mode)
    for (i in 1:ncol(data)) {
        data[is.na(data[, i]), i] <- names(which.max(table(data[, i])))
    }
}

# Check for missing values in the data (make sure it's 0)
sum(is.na(data))
