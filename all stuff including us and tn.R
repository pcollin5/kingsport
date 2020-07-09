#new with TN and US included in data pull

####load packages####

pd_packages <- c("tidyverse", "tidycensus", "leaflet", "mapview", "DT", "sf", "report",
                 "knitr", "rmarkdown", "kableExtra", "RColorBrewer", "tigris",
                 "directlabels", "officer", "flextable")

lapply(packages, library, character.only = TRUE)


####load the data#####

dp_table_variables <- load_variables(2018, "acs5/profile", cache = TRUE)

new_names_18 <- c("variable", "label", "concept")

names(dp_table_variables) <- new_names_18

####data profiles####

##carter##

Carter_dp02_2018 <- get_acs(geography = "tract", county = "Carter", state = "TN", table = "DP02", year = 2018, geometry = TRUE)

Carter_dp03_2018 <- get_acs(geography = "tract", county = "Carter", state = "TN", table = "DP03", year = 2018, geometry = TRUE)

Carter_dp04_2018 <- get_acs(geography = "tract", county = "Carter", state = "TN", table = "DP04", year = 2018, geometry = TRUE)

Carter_dp05_2018 <- get_acs(geography = "tract", county = "Carter", state = "TN", table = "DP05", year = 2018, geometry = TRUE)

##greene##


Greene_dp02_2018 <- get_acs(geography = "tract", county = "Greene", state = "TN", table = "DP02", year = 2018, geometry = TRUE)

Greene_dp03_2018 <- get_acs(geography = "tract", county = "Greene", state = "TN", table = "DP03", year = 2018, geometry = TRUE)

Greene_dp04_2018 <- get_acs(geography = "tract", county = "Greene", state = "TN", table = "DP04", year = 2018, geometry = TRUE)

Greene_dp05_2018 <- get_acs(geography = "tract", county = "Greene", state = "TN", table = "DP05", year = 2018, geometry = TRUE)

##hancock

Hancock_dp02_2018 <- get_acs(geography = "tract", county = "Hancock", state = "TN", table = "DP02", year = 2018, geometry = TRUE)

Hancock_dp03_2018 <- get_acs(geography = "tract", county = "Hancock", state = "TN", table = "DP03", year = 2018, geometry = TRUE)

Hancock_dp04_2018 <- get_acs(geography = "tract", county = "Hancock", state = "TN", table = "DP04", year = 2018, geometry = TRUE)

Hancock_dp05_2018 <- get_acs(geography = "tract", county = "Hancock", state = "TN", table = "DP05", year = 2018, geometry = TRUE)

##hawkins

Hawkins_dp02_2018 <- get_acs(geography = "tract", county = "Hawkins", state = "TN", table = "DP02", year = 2018, geometry = TRUE)

Hawkins_dp03_2018 <- get_acs(geography = "tract", county = "Hawkins", state = "TN", table = "DP03", year = 2018, geometry = TRUE)

Hawkins_dp04_2018 <- get_acs(geography = "tract", county = "Hawkins", state = "TN", table = "DP04", year = 2018, geometry = TRUE)

Hawkins_dp05_2018 <- get_acs(geography = "tract", county = "Hawkins", state = "TN", table = "DP05", year = 2018, geometry = TRUE)


##johnson

Johnson_dp02_2018 <- get_acs(geography = "tract", county = "Johnson", state = "TN", table = "DP02", year = 2018, geometry = TRUE)

Johnson_dp03_2018 <- get_acs(geography = "tract", county = "Johnson", state = "TN", table = "DP03", year = 2018, geometry = TRUE)

Johnson_dp04_2018 <- get_acs(geography = "tract", county = "Johnson", state = "TN", table = "DP04", year = 2018, geometry = TRUE)

Johnson_dp05_2018 <- get_acs(geography = "tract", county = "Johnson", state = "TN", table = "DP05", year = 2018, geometry = TRUE)

##sullivan

Sullivan_dp02_2018 <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "DP02", year = 2018, geometry = TRUE)

Sullivan_dp03_2018 <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "DP03", year = 2018, geometry = TRUE)

Sullivan_dp04_2018 <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "DP04", year = 2018, geometry = TRUE)

Sullivan_dp05_2018 <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "DP05", year = 2018, geometry = TRUE)

##washington


Washington_dp02_2018 <- get_acs(geography = "tract", county = "Washington", state = "TN", table = "DP02", year = 2018, geometry = TRUE)

Washington_dp03_2018 <- get_acs(geography = "tract", county = "Washington", state = "TN", table = "DP03", year = 2018, geometry = TRUE)

Washington_dp04_2018 <- get_acs(geography = "tract", county = "Washington", state = "TN", table = "DP04", year = 2018, geometry = TRUE)

Washington_dp05_2018 <- get_acs(geography = "tract", county = "Washington", state = "TN", table = "DP05", year = 2018, geometry = TRUE)

##unicoi

Unicoi_dp02_2018 <- get_acs(geography = "tract", county = "Unicoi", state = "TN", table = "DP02", year = 2018, geometry = TRUE)

Unicoi_dp03_2018 <- get_acs(geography = "tract", county = "Unicoi", state = "TN", table = "DP03", year = 2018, geometry = TRUE)

Unicoi_dp04_2018 <- get_acs(geography = "tract", county = "Unicoi", state = "TN", table = "DP04", year = 2018, geometry = TRUE)

Unicoi_dp05_2018 <- get_acs(geography = "tract", county = "Unicoi", state = "TN", table = "DP05", year = 2018, geometry = TRUE)


###2018##

##carter

Carter_dp02_18 <- inner_join(Carter_dp02_2018, dp_table_variables, by = "variable")

