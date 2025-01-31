#' Fahrenheit to Celsius Server
#'
#' This function defines the server-side logic for converting a temperature value from Fahrenheit to Celsius.
#' It reacts to a `fahrenheit` input and updates the `celsius` output with the converted temperature in Celsius.
#'
#' @param id A unique identifier for the server module. This ID is used to associate the inputs and outputs
#'   within the module.
#' @param fahrenheit A numeric value representing the temperature in Fahrenheit. This parameter is passed
#'   to the module from the parent server or UI.
#'
#' @return This function does not return a value. It updates the `output$celsius` with the converted temperature in Celsius.
#'
#' @details The server module calculates the Celsius temperature using the `fahrenheit_to_celsius` function and displays the result
#'   as a text output.
#'
#' @seealso \code{\link{fahrenheit_to_celsius_ui}} for the corresponding UI module.
#'
#' @examples
#' # In a Shiny app, this server module can be used as follows:
#' # server <- function(input, output, session) {
#' #   fahrenheit_to_celsius_server("fahrenheit_to_celsius", fahrenheit = reactive(input$fahrenheit))
#' # }
#'
#' @export
fahrenheit_to_celsius_server <- function(id, fahrenheit) {
  moduleServer(id, function(input, output, session) {

    # Reactively calculate Celsius based on Fahrenheit input
    celsius_value <- reactive({
      fahrenheit_to_celsius(fahrenheit())  # Use the fahrenheit input to calculate Celsius
    })

    # Display the converted Celsius value
    output$celsius <- renderText({
      paste("Temperature in Celsius:", round(celsius_value(), 2))  # Round to two decimal places
    })

  })
}

