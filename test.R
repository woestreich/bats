# load package and load other dependencies
library(dynaSpec)
library(warbleR)
library(viridis)
library(tuneR)
library(seewave)


# test
data("canyon_wren")

scrolling_spectro(wave = canyon_wren, wl = 300, 
                  t.display = 1.7, pal = viridis, 
                  grid = FALSE, flim = c(1, 9), 
                  width = 1000, height = 500, 
                  res = 120, file.name = "default.mp4")
