#' Convert Fahrenheit to Celsius
#'
#' This function converts a temperature from Fahrenheit to Celsius.
#'
#' @param fahrenheit A numeric value representing the temperature in Fahrenheit.
#'
#' @return The corresponding temperature in Celsius.
#'
#' @examples
#' fahrenheit_to_celsius(32)  # Returns 0
#' fahrenheit_to_celsius(100) # Returns 37.78
#'
#' @export
fahrenheit_to_celsius <- function(fahrenheit) {
  #calculate to celsius using fahrenheit input
  (fahrenheit - 32) * 5 / 9
}


