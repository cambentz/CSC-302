# load library
library(ggplot2)

# read data
flights <- read.csv("flights.csv")

# preview data
print(flights)

# plot data
ggplot(flights, aes(x=year, y=passengers, color=month, group=month)) +
  geom_line() +
    labs(
      title = "Monthly Flight Passenges per Year",
      x = "Year",
      y = "Number of Passengers",
      color = "Month"
    ) +
  theme_bw()
  