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