Carter_dp03_18 <- inner_join(Carter_dp03_2018, dp_table_variables, by = "variable")

Carter_dp04_18 <- inner_join(Carter_dp04_2018, dp_table_variables, by = "variable")

Carter_dp05_18 <- inner_join(Carter_dp05_2018, dp_table_variables, by = "variable")

##greene

Greene_dp02_18 <- inner_join(Greene_dp02_2018, dp_table_variables, by = "variable")

Greene_dp03_18 <- inner_join(Greene_dp03_2018, dp_table_variables, by = "variable")

Greene_dp04_18 <- inner_join(Greene_dp04_2018, dp_table_variables, by = "variable")

Greene_dp05_18 <- inner_join(Greene_dp05_2018, dp_table_variables, by = "variable")

##hancock

Hancock_dp02_18 <- inner_join(Hancock_dp02_2018, dp_table_variables, by = "variable")

Hancock_dp03_18 <- inner_join(Hancock_dp03_2018, dp_table_variables, by = "variable")

Hancock_dp04_18 <- inner_join(Hancock_dp04_2018, dp_table_variables, by = "variable")

Hancock_dp05_18 <- inner_join(Hancock_dp05_2018, dp_table_variables, by = "variable")

##hawkins  

Hawkins_dp02_18 <- inner_join(Hawkins_dp02_2018, dp_table_variables, by = "variable")

Hawkins_dp03_18 <- inner_join(Hawkins_dp03_2018, dp_table_variables, by = "variable")

Hawkins_dp04_18 <- inner_join(Hawkins_dp04_2018, dp_table_variables, by = "variable")

Hawkins_dp05_18 <- inner_join(Hawkins_dp05_2018, dp_table_variables, by = "variable")

##johnson

Johnson_dp02_18 <- inner_join(Johnson_dp02_2018, dp_table_variables, by = "variable")

Johnson_dp03_18 <- inner_join(Johnson_dp03_2018, dp_table_variables, by = "variable")

Johnson_dp04_18 <- inner_join(Johnson_dp04_2018, dp_table_variables, by = "variable")

Johnson_dp05_18 <- inner_join(Johnson_dp05_2018, dp_table_variables, by = "variable")

##sullivan

Sullivan_dp02_18 <- inner_join(Sullivan_dp02_2018, dp_table_variables, by = "variable")

Sullivan_dp03_18 <- inner_join(Sullivan_dp03_2018, dp_table_variables, by = "variable")

Sullivan_dp04_18 <- inner_join(Sullivan_dp04_2018, dp_table_variables, by = "variable")

Sullivan_dp05_18 <- inner_join(Sullivan_dp05_2018, dp_table_variables, by = "variable")

##washington

Washington_dp02_18 <- inner_join(Washington_dp02_2018, dp_table_variables, by = "variable")

Washington_dp03_18 <- inner_join(Washington_dp03_2018, dp_table_variables, by = "variable")

Washington_dp04_18 <- inner_join(Washington_dp04_2018, dp_table_variables, by = "variable")

Washington_dp05_18 <- inner_join(Washington_dp05_2018, dp_table_variables, by = "variable")

##unicoi

Unicoi_dp02_18 <- inner_join(Unicoi_dp02_2018, dp_table_variables, by = "variable")

Unicoi_dp03_18 <- inner_join(Unicoi_dp03_2018, dp_table_variables, by = "variable")

Unicoi_dp04_18 <- inner_join(Unicoi_dp04_2018, dp_table_variables, by = "variable")

Unicoi_dp05_18 <- inner_join(Unicoi_dp05_2018, dp_table_variables, by = "variable")


##2018##

dp02_18 <- rbind(Carter_dp02_18, Greene_dp02_18, Hancock_dp02_18, Hawkins_dp02_18, Johnson_dp02_18, Sullivan_dp02_18, Washington_dp02_18, Unicoi_dp02_18)

dp03_18 <- rbind(Carter_dp03_18, Greene_dp03_18, Hancock_dp03_18, Hawkins_dp03_18, Johnson_dp03_18, Sullivan_dp03_18, Washington_dp03_18, Unicoi_dp03_18)

dp04_18 <- rbind(Carter_dp04_18, Greene_dp04_18, Hancock_dp04_18, Hawkins_dp04_18, Johnson_dp04_18, Sullivan_dp04_18, Washington_dp04_18, Unicoi_dp04_18)

dp05_18 <- rbind(Carter_dp05_18, Greene_dp05_18, Hancock_dp05_18, Hawkins_dp05_18, Johnson_dp05_18, Sullivan_dp05_18, Washington_dp05_18, Unicoi_dp05_18)




#2018#

dp_2018 <- rbind(dp02_18, dp03_18, dp04_18, dp05_18)


#Carter

#2018

Carter_County_dp02_2018 <- get_acs(geography = "county", county = "Carter", state = "TN", table = "DP02", year = 2018, geometry = TRUE)

Carter_County_dp03_2018 <- get_acs(geography = "county", county = "Carter", state = "TN", table = "DP03", year = 2018, geometry = TRUE)

Carter_County_dp04_2018 <- get_acs(geography = "county", county = "Carter", state = "TN", table = "DP04", year = 2018, geometry = TRUE)

Carter_County_dp05_2018 <- get_acs(geography = "county", county = "Carter", state = "TN", table = "DP05", year = 2018, geometry = TRUE)

#Greene

#2018

Greene_County_dp02_2018 <- get_acs(geography = "county", county = "Greene", state = "TN", table = "DP02", year = 2018, geometry = TRUE)

