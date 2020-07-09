####Transportation####  
  ##this is out of place in the report but I wanted to look at it for Tim##

  transportation_vars_18_dp03 <- c("DP03_0018", "DP03_0019", "DP03_0020", "DP03_0021", "DP03_0022", "DP03_0023", "DP03_0024", 
                              "DP03_0025")
  
  transportation_vars_18_dp04 <- c("DP04_0057", "DP04_0058", "DP04_0059", "DP04_0060", "DP04_0061")
  
  transportation_percent_vars_18_dp03 <- c("DP03_0018P", "DP03_0019P", "DP03_0020P", "DP03_0021P", "DP03_0022P", 
                                       "DP03_0023P", "DP03_0024P", "DP03_0025P")
  
  transportation_percent_vars_18_dp04 <- c("DP04_0057P", "DP04_0058P", "DP04_0059P", "DP04_0060P", "DP04_0061P")
  
  transportation_vars_names_18_dp03 <- c("Total number of Workers Age 16 and Older",
                                  "Number of Workers Driving to Work Alone", "Number of Workers Carpooling", "Number of Workers that Use Public Transit", "Number of Workers that Walk", 
                                  "Number of Workers that used Other Means",  "Number of Workers that Work from Home", "Average Travel Time to Work")
  
  transportation_vars_names_18_dp04 <- c("Total Occupied Housing Units", "Occupied Housing Units with 0 Vehicles Available", "Occupied Housing Units with 1 Vehicle Available", 
                                         "Occupied Housing Units with 2 Vehicles Available", "Occupied Housing Units with 3 or More Vehicles Available")
  
  length(transportation_vars_18_dp03)
  length(transportation_percent_vars_18_dp03)
  length(transportation_vars_names_18_dp03)
  length(transportation_vars_18_dp04)
  length(transportation_percent_vars_18_dp04)
  length(transportation_vars_names_18_dp04)
  
  
  
  
  df_transportation_tract_counts_18_dp03 <- combined_tract_dp_18 %>%
    filter(variable %in% transportation_vars_18_dp03)
  
  df_transportation_county_counts_18_dp03 <- combined_county_dp_18 %>%
    filter(variable %in% transportation_vars_18_dp03)
  
  df_transportation_tract_percent_18_dp03 <- combined_tract_dp_18 %>%
    filter(variable %in% transportation_percent_vars_18_dp03)
  
  df_transportation_county_percent_18_dp03 <- combined_county_dp_18 %>%
    filter(variable %in% transportation_percent_vars_18_dp03)
  
  df_transportation_kpt_counts_18_dp03 <- kpt_data_profile_18 %>%
    filter(variable %in% transportation_vars_18_dp03)
  
  df_transportation_kpt_percent_18_dp03 <- kpt_data_profile_18 %>%
    filter(variable %in% transportation_percent_vars_18_dp03)
  
  df_transportation_tract_counts_18_dp04 <- combined_tract_dp_18 %>%
    filter(variable %in% transportation_vars_18_dp04)
  
  df_transportation_county_counts_18_dp04 <- combined_county_dp_18 %>%
    filter(variable %in% transportation_vars_18_dp04)
  
  df_transportation_tract_percent_18_dp04 <- combined_tract_dp_18 %>%
    filter(variable %in% transportation_percent_vars_18_dp04)
  
  df_transportation_county_percent_18_dp04 <- combined_county_dp_18 %>%
    filter(variable %in% transportation_percent_vars_18_dp04)
  
  df_transportation_kpt_counts_18_dp04 <- kpt_data_profile_18 %>%
    filter(variable %in% transportation_vars_18_dp04)
  
  df_transportation_kpt_percent_18_dp04 <- kpt_data_profile_18 %>%
    filter(variable %in% transportation_percent_vars_18_dp04)

  ####the tracts are wrong####
  
  df_transportation_tract_18_dp03 <- cbind(transportation_vars_names_18_dp03, df_transportation_tract_counts_18_dp03, df_transportation_tract_percent_18_dp03)
  
  df_transportation_county_18_dp03 <- cbind(transportation_vars_names_18_dp03, df_transportation_county_counts_18_dp03, df_transportation_county_percent_18_dp03)
  
  df_transportation_kpt_18_dp03 <- cbind(transportation_vars_names_18_dp03, df_transportation_kpt_counts_18_dp03, df_transportation_kpt_percent_18_dp03)
  
  

  ###
  
  
  
  names(df_transportation_county_18_dp03)  
  
  transp_names_dp03 <- names(df_transportation_county_18_dp03)
  
  transp_names_2_dp03 <- transp_names_dp03[-c(16,17)]  
  
  names(df_transportation_kpt_18_dp03) <- transp_names_2_dp03

  transportation_kpt_18_for_map <- left_join(kpt_18, df_transportation_kpt_18, by = "GEOID")  
  
  head(transportation_kpt_18_for_map) 
  
  
  
  trimmed_df_transportation_tract_18 <- df_transportation_tract_18[,c(1,3,5,6,12,13)] #these are the ones with the location data
  
  trimmed_df_transportation_county_18 <- df_transportation_county_18[,c(1,3,5,6,12,13)] #these are the ones with the location data
  
  trimmed_df_transportation_kpt_18 <- df_transportation_kpt_18[,c(1,5,6,12,13)] # no location data
  
  
  ##get ride of location data for the tract/county
  
  data_table_transportation_tract_18 <- st_set_geometry(trimmed_df_transportation_tract_18, NULL)
  
  data_table_transportation_county_18 <- st_set_geometry(trimmed_df_transportation_county_18, NULL)
  
  data_table_transportation_kpt_18 <- trimmed_df_transportation_kpt_18
  
  ##rename the columns 
  
  
  transportation_table_tract_names <- c("Transportation Measure", "Census Tract", "Count", "Margin of Error", "Percent", "Percent Margin of Error")
  
  transportation_table_county_names <- c("Transportation Measure", "County", "Count", "Margin of Error", "Percent", "Percent Margin of Error")  
  
  transportation_table_kpt_names <- c("Transportation Measure", "Count", "Margin of Error", "Percent", "Percent Margin of Error")
  
  names(data_table_transportation_tract_18) <- transportation_table_tract_names
  
  names(data_table_transportation_tract_18) <- transportation_table_tract_names
  
  names(data_table_transportation_county_18) <- transportation_table_county_names
  
  names(data_table_transportation_kpt_18) <- transportation_table_kpt_names
  
  ##make the data tables
  
  transportation_tract_data_table_18 <- datatable(data_table_transportation_tract_18, caption = "Transportation Characteristics of Census Tract Groups for Sullivan and Hawkins County, Tennessee 2018")
  
  transportation_county_data_table_18 <- datatable(data_table_transportation_county_18, caption = "Transportation Characteristics for Sullivan and Hawkins County, Tennessee 2018")
  
  transportation_kpt_data_table_18 <- datatable(data_table_transportation_kpt_18, caption = "Transportation Characteristics for Kingsport, Tennessee 2018")
  
  transportation_tract_data_table_18  
  
  transportation_county_data_table_18
  
  transportation_kpt_data_table_18
  