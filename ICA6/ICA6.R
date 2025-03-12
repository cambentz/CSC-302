# 1. Read titanic.csv file and assign it to a dataframe called df

df <- read.csv("titanic.csv", header=T)

# 2. Use the summary function to get a statistical summary of your dataframe. 
#    Report for which columns you get meaninful statistical summaries (mean, median, etc).

summary(df)

# The mean age for passengers is 29.7, with the youngest passenger being younger than 6 months old.
# The mean 0.3838 for the survived column suggests that less than half of the passengers survived.
# The mean cost of fare is 32.20, with the most expensive ticket costing 551.33.

# 3. Assign the rows that don't have NA values for the Age columns from df to df2.

df2 <- df[is.na(df['Age'])==F, ]
head(df2)

# 4. Assign those rows which have Survived passengers under the age of 40 to another data frame called younger.

younger <- df2[df2['Age'] < 30 & df2['Survived'] == 1, ]
head(younger)

# 5. Assign those rows which have Survived passengers at the age of 30 and above to another data frame called older.

older <- df2[df2['Age'] >= 30 & df2['Survived'] == 1, ]
head(older)

#library(tidyr)
#library(dplyr)
#df %>% drop_na() %>% count(Age >= 30 & Survived == 1)
#df %>% drop_na() %>% count(Age < 30 & Survived == 1)