Greene_County_dp03_2018 <- get_acs(geography = "county", county = "Greene", state = "TN", table = "DP03", year = 2018, geometry = TRUE)

Greene_County_dp04_2018 <- get_acs(geography = "county", county = "Greene", state = "TN", table = "DP04", year = 2018, geometry = TRUE)

Greene_County_dp05_2018 <- get_acs(geography = "county", county = "Greene", state = "TN", table = "DP05", year = 2018, geometry = TRUE)

#Hancock

#2018

Hancock_County_dp02_2018 <- get_acs(geography = "county", county = "Hancock", state = "TN", table = "DP02", year = 2018, geometry = TRUE)

Hancock_County_dp03_2018 <- get_acs(geography = "county", county = "Hancock", state = "TN", table = "DP03", year = 2018, geometry = TRUE)

Hancock_County_dp04_2018 <- get_acs(geography = "county", county = "Hancock", state = "TN", table = "DP04", year = 2018, geometry = TRUE)

Hancock_County_dp05_2018 <- get_acs(geography = "county", county = "Hancock", state = "TN", table = "DP05", year = 2018, geometry = TRUE)

#Hawkins

#2018

Hawkins_County_dp02_2018 <- get_acs(geography = "county", county = "Hawkins", state = "TN", table = "DP02", year = 2018, geometry = TRUE)

Hawkins_County_dp03_2018 <- get_acs(geography = "county", county = "Hawkins", state = "TN", table = "DP03", year = 2018, geometry = TRUE)

Hawkins_County_dp04_2018 <- get_acs(geography = "county", county = "Hawkins", state = "TN", table = "DP04", year = 2018, geometry = TRUE)

Hawkins_County_dp05_2018 <- get_acs(geography = "county", county = "Hawkins", state = "TN", table = "DP05", year = 2018, geometry = TRUE)

#Johnson

#2018

Johnson_County_dp02_2018 <- get_acs(geography = "county", county = "Johnson", state = "TN", table = "DP02", year = 2018, geometry = TRUE)

Johnson_County_dp03_2018 <- get_acs(geography = "county", county = "Johnson", state = "TN", table = "DP03", year = 2018, geometry = TRUE)

Johnson_County_dp04_2018 <- get_acs(geography = "county", county = "Johnson", state = "TN", table = "DP04", year = 2018, geometry = TRUE)

Johnson_County_dp05_2018 <- get_acs(geography = "county", county = "Johnson", state = "TN", table = "DP05", year = 2018, geometry = TRUE)

#Sullivan

#2018

Sullivan_County_dp02_2018 <- get_acs(geography = "county", county = "Sullivan", state = "TN", table = "DP02", year = 2018, geometry = TRUE)

Sullivan_County_dp03_2018 <- get_acs(geography = "county", county = "Sullivan", state = "TN", table = "DP03", year = 2018, geometry = TRUE)

Sullivan_County_dp04_2018 <- get_acs(geography = "county", county = "Sullivan", state = "TN", table = "DP04", year = 2018, geometry = TRUE)

Sullivan_County_dp05_2018 <- get_acs(geography = "county", county = "Sullivan", state = "TN", table = "DP05", year = 2018, geometry = TRUE)

#Washington

#2018

Washington_County_dp02_2018 <- get_acs(geography = "county", county = "Washington", state = "TN", table = "DP02", year = 2018, geometry = TRUE)

Washington_County_dp03_2018 <- get_acs(geography = "county", county = "Washington", state = "TN", table = "DP03", year = 2018, geometry = TRUE)

Washington_County_dp04_2018 <- get_acs(geography = "county", county = "Washington", state = "TN", table = "DP04", year = 2018, geometry = TRUE)

Washington_County_dp05_2018 <- get_acs(geography = "county", county = "Washington", state = "TN", table = "DP05", year = 2018, geometry = TRUE)

#Unicoi

#2018

Unicoi_County_dp02_2018 <- get_acs(geography = "county", county = "Unicoi", state = "TN", table = "DP02", year = 2018, geometry = TRUE)

Unicoi_County_dp03_2018 <- get_acs(geography = "county", county = "Unicoi", state = "TN", table = "DP03", year = 2018, geometry = TRUE)

Unicoi_County_dp04_2018 <- get_acs(geography = "county", county = "Unicoi", state = "TN", table = "DP04", year = 2018, geometry = TRUE)

Unicoi_County_dp05_2018 <- get_acs(geography = "county", county = "Unicoi", state = "TN", table = "DP05", year = 2018, geometry = TRUE)

##tennessee

Tennessee_dp02_2018 <- get_acs(geography = "state", state = "TN", table = "DP02", year = 2018, geometry = TRUE)

Tennessee_dp03_2018 <- get_acs(geography = "state", state = "TN", table = "DP03", year = 2018, geometry = TRUE)

Tennessee_dp04_2018 <- get_acs(geography = "state", state = "TN", table = "DP04", year = 2018, geometry = TRUE)

Tennessee_dp05_2018 <- get_acs(geography = "state", state = "TN", table = "DP05", year = 2017, geometry = TRUE)

#US

US_dp02_2018 <- get_acs(geography = "us", table = "DP02", year = 2018)

US_dp03_2018 <- get_acs(geography = "us", table = "DP03", year = 2018)

US_dp04_2018 <- get_acs(geography = "us", table = "DP04", year = 2018)

US_dp05_2018 <- get_acs(geography = "us", table = "DP05", year = 2018)


####2018##

##carter

Carter_County_dp02_18 <- inner_join(Carter_County_dp02_2018, dp_table_variables, by = "variable")

Carter_County_dp03_18 <- inner_join(Carter_County_dp03_2018, dp_table_variables, by = "variable")

