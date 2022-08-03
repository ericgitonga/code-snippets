library(tidyverse)
library(sf)

geodata <- read_csv("data/geodata.csv", show_col_types = FALSE)

geodata

geodata_sf <- st_as_sf(geodata, coords = c("longitude", "latitude"), crs = 4326) 

geodata_sf

write_rds(geodata_sf, "data/geodata.rds")

new_geodata <- read_rds("data/geodata.rds")

new_geodata
