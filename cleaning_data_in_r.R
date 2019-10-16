# cleaning_data_in_r.R

lunch <- read.csv("datasets/lunch_clean.csv")

# view its class
class(lunch)

#view dimensions
dim(lunch)

# column names
names(lunch)

# structure of data
str(lunch)


#structure of data, dplyr way
library(dplyr)
glimpse(lunch)

# view summary
summary(lunch)

head(lunch)


head(lunch, 15)

#histogram
hist(lunch$perc_free_red)

# plot
plot(lunch$year, lunch$perc_free_red)


