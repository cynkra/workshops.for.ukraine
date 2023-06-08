# hard to see with the naked eye but there are a couple issues with this script

setwd("C:/work/proj123-b")
source("C:/misc/script_final_May6th_with_edits_(john).R")
library(tidyverse)
x <- 3
y <- 4
MULTIPLY<-function() {
  #adding numbers
  reduce(replicate(y, x), init = x, function(x, y) x + y) - x
}
z <- MULTIPLY()

library(MASS)
select(band_members, band)
