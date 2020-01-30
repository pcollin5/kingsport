####

#load packages

  packages <- c("acs", "tidyverse", "tidycensus", "tigris", "leaflet", "mapview", "tmap", "DT", "sf", "gganimate", "report")
 
  lapply(packages, library, character.only = TRUE)

#get variables names, make pretty

  dp_table_variables_18 <- load_variables(2018, "acs5/profile", cache = TRUE)

  new_names_18 <- c("variable", "label", "concept")

  names(dp_table_variables_18) <- new_names_18

  
#load the data 
  
  Sullivan_dp02_2018 <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "DP02", year = 2018, geometry = TRUE)
  
  Sullivan_dp03_2018 <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "DP03", year = 2018, geometry = TRUE)
  
  Sullivan_dp04_2018 <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "DP04", year = 2018, geometry = TRUE)
  
  Sullivan_dp05_2018 <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "DP05", year = 2018, geometry = TRUE)
  
  Hawkins_dp02_2018 <- get_acs(geography = "tract", county = "Hawkins", state = "TN", table = "DP02", year = 2018, geometry = TRUE)
  
  Hawkins_dp03_2018 <- get_acs(geography = "tract", county = "Hawkins", state = "TN", table = "DP03", year = 2018, geometry = TRUE)
  
  Hawkins_dp04_2018 <- get_acs(geography = "tract", county = "Hawkins", state = "TN", table = "DP04", year = 2018, geometry = TRUE)
  
  Hawkins_dp05_2018 <- get_acs(geography = "tract", county = "Hawkins", state = "TN", table = "DP05", year = 2018, geometry = TRUE)
  
  Sullivan_dp02_18 <- inner_join(Sullivan_dp02_2018, dp_table_variables_18, by = "variable")
  
  Sullivan_dp03_18 <- inner_join(Sullivan_dp03_2018, dp_table_variables_18, by = "variable")
  
  Sullivan_dp04_18 <- inner_join(Sullivan_dp04_2018, dp_table_variables_18, by = "variable")
  
  Sullivan_dp05_18 <- inner_join(Sullivan_dp05_2018, dp_table_variables_18, by = "variable")
  
  Hawkins_dp02_18 <- inner_join(Hawkins_dp02_2018, dp_table_variables_18, by = "variable")
  
  Hawkins_dp03_18 <- inner_join(Hawkins_dp03_2018, dp_table_variables_18, by = "variable")
  
  Hawkins_dp04_18 <- inner_join(Hawkins_dp04_2018, dp_table_variables_18, by = "variable")
  
  Hawkins_dp05_18 <- inner_join(Hawkins_dp05_2018, dp_table_variables_18, by = "variable")
  
  
  Sullivan_data_profile <- rbind(Sullivan_dp02_18, Sullivan_dp03_18, Sullivan_dp04_18, Sullivan_dp05_18)
  
  Hawkins_data_profile <- rbind(Hawkins_dp02_18, Hawkins_dp03_18, Hawkins_dp04_18, Hawkins_dp05_18)
  
  combined_tract_dp <- rbind(Sullivan_data_profile, Hawkins_data_profile)
  
  Sullivan_County_dp02_2018 <- get_acs(geography = "county", county = "Sullivan", state = "TN", table = "DP02", year = 2018, geometry = TRUE)
  
  Sullivan_County_dp03_2018 <- get_acs(geography = "county", county = "Sullivan", state = "TN", table = "DP03", year = 2018, geometry = TRUE)
  
  Sullivan_County_dp04_2018 <- get_acs(geography = "county", county = "Sullivan", state = "TN", table = "DP04", year = 2018, geometry = TRUE)
  
  Sullivan_County_dp05_2018 <- get_acs(geography = "county", county = "Sullivan", state = "TN", table = "DP05", year = 2018, geometry = TRUE)
  
  Hawkins_County_dp02_2018 <- get_acs(geography = "county", county = "Hawkins", state = "TN", table = "DP02", year = 2018, geometry = TRUE)
  
  Hawkins_County_dp03_2018 <- get_acs(geography = "county", county = "Hawkins", state = "TN", table = "DP03", year = 2018, geometry = TRUE)
  
  Hawkins_County_dp04_2018 <- get_acs(geography = "county", county = "Hawkins", state = "TN", table = "DP04", year = 2018, geometry = TRUE)
  
  Hawkins_County_dp05_2018 <- get_acs(geography = "county", county = "Hawkins", state = "TN", table = "DP05", year = 2018, geometry = TRUE)
  
  Sullivan_County_dp02_18 <- inner_join(Sullivan_County_dp02_2018, dp_table_variables_18, by = "variable")
  
  Sullivan_County_dp03_18 <- inner_join(Sullivan_County_dp03_2018, dp_table_variables_18, by = "variable")
  
  Sullivan_County_dp04_18 <- inner_join(Sullivan_County_dp04_2018, dp_table_variables_18, by = "variable")
  
  Sullivan_County_dp05_18 <- inner_join(Sullivan_County_dp05_2018, dp_table_variables_18, by = "variable")
  
  Hawkins_County_dp02_18 <- inner_join(Hawkins_County_dp02_2018, dp_table_variables_18, by = "variable")
  
  Hawkins_County_dp03_18 <- inner_join(Hawkins_County_dp03_2018, dp_table_variables_18, by = "variable")
  
  Hawkins_County_dp04_18 <- inner_join(Hawkins_County_dp04_2018, dp_table_variables_18, by = "variable")
  
  Hawkins_County_dp05_18 <- inner_join(Hawkins_County_dp05_2018, dp_table_variables_18, by = "variable")
  
  
  Sullivan_County_data_profile <- rbind(Sullivan_County_dp02_18, Sullivan_County_dp03_18, Sullivan_County_dp04_18, Sullivan_County_dp05_18)
  
  Hawkins_County_data_profile <- rbind(Hawkins_County_dp02_18, Hawkins_County_dp03_18, Hawkins_County_dp04_18, Hawkins_County_dp05_18)
  
  combined_county_dp <- rbind(Sullivan_County_data_profile, Hawkins_County_data_profile)
  
  
