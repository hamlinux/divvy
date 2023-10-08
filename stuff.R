df_frac[max(df_frac$day_of_year), ]
hist(df_frac$day_of_year)
hist(df_frac$month_of_year)
bar(df_frac$month_of_year)

df_frac %>%
  group_by(hour_of_day) %>%
  ggplot(aes(hour_of_day)) + 
  geom_bar()

h_of_year <- month(divvy_clean$started_at)
count(df_frac$hour_of_day)

df_frac$hour_of_day <- hour(df_frac$started_at)
df_frac$week_of_year <- week(df_frac$started_at)
hist(df_frac$week_of_year)
hist(df_frac$hour_of_day)

df_frac[df_frac$hour_of_day > 2 & df_frac$hour_of_day < 14 ]

df_frac %>%
  ggplot(aes(hour_of_day, color = member_casual)) +
  geom_bar() +
  #geom_smooth(method = lm) q
  facet_wrap(~month_of_year)
