df  %>%
  ggplot(aes(month_of_year, fill = rideable_type)) +
  geom_bar()

table(df$rideable_type)
table(df$rideable_type, df$member_casual)
round(table(df$rideable_type), 2)
round(prop.table(table(df$rideable_type)),2) * 100
barplot(df$rideable_type)

df %>%
  filter(trip_duration >= 2) %>%
  ggplot(aes(trip_duration, fill = rideable_type, color = "black")) +
  geom_histogram()
plot(df$trip_duration)


df %>%
  group_by(month_of_year) %>%
  mutate(count = n()) %>%
  select(month_of_year, rideable_type, member_casual, count)  %>%
  ggplot(aes(month_of_year, fill = rideable_type)) +
  geom_bar()

# Calculate proportions
prop_data <- df %>%
  group_by(month_of_year, rideable_type, member_casual) %>%
  summarise(Proportion = prop.table(n()))

# Create the bar chart with facet wrap
ggplot(prop_data, aes(x = month_of_year, y = Proportion, fill = rideable_type)) +
  geom_bar(stat = "identity", position = "dodge") +
  facet_wrap(~ member_casual, scales = "free_y", ncol = 1) +
  labs(
    title = "Proportions of Rideable Types by Month of Year",
    x = "Month of Year",
    y = "Proportion"
  )
prop_data

ggplot(df, aes(x = month_of_year)) +
  geom_bar(aes(fill = rideable_type), position = "dodge") +
  facet_grid(~member_casual~rideable_type) +
  labs(
    title = "Bar Chart with Facet Matrix",
    x = "Month of Year",
    y = "Proportion"
  )
