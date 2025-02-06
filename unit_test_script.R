install.packages('testthat')
library(testthat)
library(usethis)


usethis::use_testthat()

use_test(name = 'fahrenheit_to_celsius')

test_file('tests/testthat/test-fahrenheit_to_celsius.R')
