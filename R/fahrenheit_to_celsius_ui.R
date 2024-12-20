# Module UI
fahrenheit_to_celsius_ui <- function(id) {
  ns <- NS(id)

  tagList(
    numericInput(ns("fahrenheit"), "Enter temperature in Fahrenheit:", value = 32, min = -100, max = 1000),
    textOutput(ns("celsius"))
  )
}