Carter_County_dp04_18 <- inner_join(Carter_County_dp04_2018, dp_table_variables, by = "variable")

Carter_County_dp05_18 <- inner_join(Carter_County_dp05_2018, dp_table_variables, by = "variable")

####2018##

##Greene

Greene_County_dp02_18 <- inner_join(Greene_County_dp02_2018, dp_table_variables, by = "variable")

Greene_County_dp03_18 <- inner_join(Greene_County_dp03_2018, dp_table_variables, by = "variable")

Greene_County_dp04_18 <- inner_join(Greene_County_dp04_2018, dp_table_variables, by = "variable")

Greene_County_dp05_18 <- inner_join(Greene_County_dp05_2018, dp_table_variables, by = "variable")

####2018##

##Hancock

Hancock_County_dp02_18 <- inner_join(Hancock_County_dp02_2018, dp_table_variables, by = "variable")

Hancock_County_dp03_18 <- inner_join(Hancock_County_dp03_2018, dp_table_variables, by = "variable")

Hancock_County_dp04_18 <- inner_join(Hancock_County_dp04_2018, dp_table_variables, by = "variable")

Hancock_County_dp05_18 <- inner_join(Hancock_County_dp05_2018, dp_table_variables, by = "variable")  

####2018

##Hawkins

Hawkins_County_dp02_18 <- inner_join(Hawkins_County_dp02_2018, dp_table_variables, by = "variable")

Hawkins_County_dp03_18 <- inner_join(Hawkins_County_dp03_2018, dp_table_variables, by = "variable")

Hawkins_County_dp04_18 <- inner_join(Hawkins_County_dp04_2018, dp_table_variables, by = "variable")

Hawkins_County_dp05_18 <- inner_join(Hawkins_County_dp05_2018, dp_table_variables, by = "variable")

####2018##

##Johnson

Johnson_County_dp02_18 <- inner_join(Johnson_County_dp02_2018, dp_table_variables, by = "variable")

Johnson_County_dp03_18 <- inner_join(Johnson_County_dp03_2018, dp_table_variables, by = "variable")

Johnson_County_dp04_18 <- inner_join(Johnson_County_dp04_2018, dp_table_variables, by = "variable")

Johnson_County_dp05_18 <- inner_join(Johnson_County_dp05_2018, dp_table_variables, by = "variable")

####2018##

##Sullivan

Sullivan_County_dp02_18 <- inner_join(Sullivan_County_dp02_2018, dp_table_variables, by = "variable")

Sullivan_County_dp03_18 <- inner_join(Sullivan_County_dp03_2018, dp_table_variables, by = "variable")

Sullivan_County_dp04_18 <- inner_join(Sullivan_County_dp04_2018, dp_table_variables, by = "variable")

Sullivan_County_dp05_18 <- inner_join(Sullivan_County_dp05_2018, dp_table_variables, by = "variable")

####2018##

##Washington

Washington_County_dp02_18 <- inner_join(Washington_County_dp02_2018, dp_table_variables, by = "variable")

Washington_County_dp03_18 <- inner_join(Washington_County_dp03_2018, dp_table_variables, by = "variable")

Washington_County_dp04_18 <- inner_join(Washington_County_dp04_2018, dp_table_variables, by = "variable")

Washington_County_dp05_18 <- inner_join(Washington_County_dp05_2018, dp_table_variables, by = "variable")

####2018##

##Unicoi

Unicoi_County_dp02_18 <- inner_join(Unicoi_County_dp02_2018, dp_table_variables, by = "variable")

Unicoi_County_dp03_18 <- inner_join(Unicoi_County_dp03_2018, dp_table_variables, by = "variable")

Unicoi_County_dp04_18 <- inner_join(Unicoi_County_dp04_2018, dp_table_variables, by = "variable")

Unicoi_County_dp05_18 <- inner_join(Unicoi_County_dp05_2018, dp_table_variables, by = "variable")

#tennessee 

Tennessee_dp02_18 <- inner_join(Tennessee_dp02_2018, dp_table_variables, by = "variable")

Tennessee_dp03_18 <- inner_join(Tennessee_dp03_2018, dp_table_variables, by = "variable")

Tennessee_dp04_18 <- inner_join(Tennessee_dp04_2018, dp_table_variables, by = "variable")

Tennessee_dp05_18 <- inner_join(Tennessee_dp05_2018, dp_table_variables, by = "variable")

#united states

US_dp02_18 <- inner_join(US_dp02_2018, dp_table_variables, by = "variable")

US_dp03_18 <- inner_join(US_dp03_2018, dp_table_variables, by = "variable")

US_dp04_18 <- inner_join(US_dp04_2018, dp_table_variables, by = "variable")

US_dp05_18 <- inner_join(US_dp05_2018, dp_table_variables, by = "variable")

US_dp_2018 <- rbind(US_dp02_18, US_dp03_18, US_dp04_18, US_dp05_18)



#2018

County_dp02_18 <- rbind(Carter_County_dp02_18, Greene_County_dp02_18, Hancock_County_dp02_18, Hawkins_County_dp02_18, Johnson_County_dp02_18, Sullivan_County_dp02_18, Washington_County_dp02_18, Unicoi_County_dp02_18)

County_dp03_18 <- rbind(Carter_County_dp03_18, Greene_County_dp03_18, Hancock_County_dp03_18, Hawkins_County_dp03_18, Johnson_County_dp03_18, Sullivan_County_dp03_18, Washington_County_dp03_18, Unicoi_County_dp03_18)