#these are named wrong, the dataprofiles are for all tennessee school districts until if is filtered below as 
#kingsport data profile 
  
  kpt_dp02_2018 <- get_acs(geography = "school district (unified)",  state = "TN", table = "DP02", year = 2018)
  
  kpt_dp03_2018 <- get_acs(geography = "school district (unified)",  state = "TN", table = "DP03", year = 2018)
  
  kpt_dp04_2018 <- get_acs(geography = "school district (unified)",  state = "TN", table = "DP04", year = 2018)
  
  kpt_dp05_2018 <- get_acs(geography = "school district (unified)",  state = "TN", table = "DP05", year = 2018)
  
  kptcity_dp02_18 <- inner_join(kpt_dp02_2018, dp_table_variables_18, by = "variable")
  
  kptcity_dp03_18 <- inner_join(kpt_dp03_2018, dp_table_variables_18, by = "variable")
  
  kptcity_dp04_18 <- inner_join(kpt_dp04_2018, dp_table_variables_18, by = "variable")
  
  kptcity_dp05_18 <- inner_join(kpt_dp05_2018, dp_table_variables_18, by = "variable")
  
  tn_data_profile_18 <- rbind(kptcity_dp02_18, kptcity_dp03_18, kptcity_dp04_18, kptcity_dp05_18)
  
  districts <- school_districts(state = "TN", type = "unified", refresh = TRUE)
  
  districts <- st_as_sf(districts)
  
  kpt_18 <- districts %>%
    filter(NAME == "Kingsport City School District")

  kpt_data_profile_18 <- tn_data_profile_18 %>%
    filter(NAME == "Kingsport City School District, Tennessee")

