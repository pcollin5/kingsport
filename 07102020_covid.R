pd_packages <- c("tidyverse", "tidycensus", "leaflet", "mapview", "DT", "sf", "report",
                 "knitr", "rmarkdown", "kableExtra", "RColorBrewer", "tigris",
                 "directlabels", "officer", "flextable", "zoo", "directlabels")

lapply(packages, library, character.only = TRUE)

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






tp_vector <- race_combined_dt %>%
  filter(`Racial/Ethnic Group` == "Total Population") %>%
  select(Location,`Count Estimate`)

green <- tp_vector$`Count Estimate`*5/100000 

yellow_lower <- tp_vector$`Count Estimate`*6/100000

yellow_upper <- tp_vector$`Count Estimate`*10/100000   
  
red <- tp_vector$`Count Estimate`*11/100000

sullivan_county_reopening_plan <- cbind(tp_vector, green, yellow_lower, yellow_upper, red)

tdh_limit_for_community_spread <- sullivan_county_reopening_plan$`Count Estimate`*11/100000

sullivan_county_reopening_plan <- cbind(sullivan_county_reopening_plan, tdh_limit_for_community_spread)

tn_pop <- sullivan_county_reopening_plan %>%
  filter(Location == "Tennessee") %>%
  select(`Count Estimate`)


local_14day_new_cases <- county_covid_data_set %>%
  filter(COUNTY == "Sullivan" | COUNTY == "Washington" | COUNTY == "Unicoi" | COUNTY == "Greene" |
         COUNTY == "Hawkins" | COUNTY == "Hancock" | COUNTY == "Johnson" | COUNTY == "Carter") %>%
  filter(DATE >= "2020-06-24" & DATE <= "2020-07-10") %>%
  select(DATE, COUNTY, NEW_CASES)

local_14day_mean <- local_14day_new_cases %>%
  group_by(COUNTY) %>%
  mutate(x14day = mean(NEW_CASES))

tn_14day_average <- county_covid_data_set %>%
  filter(DATE >= "2020-06-24" & DATE <= "2020-07-10") %>%
  summarise(sum(NEW_CASES)/length(unique(DATE)))

names(tn_14day_average) <- "x14day"

cbind(sullivan_county_reopening_plan%>%
        filter(Location == "Tennessee"), tn_14day_average)

tn_14day_average

local_14day_mean

names(local_14day_mean) <- c("DATE", "Location", "NEW_CASES", "x14day")


TN <- cbind(sullivan_county_reopening_plan %>%
  filter(Location == "Tennessee"), tn_14day_average)



      
carter_mean <- local_14day_mean %>%
      filter(Location == "Carter")%>%
      filter(DATE == as.Date("2020-07-09"))%>%
      select(x14day)

ca_14 <-carter_mean[1,2]

CA <- cbind(sullivan_county_reopening_plan %>%
        filter(Location == "Carter County, Tennessee"), ca_14)


Greene_mean <- local_14day_mean %>%
  filter(Location == "Greene") %>%
  filter(DATE == as.Date("2020-07-09"))%>%
  select(x14day)

gr_14 <- Greene_mean[1,2]

GR <- cbind(sullivan_county_reopening_plan%>%
              filter(Location == "Greene County, Tennessee"), gr_14)

Hawkins_mean <- local_14day_mean %>%
  filter(Location == "Hawkins") %>%
  filter(DATE == as.Date("2020-07-09"))%>%
  select(x14day)

hk_14 <- Hawkins_mean[1,2]

HK <- cbind(sullivan_county_reopening_plan%>%
              filter(Location == "Hawkins County, Tennessee"), hk_14)

Hancock_mean <- local_14day_mean %>%
  filter(Location == "Hancock") %>%
  filter(DATE == as.Date("2020-07-09"))%>%
  select(x14day)

HN_14 <- Hancock_mean[1,2]

HN <- cbind(sullivan_county_reopening_plan%>%
              filter(Location == "Hancock County, Tennessee"), HN_14)

Johnson_mean <- local_14day_mean %>%
  filter(Location == "Johnson") %>%
  filter(DATE == as.Date("2020-07-09"))%>%
  select(x14day)

JO_14 <- Johnson_mean[1,2]

