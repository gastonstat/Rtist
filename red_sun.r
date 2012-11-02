##################################################################################
# Title:      Red Sun
# Copyright:  Copyright (c) 2012, under the Simplified BSD License
# Author:     Gaston Sanchez
# url:        www.gastonsanchez.com/projects/rtist
##################################################################################

# Don't use my working directory!
setwd("/Users/gaston/Documents/Rtist_Plots/Images")

# ========================================================================
# Red Sun
# ========================================================================
# generate pairs of x-y values
theta = seq(0, 2*pi, length=300)
x = cos(theta)
y = sin(theta)

png("red_sun.png", width=700, height=400)
# set graphical parameters
op = par(bg="black", mar=rep(.5,4))
# open plot
plot.new()
plot.window(xlim=c(-1,1), ylim=c(-1,1), asp=1)

# first solar layer
segments(rep(0,299), rep(0,299), x[1:299]*runif(299,.7), y[1:299]*runif(299,.7), 
         col=hsv(.95, 1, 1, runif(299,.5)), lwd=1.5)
symbols(0, 0, circles=.84, inches=FALSE, fg="black", bg="black", add=TRUE)
symbols(0, 0, circles=.84, inches=FALSE, fg=hsv(.95,1,1,.5), 
        bg=hsv(.95,1,1,.5), add=TRUE)
symbols(0, 0, circles=.8, inches=FALSE, fg=hsv(.95,1,1,.6), 
        bg=hsv(.95,1,1,.6), add=TRUE)
symbols(0, 0, circles=.76, inches=FALSE, fg=hsv(.95,1,1,.7), 
        bg=hsv(.95,1,1,.7), add=TRUE)
symbols(0, 0, circles=.7, inches=FALSE, fg=hsv(.95,1,1,.8), 
        bg=hsv(.95,1,1,.8), add=TRUE)
symbols(0, 0, circles=.65, inches=FALSE, fg=hsv(.95, 1, 1), 
        bg=hsv(.95, 1, 1), add=TRUE)

# second solar layer
segments(rep(0,299), rep(0,299), x[1:299]*runif(299,.7), y[1:299]*runif(299,.7), 
         col=hsv(.95, 1, 1, runif(299,.5)), lwd=1.5)
symbols(0, 0, circles=.74, inches=FALSE, fg="black", bg="black", add=TRUE)
symbols(0, 0, circles=.74, inches=FALSE, fg=hsv(.95,1,1,.5), 
        bg=hsv(.95,1,1,.5), add=TRUE)
symbols(0, 0, circles=.7, inches=FALSE, fg=hsv(.95,1,1,.6), 
        bg=hsv(.95,1,1,.6), add=TRUE)
symbols(0, 0, circles=.66, inches=FALSE, fg=hsv(.95,1,1,.7), 
        bg=hsv(.95,1,1,.7), add=TRUE)
symbols(0, 0, circles=.6, inches=FALSE, fg=hsv(.95,1,1,.8), 
        bg=hsv(.95,1,1,.8), add=TRUE)
symbols(0, 0, circles=.55, inches=FALSE, fg=hsv(.95, 1, 1), 
        bg=hsv(.95, 1, 1), add=TRUE)

# third solar layer
segments(rep(0,299), rep(0,299), x[1:299]*runif(299,.7), y[1:299]*runif(299,.7), 
         col=hsv(.95, 1, 1, runif(299,.5)), lwd=1.5)
symbols(0, 0, circles=.64, inches=FALSE, fg="black", bg="black", add=TRUE)
symbols(0, 0, circles=.64, inches=FALSE, fg=hsv(.95,1,1,.5), 
        bg=hsv(.95,1,1,.5), add=TRUE)
symbols(0, 0, circles=.6, inches=FALSE, fg=hsv(.95,1,1,.6), 
        bg=hsv(.95,1,1,.6), add=TRUE)
symbols(0, 0, circles=.56, inches=FALSE, fg=hsv(.95,1,1,.7), 
        bg=hsv(.95,1,1,.7), add=TRUE)
symbols(0, 0, circles=.5, inches=FALSE, fg=hsv(.95,1,1,.8), 
        bg=hsv(.95,1,1,.8), add=TRUE)
symbols(0, 0, circles=.45, inches=FALSE, fg=hsv(.95, 1, 1), 
        bg=hsv(.95, 1, 1), add=TRUE)

# signature
legend("bottomright", legend="© Gaston Sanchez", bty="n", text.col="gray70")
# reset par 
par(op)
dev.off()