#Demographics Section
  
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
  
  age_col_dt_names_percent <- c("Total Population Percentage","Age Under 5 Years Percentage","Age 5-9 Years Percentage", "Age 10-14 Years Percentage","Age 15-19 Years Percentage", "Age 20-24 Years Percentage",
                                 "Age 25-34 Years Percentage", "Age 35-44 Years Percentage", "Age 45-54 Years Percentage", "Age 55-59 Years Percentage", "Age 60-64 Years Percentage", "Age 65-74 Years Percentage",
                                 "Age 75-84 Years Percentage","Age 85+ Years Percentage","Median Age Percentage", "Age 18+ Years Percentage", "Age 65+ Years Percentage" )
  
  
  dt_age_tract_counts <- combined_tract_dp %>%
    filter(variable %in% age_vars_18)
  
  dt_age_county_counts <- combined_county_dp %>%
    filter(variable %in% age_vars_18)
  
  dt_age_tract_percent <- combined_tract_dp %>%
    filter(variable %in% age_vars_percent_18)
  
  dt_age_county_percent <- combined_county_dp %>%
    filter(variable %in% age_vars_percent_18)
  
  dt_age_kpt_counts_18 <- kpt_data_profile_18 %>%
    filter(variable %in% age_vars_18)
  
  dt_age_kpt_percent_18 <- kpt_data_profile_18 %>%
    filter(variable %in% age_vars_percent_18)
  
