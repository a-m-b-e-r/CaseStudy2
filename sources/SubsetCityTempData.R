# Subset the CityTemp dataset for all temperatures since 1900
CityTemp <- subset(CityTemperature, Date2 >= "1900-01-01")
str(CityTemp)

# Create a dataset of the maximum temperatures for each city
CityTempMax <- aggregate(CityTemp$Monthly.AverageTemp, by = list(CityTemp$City), max, na.rm = TRUE)
colnames(CityTempMax) <- c("City", "Maximum")
str(CityTempMax)

# Create a dataset of the minimum temperatures for each city
CityTempMin <- aggregate(CityTemp$Monthly.AverageTemp, by = list(CityTemp$City), min, na.rm = TRUE)
colnames(CityTempMin) <- c("City", "Minimum")
str(CityTempMin)

# Create a vector of only the max temperatures so that we don't have duplicate "city" columns when the data is merged
CityTempMax2 <- CityTempMax$Maximum

# Merge the data into a new combined dataset
CityTempDiff <- cbind(CityTempMin, CityTempMax2)
colnames(CityTempDiff) <- c("City", "Minimum", "Maximum")
str(CityTempDiff)

# Create a variable of the difference between each city's maximum and minimum temperatures
CityTempDiff$Difference <- CityTempDiff$Maximum - CityTempDiff$Minimum

# Order the data by the max differences for each city
CityTempDiff <- CityTempDiff[order(CityTempDiff$Difference, decreasing = TRUE),]
head(CityTempDiff)