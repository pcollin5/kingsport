pd_packages <- c("tidyverse", "tidycensus", "leaflet", "mapview", "DT", "sf", "report",
                 "knitr", "rmarkdown", "kableExtra", "RColorBrewer", "tigris",
                 "directlabels", "officer", "flextable")

lapply(pd_packages, library, character.only = TRUE)

dp_variables_2018 <- load_variables(2018, "acs5/profile", cache = TRUE)    

st_variables_2018 <- load_variables(2018, "acs5/subject", cache = TRUE)

new_names <- c("variable", "label", "concept")

names(dp_variables_2018) <- new_names

names(st_variables_2018) <- new_names

##us rates

us_birth_rate <- get_estimates(geography = "us", variables = "RBIRTH", time_series = TRUE, year = 2018)

us_death_rate <- get_estimates(geography = "us", variables = "RDEATH", time_series = TRUE, year = 2018)  

Year <- c("2010", "2010-2011", "2011-2012", "2012-2013", "2013-2014", "2014-2015", "2015-2016", "2016-2017", "2017-2018")

Rate <- c(rep("Birth", 9), rep("Death", 9))

US_birth_rate <- cbind(Year, us_birth_rate)

US_death_rate <- cbind(Year, us_death_rate)

US_rates <- rbind(US_birth_rate, US_death_rate)

US_rates <- cbind(Rate, US_rates)

US_rates$Abreviation <- "US"


##tn rates

TN_birth_rate <- get_estimates(geography = "state", state = "TN", variables = "RBIRTH", time_series = TRUE, year = 2018, geometry = TRUE)

TN_death_rate <- get_estimates(geography = "state", state = "TN", variables = "RDEATH", time_series = TRUE, year = 2018, geometry = TRUE)

TN_birth_rate_nogeo <- st_set_geometry(TN_birth_rate, NULL)

TN_death_rate_nogeo <- st_set_geometry(TN_death_rate, NULL)

TN_birth_rate_nogeo <- cbind(Year, TN_birth_rate_nogeo)

TN_death_rate_nogeo <- cbind(Year, TN_death_rate_nogeo)

TN_rates <- rbind(TN_birth_rate_nogeo, TN_death_rate_nogeo)

TN_rates <- cbind(Rate, TN_rates)

TN_rates$Abreviation <- "TN"

##carter rates

Carter_birth_rate <- get_estimates(geography = "county", county = "Carter", state = "TN", variables = "RBIRTH", time_series = TRUE, year = 2018, geometry = TRUE)

Carter_death_rate <- get_estimates(geography = "county", county = "Carter", state = "TN", variables = "RDEATH", time_series = TRUE, year = 2018, geometry = TRUE)

Carter_birth_rate_nogeo <- st_set_geometry(Carter_birth_rate, NULL)

Carter_death_rate_nogeo <- st_set_geometry(Carter_death_rate, NULL)

Carter_birth_rate_nogeo <- cbind(Year, Carter_birth_rate_nogeo)

Carter_death_rate_nogeo <- cbind(Year, Carter_death_rate_nogeo)

Carter_rates <- rbind(Carter_birth_rate_nogeo, Carter_death_rate_nogeo)

Carter_rates <- cbind(Rate, Carter_rates)

Carter_rates$Abreviation <- "Ca"

##greene

Greene_birth_rate <- get_estimates(geography = "county", county = "Greene", state = "TN", variables = "RBIRTH", time_series = TRUE, year = 2018, geometry = TRUE)

Greene_death_rate <- get_estimates(geography = "county", county = "Greene", state = "TN", variables = "RDEATH", time_series = TRUE, year = 2018, geometry = TRUE)

Greene_birth_rate_nogeo <- st_set_geometry(Greene_birth_rate, NULL)

Greene_death_rate_nogeo <- st_set_geometry(Greene_death_rate, NULL)

Greene_birth_rate_nogeo <- cbind(Year, Greene_birth_rate_nogeo)

Greene_death_rate_nogeo <- cbind(Year, Greene_death_rate_nogeo)

Greene_rates <- rbind(Greene_birth_rate_nogeo, Greene_death_rate_nogeo)

Greene_rates <- cbind(Rate, Greene_rates)

Greene_rates$Abreviation <- "Gr"

##hawkins

Hawkins_birth_rate <- get_estimates(geography = "county", county = "Hawkins", state = "TN", variables = "RBIRTH", time_series = TRUE, year = 2018, geometry = TRUE)

Hawkins_death_rate <- get_estimates(geography = "county", county = "Hawkins", state = "TN", variables = "RDEATH", time_series = TRUE, year = 2018, geometry = TRUE)

Hawkins_birth_rate_nogeo <- st_set_geometry(Hawkins_birth_rate, NULL)

Hawkins_death_rate_nogeo <- st_set_geometry(Hawkins_death_rate, NULL)

Hawkins_birth_rate_nogeo <- cbind(Year, Hawkins_birth_rate_nogeo)

Hawkins_death_rate_nogeo <- cbind(Year, Hawkins_death_rate_nogeo)

