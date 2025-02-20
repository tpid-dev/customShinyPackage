# Utility function to calculate the countdown timer
calculate_countdown <- function(target_date) {
  target_date <- as.POSIXct(target_date)
  current_time <- Sys.time()
  time_diff <- target_date - current_time

  if (time_diff > 0) {
    days <- as.numeric(time_diff, units = "days")
    hours <- as.numeric(time_diff, units = "hours") %% 24
    minutes <- as.numeric(time_diff, units = "mins") %% 60
    seconds <- as.numeric(time_diff, units = "secs") %% 60
    paste(
      floor(days), "days, ",
      floor(hours), "hours, ",
      floor(minutes), "minutes, and ",
      floor(seconds), "seconds"
    )
  } else {
    "The target date has passed!"
  }
}