#making data tables for the age variables
  
  #census tracts data table
  
  age_tract_df <- cbind(age_col_dt_names_reg, dt_age_tract_counts, dt_age_tract_percent)
  
  age_tract_dt <- age_tract_df[,c(1,3,5,6,12,13)]
  
  age_dt <- st_set_geometry(age_tract_dt, NULL)
  
  age_dt_names <- c("Age Group", "Census Tract", "Count Estimate", "Count Margin of Error", "Percent of Total Population", "Percent Margin of Error")
  
  names(age_dt) <- age_dt_names
  
  age_data_table <- datatable(age_dt)  

  age_data_table
  
  #county data table
  
  dt_age_county_counts <- combined_county_dp %>%
    filter(variable %in% age_vars)
  
  dt_age_county_percent <- combined_county_dp %>%
    filter(variable %in% age_vars_percent)
  
  age_county_df <- cbind(age_col_dt_names_reg, dt_age_county_counts, dt_age_county_percent)
  
  age_county_dt <- age_county_df[,c(1,3,5,6,12,13)]
  
  age_county_dt <- st_set_geometry(age_county_dt, NULL)
  
  age_dt_county_names <- c("Age Group", "County", "Count Estimate", "Count Margin of Error", "Percent of Total Population", "Percent Margin of Error")
  
  names(age_county_dt) <- age_dt_county_names
  
  age_county_data_table <- datatable(age_county_dt, caption = "Table 1: Sullivan and Hawkins County, Tennessee Age Groups")
  
  age_county_data_table
  
  #kingsport city data table
  
  dt_age_kpt_counts_18 <- kpt_data_profile_18 %>%
    filter(variable %in% age_vars_18)
  
  dt_age_kpt_percent_18 <- kpt_data_profile_18 %>%
    filter(variable %in% age_vars_percent_18)
  
  age_kpt_df_18 <- cbind(age_col_dt_names_reg, dt_age_kpt_counts_18, dt_age_kpt_percent_18)

  age_kpt_dt_18 <- age_kpt_df_18[,c(1,5,6,12,13)]  

  #age_kpt_dt <- st_set_geometry(age_kpt_dt, NULL)  DONT NEED THIS BECAUSE THE SCHOOL DISTRICT DATA PULL DOESN"T SUPPORT LOCAITON DIRECTLY YET
  
  age_dt_kpt_names <- c("Age Group", "Count Estimate", "Count Margin of Error", "Percent of Total Population", "Percent Margin of Error")
  
  names(age_kpt_dt_18) <- age_dt_kpt_names  

  age_kpt_data_table_18 <- datatable(age_kpt_dt_18, caption = "Table 2: Kingsport, Tennessee Age Groups, 2018")  

  age_kpt_data_table_18  
  
  #I'm curious to see how its changed since 2013
  
  dp_table_variables_13 <- load_variables(2013, "acs5/profile", cache = TRUE)
  
  new_names_13 <- c("variable", "label", "concept")
  
  names(dp_table_variables_13) <- new_names_13
  
  dp_table_variables_14 <- load_variables(2014, "acs5/profile", cache = TRUE)
  
  new_names_14 <- c("variable", "label", "Concept")
  
  names(dp_table_variables_14) <- new_names_14
  
  
  kpt_dp02_2013 <- get_acs(geography = "school district (unified)",  state = "TN", table = "DP02", year = 2013)
  
  kpt_dp03_2013 <- get_acs(geography = "school district (unified)",  state = "TN", table = "DP03", year = 2013)
  
  kpt_dp04_2013 <- get_acs(geography = "school district (unified)",  state = "TN", table = "DP04", year = 2013)
  
  kpt_dp05_2013 <- get_acs(geography = "school district (unified)",  state = "TN", table = "DP05", year = 2013)
  
  kptcity_dp02_13 <- inner_join(kpt_dp02_2013, dp_table_variables_13, by = "variable")
  
  kptcity_dp03_13 <- inner_join(kpt_dp03_2013, dp_table_variables_13, by = "variable")
  
  kptcity_dp04_13 <- inner_join(kpt_dp04_2013, dp_table_variables_13, by = "variable")
  
  kptcity_dp05_13 <- inner_join(kpt_dp05_2013, dp_table_variables_13, by = "variable")
  
  tn_data_profile_13 <- rbind(kptcity_dp02_13, kptcity_dp03_13, kptcity_dp04_13, kptcity_dp05_13)
  
  districts <- school_districts(state = "TN", type = "unified", refresh = TRUE)
  
  districts <- st_as_sf(districts)
  
  kpt_13 <- districts %>%
    filter(NAME == "Kingsport City School District")
  
  kpt_data_profile_13 <- tn_data_profile_13 %>%
    filter(NAME == "Kingsport City School District, Tennessee")
  
  ###2013 has different variable numbers starting at DP05_0004 because sex ratio is gone
  
  age_vars_13 <- c("DP05_0001",  "DP05_0004",  "DP05_0005",  "DP05_0006",  "DP05_0007",  "DP05_0008",
                   "DP05_0009",  "DP05_0010",  "DP05_0011",  "DP05_0012",  "DP05_0013", 
                   "DP05_0014",  "DP05_0015",  "DP05_0016",  "DP05_0017",  "DP05_0018",  "DP05_0021")
  
  age_vars_percent_13 <- c("DP05_0001P", "DP05_0004P",  "DP05_0005P", "DP05_0006P",  "DP05_0007P", 
                           "DP05_0008P",  "DP05_0009P",  "DP05_0010P", "DP05_0011P",  "DP05_0012P",  "DP05_0013P",
                           "DP05_0014P", "DP05_0015P",  "DP05_0016P",  "DP05_0017P",  "DP05_0018P", 
                           "DP05_0021P")
  
  
  dt_age_kpt_counts_13 <- kpt_data_profile_13 %>%
    filter(variable %in% age_vars_13)
  
  dt_age_kpt_percent_13 <- kpt_data_profile_13 %>%
    filter(variable %in% age_vars_percent_13)
  
  age_kpt_df_13 <- cbind(age_col_dt_names_reg, dt_age_kpt_counts_13, dt_age_kpt_percent_13)
  
  age_kpt_dt_13 <- age_kpt_df_13[,c(1,5,6,12,13)]  
  
  #age_kpt_dt <- st_set_geometry(age_kpt_dt, NULL)  DONT NEED THIS BECAUSE THE SCHOOL DISTRICT DATA PULL DOESN"T SUPPORT LOCAITON DIRECTLY YET
  
  age_dt_kpt_names <- c("Age Group", "Count Estimate", "Count Margin of Error", "Percent of Total Population", "Percent Margin of Error")
  
  names(age_kpt_dt_13) <- age_dt_kpt_names  
  
  age_kpt_data_table_13 <- datatable(age_kpt_dt_13, caption = "Table 3: Kingsport, Tennessee Age Groups 2013")  
  
  age_kpt_data_table_13 	
  