JO <- cbind(sullivan_county_reopening_plan%>%
              filter(Location == "Johnson County, Tennessee"), JO_14)

Sullivan_mean <- local_14day_mean %>%
  filter(Location == "Sullivan") %>%
  filter(DATE == as.Date("2020-07-09"))%>%
  select(x14day)

SU_14 <- Sullivan_mean[1,2]

SU <- cbind(sullivan_county_reopening_plan%>%
              filter(Location == "Sullivan County, Tennessee"), SU_14)

Washington_mean <- local_14day_mean %>%
  filter(Location == "Washington") %>%
  filter(DATE == as.Date("2020-07-09"))%>%
  select(x14day)

WA_14 <- Washington_mean[1,2]

WA <- cbind(sullivan_county_reopening_plan%>%
              filter(Location == "Washington County, Tennessee"), WA_14)


Unicoi_mean <- local_14day_mean %>%
  filter(Location == "Unicoi") %>%
  filter(DATE == as.Date("2020-07-09"))%>%
  select(x14day)

UN_14 <- Unicoi_mean[1,2]

UN <- cbind(sullivan_county_reopening_plan%>%
              filter(Location == "Unicoi County, Tennessee"), UN_14)

totals <- rbind(TN, CA, GR, HK, HN, JO, SU, WA, UN)

dim(totals)

pretty <- totals[,-7]

names(pretty) <- c("Location", "Population", "Green Zone", "Lower Limit of Yellow Zone", 
                   "Upper Limit of Yellow Zone", "Red Zone", "Current 14 Day Average")

`Percent of Red Zone Limit` <- pretty$`Current 14 Day Average`/pretty$`Red Zone` * 100

`Level` <- c("TN", "Carter", "Greene", "Hawkins", "Hancock", "Johnson", "Sullivan", "Washington", "Unicoi")

pretty_2 <- cbind(pretty, `Percent of Red Zone Limit`)

pretty_3 <- cbind(pretty_2$Location, round(pretty_2[,-1], 2))

names(pretty_3) <- c("Location", "Population", "Green Zone", "Lower Limit of Yellow Zone", 
                     "Upper Limit of Yellow Zone", "Red Zone", "Current 14 Day Average", "% of Red Zone Limit") 

zones_data_table <- datatable(pretty_3)

zones_data_table

temp <- cbind(pretty_2, Level)

dim(temp)

temp2 <- temp[,c(9,2:8)]

temp2

for_plots <- temp2 %>%
  pivot_longer(-Level, names_to = "Measure", values_to = "Pop. Number" )

counties_covid_bar <- for_plots %>%
  filter(Level != "TN") %>%
  filter(Measure == "Current 14 Day Average" | Measure == "Red Zone") %>%
  ggplot(aes(x = Level, y = `Pop. Number`, fill = Measure)) + 
  geom_bar(stat = "identity", position = "dodge")

counties_covid_bar


 

for_7day_ma <- county_covid_data_set %>%
  filter(COUNTY == "Sullivan" | COUNTY == "Washington" | COUNTY == "Unicoi" | COUNTY == "Greene" |
           COUNTY == "Hawkins" | COUNTY == "Hancock" | COUNTY == "Johnson" | COUNTY == "Carter") %>%
  filter(DATE >= "2020-05-26") %>%
  select(DATE, COUNTY, NEW_CASES)

x7day_rolling_average <- for_7day_ma %>%
  group_by(COUNTY) %>%
  mutate(x7 = rollmean(NEW_CASES, k = 7, fill = NA))%>%
  ungroup()

View(x7day_rolling_average)

View(local_14day_new_cases %>%
  group_by(COUNTY)%>%
  mutate(x14 = rollmean(NEW_CASES, k = 14, fill = NA) ))

pretty_3 %>%
  filter()


zones_data_table
counties_covid_bar



###07132020####

X07132020_new_cases

local_14day_new_cases <- X07132020_new_cases %>%
  filter(COUNTY == "Sullivan" | COUNTY == "Washington" | COUNTY == "Unicoi" | COUNTY == "Greene" |
           COUNTY == "Hawkins" | COUNTY == "Hancock" | COUNTY == "Johnson" | COUNTY == "Carter") %>%
  filter(DATE >= "2020-06-28" & DATE <= "2020-07-14") %>%
  select(DATE, COUNTY, NEW_CASES)

