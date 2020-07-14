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



age_race_hisp_total <- rbind(us_age_race_hisp, Tn_age_race_hisp, Carter_age_race_hisp,
                             Greene_age_race_hisp, Hawkins_age_race_hisp, Hancock_age_race_hisp,
                             Johnson_age_race_hisp, Sullivan_age_race_hisp, Washington_age_race_hisp,
                             Unicoi_age_race_hisp)



Tn_age_race_hisp %>%
  filter(SEX == "Both sexes") %>%
  filter(RACE == "All races") %>%
  filter(str_detect(AGEGROUP, "^Age"))%>%
  filter(HISP == "Hispanic") %>%
  ggplot(aes(x = AGEGROUP, y = value))+
  geom_bar(stat = "identity")
  
Tn_age_race_hisp %>%
  filter(SEX == "Both sexes") %>%
  filter(RACE == "All races") %>%
  filter(str_detect(AGEGROUP, "^Age"))%>%
  filter(HISP != "Both Hispanic Origins") %>%
  ggplot(aes(x = AGEGROUP, y = value, fill = HISP))+
  geom_bar(stat = "identity", position = "dodge")+
  labs(x = " ", y = "Poluation")

Tn_age_race_hisp %>%
  filter(SEX == "Both sexes") %>%
  filter(RACE == "All races") %>%
  filter(str_detect(AGEGROUP, "^Age", negate = TRUE))%>%
  filter(HISP != "Both Hispanic Origins")%>%
  filter(AGEGROUP == "5 to 13 years" | 
           AGEGROUP == "14 to 17 years" |
           AGEGROUP == "18 to 24 years" | 
           AGEGROUP == "25 to 44 years"|
           AGEGROUP == "45 to 64 years" |
           AGEGROUP == "65 years and over") %>%
  ggplot(aes(x = AGEGROUP, y = value, fill = HISP))+
  geom_bar(stat = "identity", position = "dodge")

tn_all_ages_hisp <- Tn_age_race_hisp %>%
  filter(SEX == "Both sexes") %>%
  filter(RACE == "All races") %>%
  filter(AGEGROUP == "All ages") %>%
  filter(HISP != "Both Hispanic Origins")

tn_under_5_hisp <- Tn_age_race_hisp %>%
  filter(SEX == "Both sexes") %>%
  filter(RACE == "All races") %>%
  filter(AGEGROUP == "Age 0 to 4 years") %>%
  filter(HISP != "Both Hispanic Origins")


tn_hisp_percent <- Tn_age_race_hisp %>%
  filter(SEX == "Both sexes") %>%
  filter(RACE == "All races") %>%
  filter(AGEGROUP == "All ages"|
           AGEGROUP == "Age 0 to 4 years") %>%
  filter(HISP != "Both Hispanic Origins")%>%
  select(NAME, value, AGEGROUP, HISP)%>%
  pivot_wider(names_from = "AGEGROUP")%>%
  mutate(`Percent of Pop.` = `Age 0 to 4 years` / `All ages` * 100)%>%
  pivot_longer(-c(NAME, HISP), names_to = "AGEGROUP", values_to = "value")


total_under_5_hisp <- age_race_hisp_total %>%
  filter(SEX == "Both sexes") %>%
  filter(RACE == "All races") %>%
  filter(AGEGROUP == "All ages"|
           AGEGROUP == "Age 0 to 4 years") %>%
  filter(HISP != "Both Hispanic Origins")%>%
  select(NAME, value, AGEGROUP, HISP)%>%
  pivot_wider(names_from = "AGEGROUP")%>%
  mutate(`Percent of Pop.` = `Age 0 to 4 years` / `All ages` * 100)%>%
  pivot_longer(-c(NAME, HISP), names_to = "AGEGROUP", values_to = "value")


under_5_hisp_plot <- total_under_5_hisp %>%
  filter(NAME != "United States" |
           NAME != "Tennessee") %>%
  filter(AGEGROUP == "Percent of Pop.") %>%
  ggplot(aes(x = NAME, y = value, fill = HISP))+
  geom_bar(stat = "identity", position = "dodge")

total_under_5_hisp %>%
  filter(NAME != "United States") %>%
  filter(NAME != "Tennessee") %>%
  filter(AGEGROUP == "Percent of Pop.") %>%
  ggplot(aes(x = NAME, y = value, fill = HISP))+
  geom_bar(stat = "identity", position = "dodge")


total_under_5_hisp %>%
  filter(AGEGROUP == "Percent of Pop.") %>%
  ggplot(aes(x = HISP, y = value, fill = HISP))+
  geom_bar(stat = "identity", position = "dodge")+
  facet_wrap(~NAME)


all_races_under_5 <- age_race_hisp_total %>%
  filter(SEX == "Both sexes") %>%
  filter(RACE != "All races")%>%
  filter(HISP == "Non-Hispanic")%>%
  filter(str_detect(RACE, "combination", negate = TRUE))%>%
  filter(AGEGROUP == "All ages"|
           AGEGROUP == "Age 0 to 4 years") %>%
  select(NAME, value, AGEGROUP, RACE)%>%
  pivot_wider(names_from = "AGEGROUP")%>%
  mutate(`Percent of Pop.` = `Age 0 to 4 years` / `All ages` * 100)%>%
  pivot_longer(-c(NAME, RACE), names_to = "AGEGROUP", values_to = "value")

