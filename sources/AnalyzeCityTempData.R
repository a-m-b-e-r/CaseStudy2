# Plot the top differences in temperature for the 20 cities with the highest temperature difference
ggplot(CityTempDiff[1:20,], aes(x = City, y = Difference)) + 
  geom_bar(stat="identity", aes(fill = City)) +
  labs(title = "Top 20 Cities", subtitle="by Monthly Temperature Difference since 1900") +
  theme(axis.text.x = element_text(angle = 90))