County_dp04_18 <- rbind(Carter_County_dp04_18, Greene_County_dp04_18, Hancock_County_dp04_18, Hawkins_County_dp04_18, Johnson_County_dp04_18, Sullivan_County_dp04_18, Washington_County_dp04_18, Unicoi_County_dp04_18)

County_dp05_18 <- rbind(Carter_County_dp05_18, Greene_County_dp05_18, Hancock_County_dp05_18, Hawkins_County_dp05_18, Johnson_County_dp05_18, Sullivan_County_dp05_18, Washington_County_dp05_18, Unicoi_County_dp05_18)

County_dp_2018 <- rbind(County_dp02_18, County_dp03_18, County_dp04_18, County_dp05_18) 


###combine everything

Combined_dp02_18 <- rbind(Tennessee_dp02_18, Carter_County_dp02_18, Greene_County_dp02_18, Hancock_County_dp02_18, Hawkins_County_dp02_18, Johnson_County_dp02_18, Sullivan_County_dp02_18, Washington_County_dp02_18, Unicoi_County_dp02_18)

Combined_dp03_18 <- rbind(Tennessee_dp03_18, Carter_County_dp03_18, Greene_County_dp03_18, Hancock_County_dp03_18, Hawkins_County_dp03_18, Johnson_County_dp03_18, Sullivan_County_dp03_18, Washington_County_dp03_18, Unicoi_County_dp03_18)

Combined_dp04_18 <- rbind(Tennessee_dp04_18, Carter_County_dp04_18, Greene_County_dp04_18, Hancock_County_dp04_18, Hawkins_County_dp04_18, Johnson_County_dp04_18, Sullivan_County_dp04_18, Washington_County_dp04_18, Unicoi_County_dp04_18)

Combined_dp05_18 <- rbind(Tennessee_dp05_18, Carter_County_dp05_18, Greene_County_dp05_18, Hancock_County_dp05_18, Hawkins_County_dp05_18, Johnson_County_dp05_18, Sullivan_County_dp05_18, Washington_County_dp05_18, Unicoi_County_dp05_18)

Combined_dp_2018 <- rbind(Combined_dp02_18, Combined_dp03_18, Combined_dp04_18, Combined_dp05_18)

####this one has Tennessee and county data
  
  ##need to remove geometry to add us data
  
Combined_dp_2018_no_geom <- st_set_geometry(Combined_dp_2018, NULL)


Full_dp_2018 <- rbind(US_dp_2018, Combined_dp_2018_no_geom)



####Demographics####

#### Age ####

age_vars_18 <- c("DP05_0001",  "DP05_0005",  "DP05_0006",  "DP05_0007",  "DP05_0008",  "DP05_0009",
                 "DP05_0010",  "DP05_0011",  "DP05_0012",  "DP05_0013",  "DP05_0014", 
                 "DP05_0015",  "DP05_0016",  "DP05_0017",  "DP05_0018",  "DP05_0021",  "DP05_0024")

age_vars_percent_18 <- c("DP05_0001P", "DP05_0005P",  "DP05_0006P", "DP05_0007P",  "DP05_0008P", 
                         "DP05_0009P",  "DP05_0010P",  "DP05_0011P", "DP05_0012P",  "DP05_0013P",  "DP05_0014P",
                         "DP05_0015P", "DP05_0016P",  "DP05_0017P",  "DP05_0018P",  "DP05_0021P", 
                         "DP05_0024P")

age_col_dt_names_reg <- c("Total Population",  
                          "Age Under 5 Years", "Age 5-9 Years", "Age 10-14 Years",  "Age 15-19 Years", 
                          "Age 20-24 Years",  "Age 25-34 Years",  "Age 35-44 Years",  
                          "Age 45-54 Years",  "Age 55-59 Years",  "Age 60-64 Years", 
                          "Age 65-74 Years",  "Age 75-84 Years",  "Age 85+ Years",  
                          "Median Age", "Age 18+ Years",  "Age 65+ Years")


dt_age_tract_counts <- dp_2018 %>%
  filter(variable %in% age_vars_18)

dt_age_county_counts <- County_dp_2018 %>%
  filter(variable %in% age_vars_18)

dt_age_tract_percent <- dp_2018 %>%
  filter(variable %in% age_vars_percent_18)

dt_age_county_percent <- County_dp_2018 %>%
  filter(variable %in% age_vars_percent_18)

dt_age_combined_counts <- Combined_dp_2018 %>%
  filter(variable %in% age_vars_18)

dt_age_combined_percent <- Combined_dp_2018 %>%
  filter(variable %in% age_vars_percent_18)

dt_age_full_counts <- Full_dp_2018 %>%
  filter(variable %in% age_vars_18)

dt_age_full_percent <- Full_dp_2018 %>%
  filter(variable %in% age_vars_percent_18)

#making data tables for the age variables

#census tracts data table

age_tract_df <- cbind(age_col_dt_names_reg, dt_age_tract_counts, dt_age_tract_percent)

age_tract_dt <- age_tract_df[,c(1,3,5,6,12,13)]

age_dt <- st_set_geometry(age_tract_dt, NULL)

age_dt_names <- c("Age Group", "Census Tract", "Count Estimate", "Count Margin of Error", "Percent of Total Population", "Percent Margin of Error")

names(age_dt) <- age_dt_names

age_data_table <- datatable(age_dt, caption = "Tract Level Age Group Profile for Upper East Tennessee 2018")  

age_data_table


#county data table

dt_age_county_counts <- County_dp_2018 %>%
  filter(variable %in% age_vars_18)

dt_age_county_percent <- County_dp_2018 %>%
  filter(variable %in% age_vars_percent_18)

age_county_df <- cbind(age_col_dt_names_reg, dt_age_county_counts, dt_age_county_percent)

