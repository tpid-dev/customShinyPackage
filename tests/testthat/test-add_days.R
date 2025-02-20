# Function tested
calculate_due_date <- function(days, start_date = Sys.Date()) {
  # Calculate the due date
  due_date <- start_date + days

  # Return the due date as a date object
  return(due_date)
}



# 1. Test that number of days added gives correct date
test_that("calculate_due_date correctly calculates future due dates", {
  fixed_date <- as.Date("2025-02-20")  # Fixed start date for testing
  result <- calculate_due_date(10, fixed_date)
  expected <- as.Date("2025-03-02")  # 10 days later

  expect_equal(result, expected)
})

# 2. Test that minus-ing days gives correct past date
test_that("calculate_due_date correctly calculates past due dates", {
  fixed_date <- as.Date("2025-02-20")
  result <- calculate_due_date(-5, fixed_date)
  expected <- as.Date("2025-02-15")  # 5 days earlier

  expect_equal(result, expected)
})

# 3. Test that keeping date fixed returns today's date
test_that("calculate_due_date returns today's date when days = 0", {
  fixed_date <- as.Date("2025-02-20")
  result <- calculate_due_date(0, fixed_date)
  expected <- fixed_date  # Should return the same date

  expect_equal(result, expected)
})
