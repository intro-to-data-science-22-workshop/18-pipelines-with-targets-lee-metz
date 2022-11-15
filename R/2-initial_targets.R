library(targets)
source("R/1-functions.R")
tar_option_set(
  packages = c(
    "kableExtra",
    "tidyverse",
    "targets",
    "nycflights13",
    "stargazer"
    
  )
)

list(
  tar_target(flights_file, "Data/nyc-flights.csv", format = "file"), 
  tar_target(flights_data, get_data(flights_file)),
  tar_target(run_lm, run_lmodel(data$arr_delay, data$dep_delay, data$origin, data = flights_data, n_var = 2),
  #tar_target(metrics, mod_metrics(run_lm))           
  #add your Target for the Plot here, dont't forget that the file has end in a list of targets seperated by a comma          
             
             )
  
  
  )

