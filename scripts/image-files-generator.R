# Title: image files generator
# Generates 'rtist' .png images from code in "R" folder, 
# and moves them to folder "images"

setwd("/Users/Gaston/Documents/Rtist/")

# get file names
Rfiles <- system("ls R", intern = TRUE)

# source R scripts (producing images)
for (i in seq_along(Rfiles)) {
  source(sprintf("R/%s", Rfiles[i]))
}

# move image files to respective folder
system("mv *.png images/rtist/")

