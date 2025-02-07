
test_that("multiplication works", {

  expect_equal(2 * 2,  4)

})


test_that("fahrenheit correctly converts to celcius", {

  expect_equal(fahrenheit_to_celsius(32), 0)
  expect_equal(round(fahrenheit_to_celsius(100), 2), 37.78)

})
