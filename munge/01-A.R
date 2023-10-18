# Clean names

df  <- clean_names(df0) %>%
  select(-1, -2)
df$trip_duration <- as.numeric(difftime(df$ended_at, df$started_at, units = "hours"))
df$day_of_week <- wday(df$started_at)
df$day_of_year <- yday(df$started_at)
df$month_of_year <- month(df$started_at)
df$hour_of_day <- hour(df$started_at)
