today <- Sys.Date()
today

now <- Sys.time()
now

class(today)
class(now)

my_date <- as.Date("1977-01-01")
my_date <- as.Date("1971-14-05", format = "%Y-%d-%m")

my_time <- as.POSIXct("15:31", format = "%h:%m")

unclass(my_date)
