# libraries needed for the functions to run 
library(tidyverse)
library(stargazer)
library(modelsummary)

### `get_data()` function 
get_data <- function(file) {
  read_csv(file, col_types = cols())
}

### `run_lmodel()` function 
# Specifying a function that takes 1 dependant variable, and up to 3 independent ones 
run_lmodel <- function(y, x1, x2, x3, data = data, n_var = 1){
  if (n_var == 1){ # 1 independent variable
    lm(y ~ x1, data = data)
  }else if ( n_var == 2){ # 2 independent variables
    lm(y ~ x1 + x2, data = data)
  } else if(n_var == 3){ # 3 independent variables
    lm(y ~ x1 + x2 + x3, data = data)
  } else{ # error message
    print("n_var not specified or out of range, valid values [1-3]")
  }
}

# ### `plot_mod()` function
# plot_mod <- function(x_axis, y_axis,lm = lm, c = 'red1', x_lab = "x-axis", y_lab = "y-axis"){
#   plot(x_axis, y_axis, pch = 1, col = c, xlab = x_lab, ylab = y_lab) + 
#     abline(lm)
#   }

### `mod_metrics()` function
mod_metrics <- function(lm){
  modelsummary(list(lm))
  }