all_races_under_5 %>%
  filter(NAME != "United States" | NAME != "Tennessee") %>%
  filter(AGEGROUP == "Percent of Pop.") %>%
  ggplot(aes(x = RACE, y = value, fill = RACE)) + 
  geom_bar(stat = "identity", position = "dodge")+
  facet_wrap(~NAME)

hisp_age_groups_percent_of_population <- age_race_hisp_total %>%
  filter(SEX == "Both sexes") %>%
  filter(RACE == "All races") %>%
  filter(AGEGROUP == "All ages"|
           AGEGROUP == "Under 18 years"|
           AGEGROUP == "18 to 64 years"|
           AGEGROUP == "65 years and over"|
           AGEGROUP == "85 years and over"|
           AGEGROUP == "Median age") %>%
  filter(HISP != "Both Hispanic Origins")%>%
  select(NAME, value, AGEGROUP, HISP)%>%
  pivot_wider(names_from = "AGEGROUP")%>%
  mutate(`< 18 % of Pop.` = `Under 18 years` / `All ages` * 100)%>%
  mutate(`18 to 64 % of Pop.` = `18 to 64 years` / `All ages` * 100)%>%
  mutate(`65+ % of Pop.` = `65 years and over` / `All ages` * 100) %>%
  mutate(`85+ % of Pop.` = `85 years and over`/ `All ages` * 100) %>%
  pivot_longer(-c(NAME, HISP), names_to = "AGEGROUP", values_to = "value")

all_races_age_group <- age_race_hisp_total %>%
  filter(SEX == "Both sexes") %>%
  filter(str_detect(RACE, "combination", negate = TRUE)) %>%
  filter(AGEGROUP == "All ages"|
           AGEGROUP == "Under 18 years"|
           AGEGROUP == "18 to 64 years"|
           AGEGROUP == "65 years and over"|
           AGEGROUP == "85 years and over"|
           AGEGROUP == "Median age") %>%
  filter(HISP == "Both Hispanic Origins")%>%
  select(NAME, value, AGEGROUP, RACE)%>%
  pivot_wider(names_from = "AGEGROUP")%>%
  mutate(`< 18 % of Pop.` = `Under 18 years` / `All ages` * 100)%>%
  mutate(`18 to 64 % of Pop.` = `18 to 64 years` / `All ages` * 100)%>%
  mutate(`65+ % of Pop.` = `65 years and over` / `All ages` * 100) %>%
  mutate(`85+ % of Pop.` = `85 years and over`/ `All ages` * 100) %>%
  pivot_longer(-c(NAME, RACE), names_to = "AGEGROUP", values_to = "value")

all_races_age_group %>%
  filter(RACE == "All races")%>%
  filter(AGEGROUP != "All ages") %>%
  filter(AGEGROUP != "Median age") %>%
  filter(str_detect(AGEGROUP, "Pop.")) %>%
  ggplot(aes(x = AGEGROUP, y = value, fill = AGEGROUP)) + 
  geom_bar(stat = "identity")+
  facet_wrap(~NAME)



all_races_age_group %>%
  filter(AGEGROUP != "All ages") %>%
  filter(AGEGROUP != "Median age") %>%
  filter(str_detect(AGEGROUP, "Pop.")) %>%
  ggplot(aes(x = AGEGROUP, y = value, fill = RACE))+
  geom_bar(stat = "identity", position = "dodge")+
  facet_wrap(~NAME)

hisp_age_groups_percent_of_population %>%
  filter(NAME == "United States") %>%
  filter(AGEGROUP != "All ages") %>%
  filter(AGEGROUP != "Median age") %>%
  filter(str_detect(AGEGROUP, "Pop.")) %>%
  ggplot(aes(x = AGEGROUP, y = value, fill = HISP))+
  geom_bar(stat = "identity", position = "dodge")


hisp_age_groups_percent_of_population %>%
  filter(AGEGROUP != "All ages") %>%
  filter(AGEGROUP != "Median age") %>%
  filter(str_detect(AGEGROUP, "Pop.")) %>%
  ggplot(aes(x = AGEGROUP, y = value, fill = HISP))+
  geom_bar(stat = "identity", position = "dodge")+
  facet_wrap(~NAME)

hisp_age_groups_percent_of_population %>%
  filter(NAME == "Carter County, Tennessee")

View(age_race_hisp_total %>%
  filter(NAME == "Carter County, Tennessee"))





age_race_hisp_total %>%
  filter(SEX == "Both sexes") %>%
  filter(RACE == "All races") %>%
  filter(AGEGROUP == "All ages"|
           AGEGROUP == "Under 18 years"|
           AGEGROUP == "18 to 64 years"|
           AGEGROUP == "65 years and over"|
           AGEGROUP == "85 years and over"|
           AGEGROUP == "Median age") %>%
  filter(HISP != "Both Hispanic Origins")%>%
  select(NAME, value, AGEGROUP, HISP)%>%
  pivot_wider(names_from = "AGEGROUP", values_from = "value")


  mutate(`< 18 % of Pop.` = `Under 18 years` / `All ages` * 100)%>%
  mutate(`18 to 64 % of Pop.` = `18 to 64 years` / `All ages` * 100)%>%
  mutate(`65+ % of Pop.` = `65 years and over` / `All ages` * 100) %>%
  mutate(`85+ % of Pop.` = `85 years and over`/ `All ages` * 100) %>%
  pivot_longer(-c(NAME, HISP), names_to = "AGEGROUP", values_to = "value")

  
View(age_race_hisp_total %>%
  filter(NAME == "Carter County, Tennessee"))
