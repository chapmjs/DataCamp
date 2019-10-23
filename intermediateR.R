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
