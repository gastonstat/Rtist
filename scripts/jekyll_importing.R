

# origin directory name
origin = "/Users/Gaston/Documents/gastonstat.github.io"

# export "config yaml"
system(sprintf("cp %s/%s %s", origin, 
               "_config.yml", 
               "_config.yml"))

system(sprintf("cp %s/%s %s", origin, 
               "_layouts/page.html", 
               "_layouts/page.html"))

# export "_includes"
system(sprintf("cp %s/%s %s", origin, 
               "_includes/footer.html", 
               "_includes/footer.html"))

system(sprintf("cp %s/%s %s", origin, 
               "_includes/header.html", 
               "_includes/header.html"))

system(sprintf("cp -a %s/%s %s", origin, 
               "_includes/css/.", 
               "_includes/css/"))

# export "_layouts"
system(sprintf("cp %s/%s %s", origin, 
               "_layouts/default.html", 
               "_layouts/default.html"))

system(sprintf("cp %s/%s %s", origin, 
               "_layouts/flexible.html", 
               "_layouts/flexible.html"))

system(sprintf("cp %s/%s %s", origin, 
               "_layouts/page.html", 
               "_layouts/page.html"))


# export css
system(sprintf("cp %s/%s %s", origin, 
               "css/main.css", 
               "css/main.css"))
