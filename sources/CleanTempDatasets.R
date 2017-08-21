# Import Temp dataset and view the structure
Temperature <- read.csv("data/TEMP.csv", header = TRUE, sep = ',')
str(Temperature)
head(Temperature)
tail(Temperature)

# The data has multiple date formats, so this will standardize them.
Temperature$Date2 <- parse_date_time(x = Temperature$Date, orders = c("y-m-d", "m/d/y"))

# Import CityTemp dataset and view the structure
CityTemperature <- read.csv("data/CityTemp.csv", header = TRUE, sep = ',')
str(CityTemperature)
head(CityTemperature)
tail(CityTemperature)

# Just as with the previous dataset, we need to standardize the date formats.
CityTemperature$Date2 <- parse_date_time(x = CityTemperature$Date, orders = c("y-m-d", "m/d/y"))