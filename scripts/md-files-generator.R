# Title: .md files generator
# Generates .md files for website 

setwd("/Users/Gaston/Documents/Rtist/")

# get file names
Rfiles <- system("ls R", intern = TRUE)
images <- system("ls images/rtist/", intern = TRUE)

# extract image names
img_names <- strsplit(images, split=".", fixed=TRUE)
img_names <- unlist(lapply(img_names, function(x) x[1]))

# output files
outfiles <- paste(img_names, ".md", sep = '')


# Image titles
img_titles <- gsub("_", " ", img_names)

# how many files
num_files <- length(Rfiles)

# start writing output to '.md' files
for (i in 1:num_files) {
  # read R script
  file_content <- readLines(sprintf("R/%s", Rfiles[i]), warn = FALSE)
  
  # yaml header
  cat(file = outfiles[i], "---", "\n", sep = '')
  cat(file = outfiles[i], "layout: page", "\n", sep = '', append = TRUE)
  cat(file = outfiles[i], sprintf("title: \"%s\"", img_titles[i]), 
      "\n", sep = '', append = TRUE)
  cat(file = outfiles[i], "---", "\n\n", sep = '', append = TRUE)
  
  # add page title and image
  cat(file = outfiles[i], "# [R-tist](/Rtist)", "\n\n", append = TRUE)
  cat(file = outfiles[i], sprintf("### %s", img_titles[i]), 
      "\n\n", append = TRUE)
  cat(file = outfiles[i], 
      sprintf("![%s](/images/rtist/%s)", 
              img_titles[i], images[i]), 
      "\n\n", append = TRUE)

  cat(file = outfiles[i], "-----", "\n\n", sep = '', append = TRUE)
  
  # add R code
  cat(file = outfiles[i], "{% highlight r %}", "\n", append = TRUE)
  # R file content
  for (l in 1:length(file_content)) {
    cat(file = outfiles[i], file_content[l], "\n", append = TRUE)    
  }
  # last line
  cat(file = outfiles[i], "{% endhighlight %}", "\n", append = TRUE)
}


