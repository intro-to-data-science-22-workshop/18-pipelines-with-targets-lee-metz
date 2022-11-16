answer_1_setup <- function(x) {
  choices(
    x,
    a = no("_targets.R has more than that."),
    b = no("_targets.R has more than that."),
    c = no("_targets.R has more than that."),
    d = yes(),
    invalid()
  )
}

answer1_inspect <- function(x) {
  choices(
    x,
    a = no("flights_data does not run first, and flights_file does not depend on churn_data."),
    b = yes(),
    c = no("flights_data does not run first, and the order you write targets in _targets.R does not matter."),
    d = no("The order you write targets in _targets.R does not matter."),
    invalid()
  )
}



answer1_outdated <- function(x) {
  choices(
    x,
    a = no("If you do not make changes, your project should have a decent shelf life."),
    b = no("To watch a file for changes, you need a tar_target() with format = \"file\"."),
    c = yes(),
    d = no("You can tell targets to watch files too with tar_target() and format = \"file\"."),
    invalid()
  )
}

answer1_function <- function(x) {
  choices(
    x,
    a = no("No other target depends on plotting."),
    b = no("tar_make() still takes the change in the plot seriously."),
    c = no(""),
    d = yes(),
    invalid()
  )
}

answer1_trivial <- function(x) {
  choices(
    x,
    a = no("tar_make() ignores trivial changes like comments and white space.)."),
    b = yes(),
    c = no("tar_make() does detect nontrivial changes to functions."),
    d = no("Some models depend on run_lm and targets dects this."),
    invalid()
  )
}

