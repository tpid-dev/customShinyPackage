# 1. calculate difference between target date time and current time

test_that("calculate_time_diff returns correct time difference", {
  fixed_time <- as.POSIXct("2025-02-20 12:00:00", tz = "UTC")
  target_date <- as.POSIXct("2025-02-20 12:01:00", tz = "UTC")

  expected_diff <- difftime(target_date, fixed_time, units = "secs")

  result <- calculate_time_diff(target_date, fixed_time)

  expect_equal(as.numeric(result), as.numeric(expected_diff))
})

test_that("calculate_time_diff returns negative when past date is given", {
  fixed_time <- as.POSIXct("2025-02-20 12:00:00", tz = "UTC")
  past_date <- as.POSIXct("2025-02-20 11:59:00", tz = "UTC")

  expected_diff <- difftime(past_date, fixed_time, units = "secs")

  result <- calculate_time_diff(past_date, fixed_time)

  expect_equal(as.numeric(result), as.numeric(expected_diff))
})


# 2. Output format is correct: 1 day, 1 hour, 1 minute, 1 second

test_that("format_countdown correctly formats positive time differences", {
  time_diff <- as.difftime(90061, units = "secs")  # 1 day, 1 hour, 1 min, 1 sec
  expected_output <- "1 days, 1 hours, 1 minutes, and 1 seconds left"

  result <- format_countdown(time_diff)
  expect_equal(result, expected_output)
})

test_that("format_countdown correctly handles zero time difference", {
  time_diff <- as.difftime(0, units = "secs")
  expect_equal(format_countdown(time_diff), "The target date has passed!")
})

test_that("format_countdown correctly handles negative time differences", {
  time_diff <- as.difftime(-500, units = "secs")  # Past time
  expect_equal(format_countdown(time_diff), "The target date has passed!")
})


