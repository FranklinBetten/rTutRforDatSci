## Read in the data
library(dplyr)
library(tidyverse)
library(faraway)
library(ggplot2)

ggplot(data = mpg) +
  geom_point(mapping = aes(x= displ, y = hwy))

ggplot(data = worldcup) +
  geom_point(mapping = aes(x= Time, y = Shots))

#1 - run ggplot(data  = mpt) what do you see?
ggplot(data = mpg)
# just gives a grey panel

#2 - how many rows and cols are in mtcars

#3 - what does the drv variable describe?
#drv is now probably am for transmission type but not tally sure?
# never mind was looing at mtcars instead of mpg bec am stupid
# drv describe front rear or 4 whl drive

#4 - make a scatter plot of hwy vs cyl
ggplot(data = mpg) +
  geom_point(mapping = aes(x = hwy, y = cyl))

#5 - what happens when make scatter plot of class vs drv
#why is plot not useful?
ggplot(data = mpg) +
  geom_point(mapping = aes(x = class, y = drv))
# its  a plot fo catigorical data nd each point is
#not labeld so it doenst really tell us mch quant wise
# but is also doesnt help us see where each car falls
# I guess kind of giees over view of spread
# but doesnt tell us how many points are at each
# intersection

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, color = class))

# not so great idea bec its and unordered class we making ti order
# aes ..... but its p funny

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, size = class))

# alpha contraols the tranparncy of the point s
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, alpha = class))

# shape obv controls shape
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, shape = class))
# set all points blue for no reason!
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy), color = "blue")


## page 12 exerciese

#1 - whast wrong with example plot
# issue is that they plot has color = "blue" instead if aes()
# this means it has assined a stirng "blue" as a var to color
# since its in aes() then aes() must then auto format it

#2 -

#3
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, size = cty))
# color - nice color graph light at top to dark at bottom
# shape - will not woprk with contiuous data points
# size - large at top and smaller at bottom

#4
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, stroke = cyl))
# it will show same info in 2 ways
#

#5
# clears off the legend? and I think make some size difs

#6 what heppens when color map to something other than var name

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, color = displ > 5))

# it creats new var that is represetned by aes()


ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_wrap(~ class, nrow = 2 )

## I am starting this chaptr over for refresher ...


ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy))

