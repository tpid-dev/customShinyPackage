#' Fahrenheit to Celsius UI Module
#'
#' This function creates a Shiny UI module for converting Fahrenheit temperatures to Celsius.
#' It consists of a numeric input for entering a temperature in Fahrenheit and a text output
#' to display the equivalent temperature in Celsius.
#'
#' @param id \code{character} - The module ID. This is used to namespace the UI elements and prevent conflicts.
#' @return A Shiny UI element (\code{tagList}) containing the input and output components for the module.
#' @examples
#' if (interactive()) {
#'   library(shiny)
#'
#'   ui <- fluidPage(
#'     fahrenheit_to_celsius_ui("temp_converter")
#'   )
#'
#'   server <- function(input, output, session) {
#'     # Logic for server-side module can be added separately
#'   }
#'
#'   shinyApp(ui, server)
#' }
#' @export
fahrenheit_to_celsius_ui <- function(id) {
  ns <- NS(id)

  tagList(
    numericInput(ns("fahrenheit"), "Enter temperature in Fahrenheit:", value = 32, min = -100, max = 1000),
    textOutput(ns("celsius"))
  )
}