age_county_dt <- age_county_df[,c(1,3,5,6,12,13)]

age_county_dt <- st_set_geometry(age_county_dt, NULL)

age_dt_county_names <- c("Age Group", "County", "Count Estimate", "Count Margin of Error", "Percent of Total Population", "Percent Margin of Error")

names(age_county_dt) <- age_dt_county_names

age_county_data_table <- datatable(age_county_dt, caption = "County Level Age Group Profile for Upper East Tennessee 2018")

age_county_data_table

#tn and county data table


dt_age_combined_counts <- Combined_dp_2018 %>%
  filter(variable %in% age_vars_18)

dt_age_combined_percent <- Combined_dp_2018 %>%
  filter(variable %in% age_vars_percent_18)

age_combined_df <- cbind(age_col_dt_names_reg, dt_age_combined_counts, dt_age_combined_percent)

age_combined_dt <- age_combined_df[,c(1,3,5,6,12,13)]

age_combined_dt <- st_set_geometry(age_combined_dt, NULL)

age_dt_combined_names <- c("Age Group", "Location", "Count Estimate", "Count Margin of Error", "Percent of Total Population", "Percent Margin of Error")

names(age_combined_dt) <- age_dt_combined_names



#us, tn, and county data table

dt_age_full_counts <- Full_dp_2018 %>%
  filter(variable %in% age_vars_18)

dt_age_full_percent <- Full_dp_2018 %>%
  filter(variable %in% age_vars_percent_18)

age_full_df <- cbind(age_col_dt_names_reg, dt_age_full_counts, dt_age_full_percent)

age_full_dt <- age_full_df[,c(1,3,5,6,12,13)]

names(age_full_dt) <- age_dt_combined_names

## filter out relevant age groups for table/graph

age_count_for_table <-age_full_dt %>% 
  filter(`Age Group` == "Total Population" | `Age Group` == "Age Under 5 Years" | `Age Group` == "Age 18+ Years" | `Age Group` == "Age 65+ Years") %>%
  select(`Age Group`, `Location`, `Count Estimate`) %>%
  pivot_wider(names_from = `Age Group`, values_from = c(`Count Estimate`))

age_percent_for_table <- age_full_dt %>%
  filter(`Age Group` == "Total Population" | `Age Group` == "Age Under 5 Years" | `Age Group` == "Age 18+ Years" | `Age Group` == "Age 65+ Years") %>%
  select(`Age Group`, `Location`, `Percent of Total Population`) %>%
  pivot_wider(names_from = `Age Group`, values_from = c(`Percent of Total Population`))

kable_age_count_table <- kable(age_count_for_table, caption = "Selected Age Groups from 2018 ACS") %>%
  kable_styling(latex_options = c("scale_down", "repeat_header", "HOLD_position"))

kable_age_count_table

kable_age_count_html_table <- kable(age_count_for_table, caption = "Selected Age Groups from 2018 ACS") %>%
  kable_styling(latex_options = c("scale_down", "repeat_header", "HOLD_position")) %>%
  kable("html", booktabs = TRUE, escape = FALSE)

kable_age_percent_table <- kable(age_percent_for_table, caption = "Selected Age Groups from 2018 ACS") %>%
  kable_styling(latex_options = c("scale_down", "repeat_header", "HOLD_position"))

kable_age_percent_table

## make some plots with this


    ##this sucks, get the age info from the changes script##

#### race ####


race_vars_18 <- c("DP05_0033", "DP05_0035", "DP05_0037", "DP05_0038", "DP05_0039", "DP05_0044", "DP05_0052",
                  "DP05_0057","DP05_0071", "DP05_0076")

race_percent_vars_18 <- c("DP05_0033P", "DP05_0035P", "DP05_0037P", "DP05_0038P", "DP05_0039P", "DP05_0044P", "DP05_0052P", 
                          "DP05_0057P","DP05_0071P", "DP05_0076P")

race_col_dt_names_reg <- c("Total Population", "Two or More Races", "White Only","AA Only", "AINA Only",
                        "Asian Only", "NHPI Only", "Some Other Race", "Hispanic", "Non-Hispanic")


dt_race_tract_counts <- dp_2018 %>%
  filter(variable %in% race_vars_18)

dt_race_county_counts <- County_dp_2018 %>%
  filter(variable %in% race_vars_18)

dt_race_tract_percent <- dp_2018 %>%
  filter(variable %in% race_percent_vars_18)

dt_race_county_percent <- County_dp_2018 %>%
  filter(variable %in% race_percent_vars_18)

dt_race_combined_counts <- Combined_dp_2018 %>%
  filter(variable %in% race_vars_18)

dt_race_combined_percent <- Combined_dp_2018 %>%
  filter(variable %in% race_percent_vars_18)

dt_race_full_counts <- Full_dp_2018 %>%
  filter(variable %in% race_vars_18)

dt_race_full_percent <- Full_dp_2018 %>%
  filter(variable %in% race_percent_vars_18)

#making data tables for the race variables

#census tracts data table

race_tract_df <- cbind(race_col_dt_names_reg, dt_race_tract_counts, dt_race_tract_percent)

race_tract_dt <- race_tract_df[,c(1,3,5,6,12,13)]

race_dt <- st_set_geometry(race_tract_dt, NULL)

race_dt_names <- c("Racial/Ethnic Group", "Census Tract", "Count Estimate", "Count Margin of Error", "Percent of Total Population", "Percent Margin of Error")

names(race_dt) <- race_dt_names

race_data_table <- datatable(race_dt, caption = "Tract Level race Group Profile for Upper East Tennessee 2018")  

race_data_table


#county data table

