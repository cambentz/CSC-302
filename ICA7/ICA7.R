# Cameron Bentz
# CSC 302
# ICA7

# 2. Use read.csv function in R to the file. Then, show the first lines by using head(). 
# Finally, output the amount for Star Wars. You can either use indexes or column name.

boxoffice <- read.csv('boxoffice.csv', header = T)

swAmount <- boxoffice$amount[which(boxoffice$title_short == 'Star Wars')]

print(swAmount)
