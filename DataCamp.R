search()
library("ggvis")
ggvis(mtcars, ~wt, ~hp)

nyc <- list(pop = 8405837,boroughs=c("Manhattan","Bronx","Brooklyn","Queens","Staten Island"), capital = FALSE)

for(info in nyc) {
  print(class(info))
}

lapply(nyc, class)

unlist(lapply(nyc, nchar))

cities <- c("New York", "Paris","London","Tokyo","Rio de Janeiro","Cape Town")

result <- lapply(cities,nchar)
str(result)

unlist(lapply(cities,nchar))

sapply(cities, nchar)


vapply(cities,nchar,numeric(1))


first_and_last <-function(name) {
  name <- gsub(" ","",name)
  letters <-strsplit(name,split="")[[1]]
  return(c(first = min(letters), last=max(letters)))
}

sapply(cities,first_and_last)

vapply(cities, first_and_last, character(2))

sapply(cities, unique_letters)

unique_letters <- function(name) {
  name <- gsub(" ","",name)
  letters <- strsplit(name,split="")[[1]]
  unique(letters)
}

sapply(cities,unique_letters)

vapply(cities,unique_letters, character(7))


seq(8,2, by = -2)
rep(seq(8,2,by=-2), times=2)
rep(seq(8,2,by=-2), each=2)
sort(rep(seq(8,2,by=-2), times=2))
sort(rep(seq(8,2,by=-2), times=2),decreasing=TRUE)


?regex

today <- Sys.Date()
today
now <- Sys.time()
now
class(now)
my_date <- as.Date("2016-12-13")
my_date

my_date2 <- as.Date("1971-14-05", format = "%Y-%d-%m")
my_time <- as.POSIXct("1971-05-14 11:25:15")
my_time

my_date + 1


my_date2b <- as.Date("1998-09-29")
my_date2b - my_date

unclass(my_date)
#17148