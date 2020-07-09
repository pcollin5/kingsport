pd_packages <- c("tidyverse", "tidycensus", "leaflet", "mapview", "DT", "sf", "report",
                 "knitr", "rmarkdown", "kableExtra", "RColorBrewer", "tigris",
                 "directlabels", "officer", "flextable")

lapply(pd_packages, library, character.only = TRUE)

dp_variables_2018 <- load_variables(2018, "acs5/profile", cache = TRUE)    

st_variables_2018 <- load_variables(2018, "acs5/subject", cache = TRUE)

new_names <- c("variable", "label", "concept")

names(dp_variables_2018) <- new_names

names(st_variables_2018) <- new_names

##

us_age_race_hisp <- get_estimates(geography = "us", 
                             product = "characteristics", 
                             breakdown = c("SEX", "AGEGROUP","RACE", "HISP"),  
                             breakdown_labels = TRUE,
                             year = 2018)

Tn_age_race_hisp <- get_estimates(geography = "state",
                                  product = "characteristics", 
                                  breakdown = c("SEX", "AGEGROUP","RACE", "HISP"),
                                  state = "TN",
                                  breakdown_labels = TRUE,
                                  year = 2018 )

Carter_age_race_hisp <- get_estimates(geography = "county",
                                      product = "characteristics", 
                                      breakdown = c("SEX", "AGEGROUP","RACE", "HISP"),
                                      state = "TN",
                                      county = "Carter",
                                      breakdown_labels = TRUE,
                                      year = 2018 )

Greene_age_race_hisp <- get_estimates(geography = "county",
                                      product = "characteristics", 
                                      breakdown = c("SEX", "AGEGROUP","RACE", "HISP"),
                                      state = "TN",
                                      county = "Greene",
                                      breakdown_labels = TRUE,
                                      year = 2018 )

Hawkins_age_race_hisp <- get_estimates(geography = "county",
                                       product = "characteristics", 
                                       breakdown = c("SEX", "AGEGROUP","RACE", "HISP"),
                                       state = "TN",
                                       county = "Hawkins",
                                       breakdown_labels = TRUE,
                                       year = 2018 )

Hancock_age_race_hisp <- get_estimates(geography = "county",
                                       product = "characteristics", 
                                       breakdown = c("SEX", "AGEGROUP","RACE", "HISP"),
                                       state = "TN",
                                       county = "Hancock",
                                       breakdown_labels = TRUE,
                                       year = 2018 )

Johnson_age_race_hisp <- get_estimates(geography = "county",
                                       product = "characteristics", 
                                       breakdown = c("SEX", "AGEGROUP","RACE", "HISP"),
                                       state = "TN",
                                       county = "Johnson",
                                       breakdown_labels = TRUE,
                                       year = 2018 )

Sullivan_age_race_hisp <- get_estimates(geography = "county",
                                        product = "characteristics", 
                                        breakdown = c("SEX", "AGEGROUP","RACE", "HISP"),
                                        state = "TN",
                                        county = "Sullivan",
                                        breakdown_labels = TRUE,
                                        year = 2018 )

Washington_age_race_hisp <- get_estimates(geography = "county",
                                          product = "characteristics", 
                                          breakdown = c("SEX", "AGEGROUP","RACE", "HISP"),
                                          state = "TN",
                                          county = "Washington",
                                          breakdown_labels = TRUE,
                                          year = 2018 )

Unicoi_age_race_hisp <- get_estimates(geography = "county",
                                      product = "characteristics", 
                                      breakdown = c("SEX", "AGEGROUP","RACE", "HISP"),
                                      state = "TN",
                                      county = "Unicoi",
                                      breakdown_labels = TRUE,
                                      year = 2018 )
