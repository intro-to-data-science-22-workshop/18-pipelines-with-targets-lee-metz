#The Idea to have interactive question set-up as functions was taken from 
# Will Landau and his interactive 4 Hour-Workshop on targets, the code below is 
#taken from his repo at https://github.com/wlandau/targets-tutorial

choices <- function(x, ...) {
  switch(tolower(x), ...)
}

yes <- function(x = "") {
  withr::local_options(list(crayon.enabled = TRUE))
  message(cli::col_green(cli::symbol$tick), " Correct! ", x)
}

no <- function(x = "") {
  withr::local_options(list(crayon.enabled = TRUE))
  message(cli::col_red(cli::symbol$cross), " Incorrect. ", x)
}

issue <- function() {
  withr::local_options(list(crayon.enabled = TRUE))
  message(
    cli::col_yellow(cli::symbol$warning),
    " Please file an issue at https://github.com/wlandau/targets-tutorial"
  )
}

invalid <- function() {
  withr::local_options(list(crayon.enabled = TRUE))
  x <- "Please supply a single letter among the choices given."
  message(cli::col_yellow(cli::symbol$warning), " ", x)
}