Hawkins_rates <- rbind(Hawkins_birth_rate_nogeo, Hawkins_death_rate_nogeo)

Hawkins_rates <- cbind(Rate, Hawkins_rates)

Hawkins_rates$Abreviation <- "Hw"

##hancock

Hancock_birth_rate <- get_estimates(geography = "county", county = "Hancock", state = "TN", variables = "RBIRTH", time_series = TRUE, year = 2018, geometry = TRUE)

Hancock_death_rate <- get_estimates(geography = "county", county = "Hancock", state = "TN", variables = "RDEATH", time_series = TRUE, year = 2018, geometry = TRUE)

Hancock_birth_rate_nogeo <- st_set_geometry(Hancock_birth_rate, NULL)

Hancock_death_rate_nogeo <- st_set_geometry(Hancock_death_rate, NULL)

Hancock_birth_rate_nogeo <- cbind(Year, Hancock_birth_rate_nogeo)

Hancock_death_rate_nogeo <- cbind(Year, Hancock_death_rate_nogeo)

Hancock_rates <- rbind(Hancock_birth_rate_nogeo, Hancock_death_rate_nogeo)

Hancock_rates <- cbind(Rate, Hancock_rates)

Hancock_rates$Abreviation <- "Hn"

##johnson

Johnson_birth_rate <- get_estimates(geography = "county", county = "Johnson", state = "TN", variables = "RBIRTH", time_series = TRUE, year = 2018, geometry = TRUE)

Johnson_death_rate <- get_estimates(geography = "county", county = "Johnson", state = "TN", variables = "RDEATH", time_series = TRUE, year = 2018, geometry = TRUE)

Johnson_birth_rate_nogeo <- st_set_geometry(Johnson_birth_rate, NULL)

Johnson_death_rate_nogeo <- st_set_geometry(Johnson_death_rate, NULL)

Johnson_birth_rate_nogeo <- cbind(Year, Johnson_birth_rate_nogeo)

Johnson_death_rate_nogeo <- cbind(Year, Johnson_death_rate_nogeo)

Johnson_rates <- rbind(Johnson_birth_rate_nogeo, Johnson_death_rate_nogeo)

Johnson_rates <- cbind(Rate, Johnson_rates)

Johnson_rates$Abreviation <- "Jo"

#sullivan

Sullivan_birth_rate <- get_estimates(geography = "county", county = "Sullivan", state = "TN", variables = "RBIRTH", time_series = TRUE, year = 2018, geometry = TRUE)

Sullivan_death_rate <- get_estimates(geography = "county", county = "Sullivan", state = "TN", variables = "RDEATH", time_series = TRUE, year = 2018, geometry = TRUE)

Sullivan_birth_rate_nogeo <- st_set_geometry(Sullivan_birth_rate, NULL)

Sullivan_death_rate_nogeo <- st_set_geometry(Sullivan_death_rate, NULL)

Sullivan_birth_rate_nogeo <- cbind(Year, Sullivan_birth_rate_nogeo)

Sullivan_death_rate_nogeo <- cbind(Year, Sullivan_death_rate_nogeo)

Sullivan_rates <- rbind(Sullivan_birth_rate_nogeo, Sullivan_death_rate_nogeo)

Sullivan_rates <- cbind(Rate, Sullivan_rates)

Sullivan_rates$Abreviation <- "Su"

#washington

Washington_birth_rate <- get_estimates(geography = "county", county = "Washington", state = "TN", variables = "RBIRTH", time_series = TRUE, year = 2018, geometry = TRUE)

Washington_death_rate <- get_estimates(geography = "county", county = "Washington", state = "TN", variables = "RDEATH", time_series = TRUE, year = 2018, geometry = TRUE)

Washington_birth_rate_nogeo <- st_set_geometry(Washington_birth_rate, NULL)

Washington_death_rate_nogeo <- st_set_geometry(Washington_death_rate, NULL)

Washington_birth_rate_nogeo <- cbind(Year, Washington_birth_rate_nogeo)

Washington_death_rate_nogeo <- cbind(Year, Washington_death_rate_nogeo)

Washington_rates <- rbind(Washington_birth_rate_nogeo, Washington_death_rate_nogeo)

Washington_rates <- cbind(Rate, Washington_rates)

Washington_rates$Abreviation <- "Wa"

#unicoi

Unicoi_birth_rate <- get_estimates(geography = "county", county = "Unicoi", state = "TN", variables = "RBIRTH", time_series = TRUE, year = 2018, geometry = TRUE)

Unicoi_death_rate <- get_estimates(geography = "county", county = "Unicoi", state = "TN", variables = "RDEATH", time_series = TRUE, year = 2018, geometry = TRUE)

Unicoi_birth_rate_nogeo <- st_set_geometry(Unicoi_birth_rate, NULL)

Unicoi_death_rate_nogeo <- st_set_geometry(Unicoi_death_rate, NULL)

Unicoi_birth_rate_nogeo <- cbind(Year, Unicoi_birth_rate_nogeo)