dt_race_county_counts <- County_dp_2018 %>%
  filter(variable %in% race_vars_18)

dt_race_county_percent <- County_dp_2018 %>%
  filter(variable %in% race_percent_vars_18)

race_county_df <- cbind(race_col_dt_names_reg, dt_race_county_counts, dt_race_county_percent)

race_county_dt <- race_county_df[,c(1,3,5,6,12,13)]

race_county_dt <- st_set_geometry(race_county_dt, NULL)

race_dt_county_names <- c("Racial/Ethnic Group", "County", "Count Estimate", "Count Margin of Error", "Percent of Total Population", "Percent Margin of Error")

names(race_county_dt) <- race_dt_county_names

race_county_data_table <- datatable(race_county_dt, caption = "County Level race Group Profile for Upper East Tennessee 2018")

race_county_data_table

#tn and county data table


dt_race_combined_counts <- Combined_dp_2018 %>%
  filter(variable %in% race_vars_18)

dt_race_combined_percent <- Combined_dp_2018 %>%
  filter(variable %in% race_percent_vars_18)

race_combined_df <- cbind(race_col_dt_names_reg, dt_race_combined_counts, dt_race_combined_percent)

race_combined_dt <- race_combined_df[,c(1,3,5,6,12,13)]

race_combined_dt <- st_set_geometry(race_combined_dt, NULL)

race_dt_combined_names <- c("Racial/Ethnic Group", "Location", "Count Estimate", "Count Margin of Error", "Percent of Total Population", "Percent Margin of Error")

names(race_combined_dt) <- race_dt_combined_names


#us, tn, and county data table

dt_race_full_counts <- Full_dp_2018 %>%
  filter(variable %in% race_vars_18)

dt_race_full_percent <- Full_dp_2018 %>%
  filter(variable %in% race_percent_vars_18)

race_full_df <- cbind(race_col_dt_names_reg, dt_race_full_counts, dt_race_full_percent)

race_full_dt <- race_full_df[,c(1,3,5,6,12,13)]

names(race_full_dt) <- race_dt_combined_names


##### FIX THIS ###
## filter out relevant race groups for table/graph

race_count_for_table <- race_full_dt %>%
  filter(!c(`Racial/Ethnic Group` == "Hispanic" | `Racial/Ethnic Group` == "Non-Hispanic")) %>%
  select(`Racial/Ethnic Group`, `Location`, `Count Estimate`) %>%
  pivot_wider(names_from = `Racial/Ethnic Group`, values_from = `Count Estimate`) 

race_count_for_table <- race_count_for_table[,c(1,2,4,5,6,7,8,3,9)]


race_percent_for_table <- race_full_dt %>%
  filter(!c(`Racial/Ethnic Group` == "Hispanic" | `Racial/Ethnic Group` == "Non-Hispanic" | `Racial/Ethnic Group` == "Total Population")) %>%
  select(`Racial/Ethnic Group`, `Location`, `Percent of Total Population`) %>%
  pivot_wider(names_from = `Racial/Ethnic Group`, values_from = `Percent of Total Population`)

race_percent_for_table <- race_percent_for_table[,c(1,3,4,5,6,7,2,8)]

datatable(race_percent_for_table)

hispanic_count_for_table <- race_full_dt %>%
  filter(`Racial/Ethnic Group` == "Hispanic" | `Racial/Ethnic Group` == "Non-Hispanic") %>%
  select(`Racial/Ethnic Group`, `Location`, `Count Estimate`) %>%
  pivot_wider(names_from = `Racial/Ethnic Group`, values_from = `Count Estimate`)

hispanic_percent_for_table <- race_full_dt %>%
  filter(`Racial/Ethnic Group` == "Hispanic" | `Racial/Ethnic Group` == "Non-Hispanic") %>%
  select(`Racial/Ethnic Group`, `Location`, `Percent of Total Population`) %>%
  pivot_wider(names_from = `Racial/Ethnic Group`, values_from = `Percent of Total Population`)

datatable(hispanic_percent_for_table)

kable_race_count_table <- kable(race_count_for_table, caption = "Racial Groups from 2018 ACS") %>%
  kable_styling(latex_options = c("scale_down", "repeat_header", "HOLD_position"))

kable_race_count_table

kable_race_percent_table <- kable(race_percent_for_table, caption = "Racial Groups Percent of Population from 2018 ACS") %>%
  kable_styling(latex_options = c("scale_down", "repeat_header", "HOLD_position"))

kable_race_percent_table

datatable(race_percent_for_table)

kable_hispanic_count_table <- kable(hispanic_count_for_table, caption = "Hispanic Population Count from 2018 ACS") %>%
  kable_styling(latex_options = c("scale_down", "repeat_header", "HOLD_position"))

kable_hispanic_count_table

kable_hispanic_percent_table <- kable(hispanic_percent_for_table, caption = "Hispanic Percent of Population from 2018 ACS") %>%
  kable_styling(latex_options = c("scale_down", "repeat_header", "HOLD_position"))

kable_hispanic_percent_table

## plots

race_full_dt %>%
  filter(Location == "Tennessee")

Geography <- c(rep("US",10), rep("TN",10), rep("Carter", 10), rep("Greene", 10), rep("Hancock", 10), rep("Hawkins", 10), rep("Johnson", 10), rep("Sullivan", 10), rep("Washington", 10), rep("Unicoi",10))

race_full_for_plots <- cbind(race_full_dt, Geography)
race_full_for_plots$Geography <- factor(race_full_for_plots$Geography, levels = c("US", "TN", "Carter", "Greene", "Hancock", "Hawkins", "Johnson", "Sullivan", "Washington", "Unicoi"))

