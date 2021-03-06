# load package and load other dependencies
library(dynaSpec)
library(warbleR)
library(viridis)
library(tuneR)
library(seewave)
library(tidyverse)


# test (Marcelo's approach)
# data("canyon_wren")
# 
# scrolling_spectro(wave = canyon_wren, wl = 300, 
#                   t.display = 1.7, pal = viridis, 
#                   grid = FALSE, flim = c(1, 9), 
#                   width = 1000, height = 500, 
#                   res = 120, file.name = "default.mp4")

# test (Matt's approach)
(f<-system.file(package="dynaSpec") %>% list.files(pattern=".wav",full.names=T))
params <-prep_static_ggspectro(f[1],destFolder="wd",savePNG=T)
#add axes 
femaleBarnSwallow<-prep_static_ggspectro(f[1],destFolder=tempdir(),savePNG=T,onlyPlotSpec = F)
#Now generate a dynamic spectrogram
paged_spectro(femaleBarnSwallow)

# test on a bat file
yuma <-prep_static_ggspectro("ventana_yuma_myotis.wav",destFolder="wd",savePNG=T,crop=c(21,29),onlyPlotSpec = T,ampTrans=2)
paged_spectro(yuma)
