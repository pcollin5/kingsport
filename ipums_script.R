packages <- c("acs", "tidyverse", "tidycensus", "tigris", "leaflet", "mapview", "tmap", "DT", "sf", "gganimate", "report", "ipumsr")

lapply(packages, library, character.only = TRUE)

cps_ddi <- read_ipums_ddi("ddi.xml")

cps_data <- read_ipums_micro(cps_ddi, data_file = "cps_00001.csv")

names(cps_data)

tn_data <- cps_data %>%
  filter(STATEFIP == 47)

tn_data_2 <- tn_data %>%
  mutate_if(is.labelled, as_factor)

tn_data_3 <- tn_data_2 %>%
  lbl_clean()

tn_data_3$STDTRACT

rm(cps_ddi)
rm(cps_data)
rm(tn_data)
rm(tn_data_2)
rm(tn_data_3)