racial_percent_bar_chart <- race_full_for_plots %>%
  filter(!c(`Racial/Ethnic Group` == "Hispanic" | `Racial/Ethnic Group` == "Non-Hispanic" | `Racial/Ethnic Group` == "Total Population")) %>%
  ggplot(aes(y = `Percent of Total Population`, x = `Geography`, fill = `Racial/Ethnic Group`)) +
  geom_bar(stat = "identity", position = "stack")

racial_percent_bar_chart

hispanic_bar_chart <- race_full_for_plots %>%
  filter(`Racial/Ethnic Group` == "Hispanic" |`Racial/Ethnic Group` == "Non-Hispanic" ) %>%
  ggplot(aes(y = `Percent of Total Population`, x = `Geography`, fill = `Racial/Ethnic Group`))+
  geom_bar(stat = "identity", position = "dodge")

hispanic_bar_chart

#### Social Characteristics ####
###households##

household_vars_18 <- c("DP02_0001", "DP02_0002", "DP02_0003", "DP02_0004", "DP02_0007", "DP02_0009", "DP02_0012", "DP02_0013",
                       "DP02_0015", "DP02_0016", "DP02_0017", "DP02_0020", "DP02_0044", "DP02_0045", "DP02_0046", "DP02_0047",
                       "DP02_0048", "DP02_0050")

household_percent_vars_18 <- c("DP02_0001P", "DP02_0002P", "DP02_0003P", "DP02_0004P", "DP02_0007P", "DP02_0009P", "DP02_0012P", "DP02_0013P",
                               "DP02_0015P", "DP02_0016P", "DP02_0017P", "DP02_0020P", "DP02_0044P", "DP02_0045P", "DP02_0046P", "DP02_0047P",
                               "DP02_0048P", "DP02_0050P")

household_vars_names_18 <- c("Total Households", "Family Households", "Family Households with Children under 18", "Married Couple Family Households",
                             "Single Male Households with Children under 18", "Single Female Households with Children under 18", "Households of Age 65 or Greater Living Alone",
                             "Total Households with Children under 18", "Average Household Size", "Average Family Size", "Population in Households", "Children in Households", 
                             "Number of Grandparents Living With and Responsible for Children under 18 Years Old", "Number of Grandparents Living With and Responsible for Children under 1 Year Old",
                             "Number of Grandparents Living With and Responsible for Children 1-2 Years Old", "Number of Grandparents Living With and Responsible for Children 3-4 Years Old",
                             "Number of Grandparents Living With and Responsible for Children 5+ Years Old", "Number of Female Grandparents Living With and Responsible for Children under 18 Years Old")


df_household_tract_counts_18 <- dp_2018 %>%
  filter(variable %in% household_vars_18)

df_household_county_counts_18 <- County_dp_2018 %>%
  filter(variable %in% household_vars_18)

df_household_tract_percent_18 <- dp_2018 %>%
  filter(variable %in% household_percent_vars_18)

df_household_county_percent_18 <- County_dp_2018 %>%
  filter(variable %in% household_percent_vars_18)

df_household_combined_counts_18 <- Combined_dp_2018 %>%
  filter(variable %in% household_vars_18)

df_household_combined_percent_18 <- Combined_dp_2018 %>%
  filter(variable %in% household_percent_vars_18)

df_household_full_counts_18 <- Full_dp_2018 %>%
  filter(variable %in% household_vars_18)

df_household_full_percent_18 <- Full_dp_2018 %>%
  filter(variable %in% household_percent_vars_18)


##combine the percents into one table

df_household_tract_18 <- cbind(household_vars_names_18, df_household_tract_counts_18, df_household_tract_percent_18)

df_household_county_18 <- cbind(household_vars_names_18, df_household_county_counts_18, df_household_county_percent_18)    

df_household_combined_18 <- cbind(household_vars_names_18, df_household_combined_counts_18, df_household_combined_percent_18)

df_household_full_18 <- cbind(household_vars_names_18, df_household_full_counts_18, df_household_full_percent_18)

trimmed_df_household_tract_18 <- df_household_tract_18[,c(1,3,5,6,12,13)] #these are the ones with the location data

trimmed_df_household_county_18 <- df_household_county_18[,c(1,3,5,6,12,13)] #these are the ones with the location data

trimmed_df_household_combined_18 <- df_household_combined_18[,c(1,3,5,6,12,13)]

trimmed_df_household_full_18 <- df_household_full_18[,c(1,3,5,6,12,13)] # no location data because it has full US values

##get ride of location data for the tract/county

data_table_household_tract_18 <- st_set_geometry(trimmed_df_household_tract_18, NULL)

data_table_household_county_18 <- st_set_geometry(trimmed_df_household_county_18, NULL)

data_table_household_combined_18 <- st_set_geometry(trimmed_df_household_combined_18, NULL)


##rename the columns 


household_table_tract_names <- c("Household Measure", "Census Tract", "Count", "Margin of Error", "Percent", "Percent Margin of Error")

household_table_county_names <- c("Household Measure", "County", "Count", "Margin of Error", "Percent", "Percent Margin of Error") 

household_table_combined_names <- c()

household_table_full_names <- c()

names(data_table_household_tract_18) <- household_table_tract_names

names(data_table_household_county_18) <- household_table_county_names

##make the data tables

household_tract_data_table_18 <- datatable(data_table_household_tract_18, caption = "Household Characteristics of Census Tract Groups for Upper East Tennessee 2018")

household_county_data_table_18 <- datatable(data_table_household_county_18, caption = "Household Characteristics County Level for Upper East Tennessee 2018")

household_tract_data_table_18  

household_county_data_table_18
