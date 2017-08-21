# Plot the differences in temperature by countries with the top monthly temperature differences
ggplot(TempDiff[1:20,], aes(x = Country, y = Difference)) + 
  geom_bar(stat="identity", aes(fill = Country)) +
  labs(title = "Top 20 Countries", subtitle="by Monthly Temperature Difference since 1900") +
  theme(axis.text.x = element_text(angle = 90))


# Plot the differences in annual average temperatures for the United States
ggplot(USYearlyTemp, aes(x = Year, y = AverageTemp)) + 
  geom_line(color = "red") +
  labs(title = "US Average Annual Temperature", subtitle="in Fahrenheit") 

# Create a variable of the difference in each yearly average temperature
USYearlyTemp$YearDiff <- as.numeric(c("NA", diff(USYearlyTemp$AverageTemp)))

# Determine which year had the greatest temperature difference 
USYearlyTemp[which.max(USYearlyTemp$YearDiff),]