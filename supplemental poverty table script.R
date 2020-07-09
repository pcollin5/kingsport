packages <- c("acs", "tidyverse", "tidycensus", "tigris", "leaflet", "mapview", "tmap", "DT", "sf", "gganimate", "report", "ipumsr")

lapply(packages, library, character.only = TRUE)

poverty_table_variables <- load_variables(2018, "acs5/subject", cache = TRUE)

new_names <- c("variable", "label", "concept")

names(poverty_table_variables) <- new_names

##get poverty table##

View(poverty_table_variables)

####need tables S1701 and S1703