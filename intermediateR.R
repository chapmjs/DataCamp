# intermediate R
# 2019 10 23

# Initialize i as 1 
i <- 1

# Code the while loop
while (i <= 10) {
  print(3 * i)
  if ( 3*i %% 8 == 0 ) {
    break
  }
  i <- i + 1
}


# args function - which arguments are used

args(sd)
# function (x, na.rm = FALSE)
# NULL


cities <- c("New York", "Paris", "London", "Tokyo", "Rio de Janeiro", "Cape Town", "Buena Vista VA")


first_and_last <- function(name) {
  name <- gsub(" ", "", name)
  letters <- strsplit(name,split="")[[1]]
  c(first = min(letters), last = max(letters))
}

first_and_last("New York")
first_and_last("John Shadrack Chapman")

sapply(cities, first_and_last)

lapply(cities, first_and_last)

unique_letters <- function(name) {
  name <- gsub(" ", "", name)
  letters <- strsplit(name, split = "")[[1]]
  unique(letters)
}

lapply(cities, unique_letters)

sapply(cities, unique_letters)