local_14day_mean <- local_14day_new_cases %>%
  group_by(COUNTY) %>%
  mutate(x14day = mean(NEW_CASES))

tn_14day_average <- county_covid_data_set %>%
  filter(DATE >= "2020-06-28" & DATE <= "2020-07-14") %>%
  summarise(sum(NEW_CASES)/length(unique(DATE)))

names(tn_14day_average) <- "x14day"

cbind(sullivan_county_reopening_plan%>%
        filter(Location == "Tennessee"), tn_14day_average)

tn_14day_average

local_14day_mean

names(local_14day_mean) <- c("DATE", "Location", "NEW_CASES", "x14day")


TN <- cbind(sullivan_county_reopening_plan %>%
              filter(Location == "Tennessee"), tn_14day_average)




carter_mean <- local_14day_mean %>%
  filter(Location == "Carter")%>%
  filter(DATE == as.Date("2020-07-13"))%>%
  select(x14day)

ca_14 <-carter_mean[1,2]

CA <- cbind(sullivan_county_reopening_plan %>%
              filter(Location == "Carter County, Tennessee"), ca_14)


Greene_mean <- local_14day_mean %>%
  filter(Location == "Greene") %>%
  filter(DATE == as.Date("2020-07-13"))%>%
  select(x14day)

gr_14 <- Greene_mean[1,2]

GR <- cbind(sullivan_county_reopening_plan%>%
              filter(Location == "Greene County, Tennessee"), gr_14)

Hawkins_mean <- local_14day_mean %>%
  filter(Location == "Hawkins") %>%
  filter(DATE == as.Date("2020-07-13"))%>%
  select(x14day)

hk_14 <- Hawkins_mean[1,2]

HK <- cbind(sullivan_county_reopening_plan%>%
              filter(Location == "Hawkins County, Tennessee"), hk_14)

Hancock_mean <- local_14day_mean %>%
  filter(Location == "Hancock") %>%
  filter(DATE == as.Date("2020-07-13"))%>%
  select(x14day)

HN_14 <- Hancock_mean[1,2]

HN <- cbind(sullivan_county_reopening_plan%>%
              filter(Location == "Hancock County, Tennessee"), HN_14)

Johnson_mean <- local_14day_mean %>%
  filter(Location == "Johnson") %>%
  filter(DATE == as.Date("2020-07-13"))%>%
  select(x14day)

JO_14 <- Johnson_mean[1,2]

JO <- cbind(sullivan_county_reopening_plan%>%
              filter(Location == "Johnson County, Tennessee"), JO_14)

Sullivan_mean <- local_14day_mean %>%
  filter(Location == "Sullivan") %>%
  filter(DATE == as.Date("2020-07-13"))%>%
  select(x14day)

SU_14 <- Sullivan_mean[1,2]

SU <- cbind(sullivan_county_reopening_plan%>%
              filter(Location == "Sullivan County, Tennessee"), SU_14)

Washington_mean <- local_14day_mean %>%
  filter(Location == "Washington") %>%
  filter(DATE == as.Date("2020-07-13"))%>%
  select(x14day)

WA_14 <- Washington_mean[1,2]

WA <- cbind(sullivan_county_reopening_plan%>%
              filter(Location == "Washington County, Tennessee"), WA_14)


Unicoi_mean <- local_14day_mean %>%
  filter(Location == "Unicoi") %>%
  filter(DATE == as.Date("2020-07-13"))%>%
  select(x14day)

UN_14 <- Unicoi_mean[1,2]

UN <- cbind(sullivan_county_reopening_plan%>%
              filter(Location == "Unicoi County, Tennessee"), UN_14)

totals <- rbind(TN, CA, GR, HK, HN, JO, SU, WA, UN)

dim(totals)

pretty <- totals[,-7]

names(pretty) <- c("Location", "Population", "Green Zone", "Lower Limit of Yellow Zone", 
                   "Upper Limit of Yellow Zone", "Red Zone", "Current 14 Day Average")

