# Loading libraries-----------------------------------------------------------------
library(tidyverse)
library(tidytuesdayR)
library(maps)
library(ggdark)

# Loading data from tidyTuesday-----------------------------------------------------
tt_data <- tt_load("2020-05-12")
mydata <- tt_data$eruptions

# Loading the world map------------------------------------------------------------
world <- map_data("world")


# Plotting active and dormant volcanos around the world----------------------------
ggplot() +
  geom_polygon(aes(x = long, y = lat, group = group),col = "white", data = world) +
  geom_point(aes( x = longitude, y = latitude), col = "#7FFF00", data = mydata) +
  dark_theme_void() +
  labs( title = "Active and Dormant Volcanos around the World",
        caption = "Data viz: @kevinson_mwangi")



