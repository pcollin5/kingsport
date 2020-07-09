  income_vars_18 <- 
  
  income_percent_vars_18 <- 
  
  income_vars_names_18 <- 
  
  
  
  df_industry_tract_counts_18 <- combined_tract_dp_18 %>%
    filter(variable %in% industry_vars_18)
  
  df_industry_county_counts_18 <- combined_county_dp_18 %>%
    filter(variable %in% industry_vars_18)
  
  df_industry_tract_percent_18 <- combined_tract_dp_18 %>%
    filter(variable %in% industry_percent_vars_18)
  
  df_industry_county_percent_18 <- combined_county_dp_18 %>%
    filter(variable %in% industry_percent_vars_18)
  
  df_industry_kpt_counts_18 <- kpt_data_profile_18 %>%
    filter(variable %in% industry_vars_18)
  
  df_industry_kpt_percent_18 <- kpt_data_profile_18 %>%
    filter(variable %in% industry_percent_vars_18)
  
  
  ##combine the percents into one table
  
  df_industry_tract_18 <- cbind(industry_vars_names_18, df_industry_tract_counts_18, df_industry_tract_percent_18)
  
  df_industry_county_18 <- cbind(industry_vars_names_18, df_industry_county_counts_18, df_industry_county_percent_18)
  
  df_industry_kpt_18 <- cbind(industry_vars_names_18, df_industry_kpt_counts_18, df_industry_kpt_percent_18)
  
  industryu_names <- names(df_industry_county_18)
  
  industryu_names_2 <- industryu_names[-c(16,17)]
  
  names(df_industry_kpt_18) <- industryu_names_2
  
  industry_kpt_18_for_map <- left_join(kpt_18, df_industry_kpt_18, by = "GEOID") #this has the location data
  
  
  
  trimmed_df_industry_tract_18 <- df_industry_tract_18[,c(1,3,5,6,12,13)] #these are the ones with the location data
  
  trimmed_df_industry_county_18 <- df_industry_county_18[,c(1,3,5,6,12,13)] #these are the ones with the location data
  
  trimmed_df_industry_kpt_18 <- df_industry_kpt_18[,c(1,5,6,12,13)] # no location data
  
  
  ##get ride of location data for the tract/county
  
  data_table_industry_tract_18 <- st_set_geometry(trimmed_df_industry_tract_18, NULL)
  
  data_table_industry_county_18 <- st_set_geometry(trimmed_df_industry_county_18, NULL)
  
  data_table_industry_kpt_18 <- trimmed_df_industry_kpt_18
  
   ##rename the columns 
  
   
  industry_table_tract_names <- c("Industry Type", "Census Tract", "Count", "Margin of Error", "Percent", "Percent Margin of Error")
  
  industry_table_county_names <- c("Industry Type", "County", "Count", "Margin of Error", "Percent", "Percent Margin of Error")  
  
  industry_table_kpt_names <- c("Industry Type", "Count", "Margin of Error", "Percent", "Percent Margin of Error")
  
  names(data_table_industry_tract_18) <- industry_table_tract_names
  
  names(data_table_industry_county_18) <- industry_table_county_names
  
  names(data_table_industry_kpt_18) <- industry_table_kpt_names
  
  ##make the data tables
  
  industry_tract_data_table_18 <- datatable(data_table_industry_tract_18, caption = "Industry Type of Census Tract Groups for Sullivan and Hawkins County, Tennessee 2018")
  
  industry_county_data_table_18 <- datatable(data_table_industry_county_18, caption = "Industry Type for Sullivan and Hawkins County, Tennessee 2018")
  
  industry_kpt_data_table_18 <- datatable(data_table_industry_kpt_18, caption = "Industry Type for Kingsport, Tennessee 2018")
  
  
  ##service industryupations map 
  
  industry_tract_map_names <- c("Industry Type", "Census Tract", "Count", "Count MOE", "Percent", "Percent MOE", "geometry")
  
  industry_county_map_names <- c("Industry Type", "County", "Count", "Count MOE", "Percent", "Percent MOE", "geometry")
  
  trimmed_industry_kpt_18_for_map <- industry_kpt_18_for_map[,c(15,16,18,19,25,26)]
  
  industry_kpt_map_names <- c("Industry Type", "Kingsport", "Count", "Count MOE", "Percent", "Percent MOE", "geometry")
  
  names(trimmed_df_industry_county_18) <- industry_county_map_names
  
  names(trimmed_df_industry_tract_18) <- industry_tract_map_names
  
  names(trimmed_industry_kpt_18_for_map) <- industry_kpt_map_names
  
  
  percent_self_employed_county <- trimmed_df_industry_county_18 %>%
    filter(`industryupation Type` == "Self Employed in Own Business")
  
  
  percent_self_employed_tract <- trimmed_df_industry_tract_18 %>%
    filter(`industryupation Type` == "Self Employed in Own Business")
  
  percent_self_employed_kpt <- trimmed_industry_kpt_18_for_map %>%
    filter(`industryupation Type` == "Self Employed in Own Business")
	
self_employed_map <- mapview(list(percent_self_employed_county, percent_self_employed_tract, percent_self_employed_kpt),
                              zcol = list("Percent", "Percent", NULL),
                              layer.name = list("Percent Self Employed County", "Percent Self Employed  Tract", "Percent Self Employed City"),
                              legend = list(FALSE, TRUE, FALSE))
  