`Percent of Red Zone Limit` <- pretty$`Current 14 Day Average`/pretty$`Red Zone` * 100

`Level` <- c("TN", "Carter", "Greene", "Hawkins", "Hancock", "Johnson", "Sullivan", "Washington", "Unicoi")

pretty_2 <- cbind(pretty, `Percent of Red Zone Limit`)

pretty_3 <- cbind(pretty_2$Location, round(pretty_2[,-1], 2))

names(pretty_3) <- c("Location", "Population", "Green Zone", "Lower Limit of Yellow Zone", 
                     "Upper Limit of Yellow Zone", "Red Zone", "Current 14 Day Average", "% of Red Zone Limit") 

zones_data_table <- datatable(pretty_3)

zones_data_table

kable(pretty_3, caption = "07/13/2020 COVID Update") %>%
  kable_styling(latex_options = c("scale_down", "repeat_header", "HOLD_position"))

temp <- cbind(pretty_2, Level)

dim(temp)

temp2 <- temp[,c(9,2:8)]

temp2

for_plots <- temp2 %>%
  pivot_longer(-Level, names_to = "Measure", values_to = "Pop. Number" )

counties_covid_bar <- for_plots %>%
  filter(Level != "TN") %>%
  filter(Measure == "Current 14 Day Average" | Measure == "Red Zone") %>%
  ggplot(aes(x = Level, y = `Pop. Number`, fill = Measure)) + 
  geom_bar(stat = "identity", position = "dodge")+
  ggtitle("07/13/2020 COVID Update")

counties_covid_bar



for_7day_ma <- X07132020_new_cases %>%
  filter(COUNTY == "Sullivan" | COUNTY == "Washington" | COUNTY == "Unicoi" | COUNTY == "Greene" |
           COUNTY == "Hawkins" | COUNTY == "Hancock" | COUNTY == "Johnson" | COUNTY == "Carter") %>%
  filter(DATE >= "2020-05-26") %>%
  select(DATE, COUNTY, NEW_CASES)

for_7day_ma

x7day_rolling_average <- for_7day_ma %>%
  group_by(COUNTY) %>%
  mutate(x7 = rollmean(NEW_CASES, k = 7, fill = NA, align = "right"))%>%
  ungroup()

View(x7day_rolling_average)

for_14day_ma <- X07132020_new_cases %>%
  filter(COUNTY == "Sullivan" | COUNTY == "Washington" | COUNTY == "Unicoi" | COUNTY == "Greene" |
           COUNTY == "Hawkins" | COUNTY == "Hancock" | COUNTY == "Johnson" | COUNTY == "Carter") %>%
  filter(DATE >= "2020-05-26") %>%
  select(DATE, COUNTY, NEW_CASES)


x14day_rolling_average <- for_14day_ma %>%
  group_by(COUNTY) %>%
  mutate(x14 = rollmean(NEW_CASES, k = 14, fill = NA, align = "right"))%>%
  ungroup()

x7day_rolling_average

new_cases_and_rolling_mean <- cbind(x7day_rolling_average, x14day_rolling_average$x14)

names(new_cases_and_rolling_mean) <- c("DATE", "COUNTY", "New Cases", "7 Day Avg", "14 Day Avg")

new_cases_and_rolling_mean %>%
  filter(DATE >= "2020-06-09")%>%
  ggplot(aes(x = DATE, y = `New Cases`, fill = COUNTY)) +
  geom_bar(stat = "identity") + 
  facet_wrap(~COUNTY)+
  geom_line(aes(y = `14 Day Avg`, color = "14 Day Avg"), size = 1)+
  geom_line(aes(y = `7 Day Avg`, color = "7 Day Avg"), size = 1)+
  scale_colour_manual(values = c(
    '14 Day Avg' = 'darkblue',
    '7 Day Avg' = 'red')) +
      labs(color = 'Day Average')+
  ggtitle("07/13/2020 COVID Update by County")

tail(new_cases_and_rolling_mean)

kable(new_cases_and_rolling_mean %>%
  filter(DATE >= "2020-07-12"), caption = "07/13/2020 New Cases/Rolling Averages") %>%
  kable_styling(latex_options = c("scale_down", "repeat_header", "HOLD_position"))
