#' Calculate a Due Date
#'
#' This function calculates a due date by adding a specified number of days to today's date.
#'
#' @param days An integer specifying the number of days to add to today's date.
#'
#' @return A `Date` object representing the calculated due date.
#'
#' @examples
#' # Calculate a due date 10 days from today
#' calculate_due_date(10)
#'
#' # Calculate a due date 0 days from today (i.e., today)
#' calculate_due_date(0)
#'
#' @export
calculate_due_date <- function(days) {
  # Get today's date
  today <- Sys.Date()

  # Calculate the due date
  due_date <- today + days

  # Return the due date as a date object
  return(due_date)
}
