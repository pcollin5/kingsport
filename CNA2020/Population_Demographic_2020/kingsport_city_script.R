#POPULATION AND DEMOGRAHPICS DATA KINGSPORT CITY#

kpt_packages <- c("tidyverse", "tidycensus", "leaflet", "mapview", "DT", "sf", "report", "tigris")

lapply(kpt_packages, library, character.only = TRUE)

dp_variables_2018 <- load_variables(2018, "acs5/profile", cache = TRUE)    

st_variables_2018 <- load_variables(2018, "acs5/subject", cache = TRUE)

dp_variables_2013 <- load_variables(2013, "acs5/profile", cache = TRUE)

st_variables_2013 <- load_variables(2013, "acs5/subject", cache = TRUE)

new_names <- c("variable", "label", "concept")

names(dp_variables_2018) <- new_names

names(st_variables_2018) <- new_names

names(dp_variables_2013) <- new_names

names(st_variables_2013) <- new_names

####load the school disctrict data####

  #need tigris data for mapping#

     districts <- school_districts(state = "TN", type = "unified", refresh = TRUE)

     districts <- st_as_sf(districts)

      kpt <- districts %>%
      filter(NAME == "Kingsport City School District")

  #2018
    
    tn_dp02_2018 <- get_acs(geography = "school district (unified)",  state = "TN", table = "DP02", year = 2018)

    tn_dp03_2018 <- get_acs(geography = "school district (unified)",  state = "TN", table = "DP03", year = 2018)

    tn_dp04_2018 <- get_acs(geography = "school district (unified)",  state = "TN", table = "DP04", year = 2018)

    tn_dp05_2018 <- get_acs(geography = "school district (unified)",  state = "TN", table = "DP05", year = 2018)

    #make the variable names make more sense#
    
    pretty_tn_dp02_18 <- inner_join(tn_dp02_2018, dp_variables_2018, by = "variable")

    pretty_tn_dp03_18 <- inner_join(tn_dp03_2018, dp_variables_2018, by = "variable")

    pretty_tn_dp04_18 <- inner_join(tn_dp04_2018, dp_variables_2018, by = "variable")

    pretty_tn_dp05_18 <- inner_join(tn_dp05_2018, dp_variables_2018, by = "variable")
    
    #combine them all togther#
    
    tn_data_profile_18 <- rbind(pretty_tn_dp02_18, pretty_tn_dp03_18, pretty_tn_dp04_18, pretty_tn_dp05_18)
    
    kpt_data_profile_18 <- tn_data_profile_18 %>%
      filter(NAME == "Kingsport City School District, Tennessee")
    
    #2013
    
    tn_dp02_2013 <- get_acs(geography = "school district (unified)",  state = "TN", table = "DP02", year = 2013)
    
    tn_dp03_2013 <- get_acs(geography = "school district (unified)",  state = "TN", table = "DP03", year = 2013)
    
    tn_dp04_2013 <- get_acs(geography = "school district (unified)",  state = "TN", table = "DP04", year = 2013)
    
    tn_dp05_2013 <- get_acs(geography = "school district (unified)",  state = "TN", table = "DP05", year = 2013)
    
    #make the variable names make more sense#
    
    pretty_tn_dp02_13 <- inner_join(tn_dp02_2013, dp_variables_2013, by = "variable")
    
    pretty_tn_dp03_13 <- inner_join(tn_dp03_2013, dp_variables_2013, by = "variable")
    
    pretty_tn_dp04_13 <- inner_join(tn_dp04_2013, dp_variables_2013, by = "variable")
    
    pretty_tn_dp05_13 <- inner_join(tn_dp05_2013, dp_variables_2013, by = "variable")
    
    #combine them all togther#
    
    tn_data_profile_13 <- rbind(pretty_tn_dp02_13, pretty_tn_dp03_13, pretty_tn_dp04_13, pretty_tn_dp05_13)
    
    kpt_data_profile_13 <- tn_data_profile_13 %>%
      filter(NAME == "Kingsport City School District, Tennessee")

    