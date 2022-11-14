library(targets)
source("R/1-functions.R")
tar_option_set(
  packages = c(
    "tidyverse"
  )
)

list(
  tar_target(flights_file, "Data/nyc-flights.csv", format = "file"), 
  tar_target(flights_data, load_data(flights_file)),
  tar_target(run_lm, rund_model(model= "lm",flights_data)),
  
  #tar_target(run_glm, rund_model(model= "glm",flights_data)),
  #tar_target(report_results, rund_model(flights_data)) # I do not exactly remember how to establish a report as target
  
  )

