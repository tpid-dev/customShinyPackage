#' Calculate Time Difference
#'
#' Computes the time difference in seconds between the current system time and a target date.
#'
#' @param target_date A date input (character or Date) representing the target date.
#'
#' @return A `difftime` object representing the difference in seconds between the target date and the current time.
#'
#' @examples
#' calculate_time_diff(Sys.Date() + 1)  # Difference between now and tomorrow
#'
#' @export
calculate_time_diff <- function(target_date, current_time = Sys.time()) {
  target_datetime <- as.POSIXct(target_date)  # Convert to POSIXct
  difftime(target_datetime, current_time, units = "secs")
}
