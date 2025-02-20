#' Format Countdown Time
#'
#' Formats the time difference as a readable string showing the remaining days, hours, minutes, and seconds.
#' If the target date has passed, it returns a message indicating the target date is in the past.
#'
#' @param time_diff A `difftime` object representing the difference in time between the target date and the current time.
#'
#' @return A string indicating the remaining time (days, hours, minutes, seconds) or a message if the target date has passed.
#'
#' @examples
#' time_diff <- difftime(Sys.Date() + 7, Sys.time(), units = "secs")
#' format_countdown(time_diff)  # Format the countdown from now to 7 days later
#'
#' @export
format_countdown <- function(time_diff) {
  time_diff <- as.numeric(time_diff, units = "secs")  # Ensure numeric value

  if (time_diff > 0) {
    days <- floor(time_diff / (24 * 3600))
    hours <- floor((time_diff %% (24 * 3600)) / 3600)
    minutes <- floor((time_diff %% 3600) / 60)
    seconds <- floor(time_diff %% 60)

    paste(days, "days,", hours, "hours,", minutes, "minutes, and", seconds, "seconds left")
  } else {
    "The target date has passed!"
  }
}
