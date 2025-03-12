# Use built-in mtcars data frame in R to perform the following:

# 1. Use colnames and rownames functions to show the column and row names.

colnames(mtcars)
rownames(mtcars)

# 2. Use mean and sd functions in R to calculate the average and standard deviation for mpg and cyl columns.

# Mean and std dev for mpg
mean(mtcars$mpg)
sd(mtcars$mpg)

# Mean and std dev for cyl
mean(mtcars$cyl)
sd(mtcars$cyl)

# 3. Use colMeans function on mtcars to see the average values for all columns

colMeans(mtcars)


# 4. Show the cyl value for Mazda RX4 by using row and column names in your data frame

mtcars["Mazda RX4", "cyl"]