Unicoi_death_rate_nogeo <- cbind(Year, Unicoi_death_rate_nogeo)

Unicoi_rates <- rbind(Unicoi_birth_rate_nogeo, Unicoi_death_rate_nogeo)

Unicoi_rates <- cbind(Rate, Unicoi_rates)

Unicoi_rates$Abreviation <- "Ui"

Unicoi_rates
### combine

Combined_rates <- rbind(US_rates, TN_rates, Carter_rates, Greene_rates, Hawkins_rates, Hancock_rates, Johnson_rates,
                        Sullivan_rates, Washington_rates, Unicoi_rates)
Combined_rates

test1 <- Combined_rates %>%
  filter(Rate == "Birth") %>%
  mutate(Birth = value)

test2 <- Combined_rates %>%
  filter(Rate == "Death") %>%
  mutate(Death = value)

Difference <- test1$Birth - test2$Death



test4 <- cbind(test2, Difference)

for_table <- cbind(test1, Difference) 

for_table

test5 <- for_table[,-9]

test6 <- test4[,-9]

full <- rbind(test5, test6)

test5

###full and combined rates are the names of the data frames for tables/graphs respectivly

difference_line_plot <- full %>%
  filter(Year != "2010")%>%
  ggplot(aes(x = Year, y = Difference, color = NAME, group = NAME)) +
  geom_point()+
  geom_line()+
  geom_dl(aes(label = Abreviation), method = list(dl.combine("first.points", "last.points")), cex = 0.8)

facet_by_rate <- full %>%
  filter(Year != "2010") %>%
  ggplot(aes(x = Year, y = value, color = NAME, group = NAME)) + 
  geom_point() +
  geom_line() +
  facet_wrap(~Rate)+
  geom_dl(aes(label = Abreviation), method = list(dl.combine("first.points", "last.points")), cex = 0.8)

facet_by_NAME <-full %>%
  filter(Year != "2010") %>%
  ggplot(aes(x = Year, y = value, color = Rate, group = Rate)) +
  geom_point() + 
  geom_line() +
  facet_wrap(~NAME)

difference_line_plot

facet_by_rate

facet_by_NAME
##need a table of birth/death rates

birth_rate_2010 <- full %>%
  filter(Year == "2010-2011") %>%
  filter(Rate == "Birth")%>%
  select(NAME, Year, Rate, value)

death_rate_2010 <- full %>%
  filter(Year == "2010-2011") %>%
  filter(Rate == "Death") %>%
  select(NAME, Year, Rate, value)

combined_rates_2010 <- full %>%
  filter(Year == "2010-2011") %>%
  select(NAME, Year, Rate, value)  %>%
  pivot_wider(names_from = "Rate")

rate_table_names <- c("Location", "Year", "Birth Rate", "Death Rate")

names(combined_rates_2010) <- rate_table_names
 
kable(combined_rates_2010) %>%
  kable_styling(latex_options = c("scale_down", "striped"))

combined_rates_2018 <- full %>%
  filter(Year == "2017-2018") %>%
  select(NAME, Year, Rate, value) %>%
  pivot_wider(names_from = "Rate")

names(combined_rates_2018) <- rate_table_names

kable(combined_rates_2018) %>%
  kable_styling(latex_options = c("scale_down", "striped"))

br_2018 <- full %>%
  filter(Year == "2017-2018") %>%
  filter(Rate == "Birth") %>%
  select(value)

br_2010 <- full %>%
  filter(Year == "2010-2011") %>%
  filter(Rate == "Birth") %>%
  select(value)

`Birth Rate Difference` = br_2018 - br_2010

birth_rate_difference <- full %>%
  filter(Year == "2017-2018") %>%
  filter(Rate == "Birth") %>%
  select(NAME) %>%
  cbind(`Birth Rate Difference`)

names(birth_rate_difference) <- c("Location", "2018 Birth Rate Compared with 2011 Birth Rate")  

kable(birth_rate_difference) %>%
  kable_styling(latex_options = c("scale_down", "striped"))

full

dr_2018 <- full %>%
  filter(Year == "2017-2018") %>%
  filter(Rate == "Death") %>%
  select(value)

dr_2010 <- full %>%
  filter(Year == "2010-2011") %>%
  filter(Rate == "Death") %>%
  select(value)

`Death Rate Difference` = dr_2018 - dr_2010

death_rate_difference <- full %>%
  filter(Year == "2017-2018") %>%
  filter(Rate == "Death") %>%
  select(NAME) %>%
  cbind(`Death Rate Difference`)

names(death_rate_difference) <- c("Location", "2018 Death Rate Compared with 2011 Death Rate")

kable(death_rate_difference) %>%
  kable_styling(latex_options = c("scale_down", "striped"))

diff_2018 <- full %>%
  filter(Year == "2017-2018") %>%
  filter(Rate == "Birth") %>%
  select(NAME, Year, Difference)

names(diff_2018) <- c("Location", "Year", "Birth Rate minus Death Rate")

kable(diff_2018) %>%
  kable_styling(latex_options = c("scale_down", "striped"))
