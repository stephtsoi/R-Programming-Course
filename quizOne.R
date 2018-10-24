##Use "hw1_data.csv" to answer the below
##Load quiz data
con = file("hw1_data.csv","r")
data = read.csv(con)

# What are the column names of the dataset?
dataHeader = colnames(data)
print(dataHeader)

# Extract the first 2 rows of the data frame and print them to the console. What does the output look like?
firstTwoRows = data[1:2,]
print(firstTwoRows)

# How many observations (i.e. rows) are in this data frame?
totalRows = nrow(data)
print(totalRows)

# Extract the last 2 rows of the data frame and print them to the console. What does the output look like?
lastTwoRows = data[152:153,]
print(lastTwoRows)

# What is the value of Ozone in the 47th row?
ozone47 = data[47,1]
print(ozone47)

# How many missing values are in the Ozone column of this data frame?
ozoneNA = is.na(data[,1])
sum(ozoneNA)

# What is the mean of the Ozone column in this dataset? Exclude missing values (coded as NA) from this calculation.
ozone = data[,1]
ozoneAvg = mean(ozone, na.rm = TRUE)
print(ozoneAvg)

# Extract the subset of rows of the data frame where Ozone values are above 31 and Temp values are above 90. 
# What is the mean of Solar.R in this subset?
temp =  data[,4]
subsetOzoneAndTemp = subset(data, ozone > 31 & temp > 90)
print(subsetOzoneAndTemp)
solarR = data[,2]
subsetSolarR = subset(solarR, ozone > 31 & temp > 90)
mean(subsetSolarR)

# What is the mean of "Temp" when "Month" is equal to 6?
month = data[,5]
subsetTemp = subset(temp, month == 6)
mean(subsetTemp)

# What was the maximum ozone value in the month of May (i.e. Month is equal to 5)?
ozoneMay = subset(ozone, month == 5)
max(ozoneMay, na.rm = TRUE)