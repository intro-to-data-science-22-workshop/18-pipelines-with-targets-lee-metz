# setup
library(targets)
source("R/1-functions.R")
tar_option_set(
  packages = c(
    "kableExtra",
    "tidyverse",
    "targets",
    "nycflights13",
    "modelsummary"
  )
)

# List of targets
list(
  tar_target(flights_file, "Data/nyc_flights.csv", format = "file"), # loading the data 
  tar_target(flights_data, get_data(flights_file)), # importing it to the R environment 
  tar_target(run_lm, run_lmodel(flights_data$arr_delay, flights_data$dep_delay, data = flights_data, n_var = 1)), # running a linear model
  tar_target(metrics, mod_metrics(run_lm)), # calculating the metrics for the linear model
  #add your Target for the Plot here, dont't forget that the file has end in a list of targets seperated by a comma
)
























































































































# solution <- tar_target(plotting, plot_mod(flights_data$dep_delay, flights_data$arr_delay,run_lm))
