install.packages('testthat')
library(testthat)
library(usethis)
library(ggplot2)

usethis::use_testthat()

# fahrenheit to celsius converter
use_test(name = 'fahrenheit_to_celsius')

test_file('tests/testthat/test-fahrenheit_to_celsius.R')


# bar plot to show number of drink consumption
use_test(name = 'drink_module')

test_file('tests/testthat/test-drink_module.R')

# countdown timer to target date
use_test(name = 'date_clock')

test_file('tests/testthat/test-date_clock.R')

# calculate due date
use_test(name = 'add_days')

test_file('tests/testthat/test-add_days.R')

testthat::test_dir("tests/testthat/")

