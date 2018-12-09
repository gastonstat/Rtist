# ========================================================================
# Purple Confluence
# ========================================================================
# generate pairs of x-y values
set.seed(1234)
theta <- seq(-2*pi, 2*pi, length = 300)
x <- sin(theta) / cos(theta)
y <- cos(theta) 


png("purple_confluence.png", width = 700, height = 400)
# set graphical parameters
op <- par(bg = "black", mar = rep(0.5, 4))
# plot
plot(x, y, type = "n", xlim = c(-20, 20), ylim = c(-1,1))
for (i in seq(-2*pi, 2*pi, length = 70)) {
  lines(i*x, y, lwd = 2.5*runif(1),
        col = hsv(runif(1,0.75,0.8), 1, 1, runif(1,0.3)))		
}
# signature
legend("bottomright", legend = "© Gaston Sanchez", bty = "n", 
       text.col = "gray70")
# reset graphical parameters
par(op)
dev.off()
