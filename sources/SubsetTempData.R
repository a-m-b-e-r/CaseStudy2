# Subset Temperature to only get dates from 1900 and up
Temp <- subset(Temperature, Date2 >= "1900-01-01")
str(Temp)

# Create a dataset of the maximum temperatures by country
TempMax <- aggregate(Temp$Monthly.AverageTemp, by = list(Temp$Country), max, na.rm = TRUE)
colnames(TempMax) <- c("Country", "Maximum")
str(TempMax)

# Create a dataset of the minimum temperatures by country
TempMin <- aggregate(Temp$Monthly.AverageTemp, by = list(Temp$Country), min, na.rm = TRUE)
colnames(TempMin) <- c("Country", "Minimum")
str(TempMin)

# Create a vector of only the max temperatures so that we don't have duplicate "Country" columns when the data is merged
TempMax2 <- TempMax$Maximum

#Merge the data into a new combined dataset
TempDiff <- cbind(TempMin, TempMax2)
colnames(TempDiff) <- c("Country", "Minimum", "Maximum")
str(TempDiff)

# Create a new variable of the difference between each country's minimum and maximum temperatures
TempDiff$Difference <- TempDiff$Maximum - TempDiff$Minimum

# Order the dataset from greatest temperature difference to least
TempDiff <- TempDiff[order(TempDiff$Difference, decreasing = TRUE),]
head(TempDiff)


# We also need to subset the Temp data by dates since 1990 and only US temperature measurements
Temp2 <- subset(Temperature, Date2 >= "1990-01-01")
USTemp <- subset(Temp2, Country=="United States")
str(USTemp)

# Create a new variable converting the temperature readings from Celsius to Fahrenheit
USTemp$TempInF <- (USTemp$Monthly.AverageTemp * (9/5)) + 32
head(USTemp)

# Retrieve just the year from each reading
USTemp$Year <- year(USTemp$Date2)
tail(USTemp)

# Create a dataset of the average temperature by year
USYearlyTemp <- aggregate(USTemp$TempInF, by = list(USTemp$Year), mean, na.rm = TRUE)
str(USYearlyTemp)
colnames(USYearlyTemp) <- c("Year", "AverageTemp")