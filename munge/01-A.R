# Clean names

divvy_clean  <- clean_names(divvy) %>%
  select(-1, -2)
divvy_clean$trip_duration <- as.numeric(difftime(divvy_clean$ended_at, divvy_clean$started_at, units = "hours"))
divvy_clean$day_of_week <- wday(divvy_clean$started_at)
divvy_clean$day_of_year <- yday(divvy_clean$started_at)
divvy_clean$month_of_year <- month(divvy_clean$started_at)
rm(divvy)
