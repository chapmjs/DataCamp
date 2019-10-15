library(RMySQL)

con <- dbConnect(RMySQL::MySQL(),
                 dbname = "company",
                 host = "courses.csrrinzqubik.us-east-1.rds.amazonaws.com",
                 port = 3306,
                 user = "student",
                 password = "datacamp")

employees <- dbReadTable(con, "employees")

subset(employees,
       subset = started_at > "2012-09-01",
       select = name)

dbGetQuery(con,"SELECT name FROM employees 
                  WHERE started_at > \"2012-09-01\"")

products <- dbReadTable(con, "products")

subset(products, subset = contract == 1)

dbGetQuery(con, "SELECT * FROM products WHERE contract = 1")

dbDisconnect(con)




dbGetQuery(con,"SELECT name, post FROM users INNER JOIN tweats on users.id = user_id WHERE date < '2015-09-19'")



url_csv <- "http://s3.amazonaws.com/assets.datacamp.com/production/course_1478/datasets/swimming_pools.csv"


# 2019 10 14

# read states.csv via url, both with and without secure
read.csv("http://s3.amazonaws.com/assets.datacamp.com/course/importing_data_into_r/states.csv")
read.csv("https://s3.amazonaws.com/assets.datacamp.com/course/importing_data_into_r/states.csv")


# Load the readr package
library(readr)

# Import the csv file: pools
url_csv <- "http://s3.amazonaws.com/assets.datacamp.com/production/course_1478/datasets/swimming_pools.csv"


# Import the txt file: potatoes
url_delim <- "http://s3.amazonaws.com/assets.datacamp.com/production/course_1478/datasets/potatoes.txt"


# Print pools and potatoes
pools
potatoes


# 2019 10 15
# load jsonlite
library(jsonlite)

# Definition of quandl_url
quandl_url <- "https://www.quandl.com/api/v3/datasets/WIKI/FB/data.json?auth_token=i83asDsiWUUyfoypkgMz"

# Import Quandl data: quandl_data
quandl_data <- fromJSON(quandl_url)

# Print structure of quandl_data
str(quandl_data)



# The package jsonlite is already loaded

# Definition of the URLs
url_sw4 <- "http://www.omdbapi.com/?apikey=72bc447a&i=tt0076759&r=json"
url_sw3 <- "http://www.omdbapi.com/?apikey=72bc447a&i=tt0121766&r=json"

# Import two URLs with fromJSON(): sw4 and sw3
sw4 <- fromJSON(url_sw4)
sw3 <- fromJSON(url_sw3)


# Print out the Title element of both lists
sw4$Title
sw3$Title


# Is the release year of sw4 later than sw3?
sw4$Year > sw3$Year
