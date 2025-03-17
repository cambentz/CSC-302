# Cameron Bentz
# HW2
# CSC-302

# 1 Run the following lines and study how they work. Then state what they do and output.

# This function creates the dataframe with the column names: "Name", "State", "Sales, and inputs each column's data.
df1 = data.frame(Name=c('James', 'Paul', 'Richards', 'Marico', 'Samantha', 'Ravi', 'Raghu', 
                        'Richards', 'George', 'Ema', 'Samantha', 'Catherine'),
                 State=c('Alaska', 'California', 'Texas', 'North Carolina', 'California', 'Texas',
                         'Alaska', 'Texas', 'North Carolina', 'Alaska', 'California', 'Texas'),
                 Sales=c(14, 24, 31, 12, 13, 7, 9, 31, 18, 16, 18, 14))

head(df1)

# This function groups the total number of sales by state without additional column headers.
aggregate(df1$Sales, by=list(df1$State), FUN=sum)

library(dplyr)

# This function is the same as the previous, but includes column headers, and uses the tidyverse dplyr library.
df1 %>% group_by(State) %>% summarise(sum_sales = sum(Sales))


# 2 User R to read the WorldCupMatches.csv from the DATA folder on Google Drive. Then perform the following:

df2 <- read.csv("WorldCupMatches.csv", header = T)

head(df2)

# (a) Find the size of the data frame. How many rows, how many columns? 

nrows <- nrow(df2)
ncols <- ncol(df2)

cat("There are", nrows, "rows and", ncols, "columns in the WorldCupMatches data frame.")

# (b) User summary function to report the statistical summary of your data.

summary(df2)

# (c) Find how many unique locations Olympics were held at.

uniqueCities <- length(unique(df2$City))

cat("The Olympics have been held in", uniqueCities, "unique cities.")

# (d) Find the average attendance.

averageAttendance <- mean(df2$Attendance, na.rm = TRUE)

roundedAttendance <- round(averageAttendance)

cat("The average attendance for the Olympics is", averageAttendance,
    "(Rounded to whole people numbers:", roundedAttendance, ").")

# (e) For each Home Team, what is the total number of goals scored?

aggregate(df2$Home.Team.Goals, by=list(df2$Home.Team.Name), FUN=sum)

# (f) What is the average number of attendees for each year? Is there a trend or pattern in the data?

library(dplyr)
df2 %>% group_by(Year) %>% summarise(averageAttendance = mean(Attendance, na.rm = TRUE))


# 3 Use R to read the metabolite.csv from the DATA folder on Google Drive. Then perform the following:

df3 <- read.csv("metabolite.csv")

head(df3)

# (a) Find how many Alzheimers patients there are in the dataset.

df3 %>% filter(Label == "Alzheimer") %>% summarise(count = n())

# (b) Use summary function to report the statistical summary of your data.

summary(df3)

# (c) Remove the rows which has missing value for the Dopamine column and assign the result to a new dataf rame.

df4 <- df3[!is.na(df3$Dopamine), ]

head(df4)

# (d) In the new dataframe, replace the missing values in the c4-OH-Pro column with the median value of the same column. 

medianVal <- median(df4$c4.OH.Pro, na.rm = TRUE)
df4$c4.OH.Pro[is.na(df4$c4.OH.Pro)] <- medianVal

head(df4)
