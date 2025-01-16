#' Fahrenheit to Celsius Module Server
#'
#' This function defines the server-side logic for converting a temperature value from Fahrenheit to Celsius.
#' It reacts to the input value of Fahrenheit and updates the output displaying the converted Celsius value.
#'
#' @param input A list-like object containing the input values from the UI. This should include a `fahrenheit`
#' input element, which is a numeric value representing the temperature in Fahrenheit.
#' @param output A list-like object that holds the output renderers. It is expected to have an element `celsius`
#' which will be updated with the calculated Celsius temperature.
#' @param session The session object passed from the Shiny app's server function. It is used to manage the app's session state.
#'
#' @return This function does not return a value. It updates the `output$celsius` with the converted temperature in Celsius.
#'
#' @seealso \code{\link{fahrenheit_to_celsius_ui}} for the corresponding UI definition.
#'
#' @examples
#' # Assuming the UI for the application is already defined, this server function
#' # would be used in the main app's server function.
#'
#' # server <- function(input, output, session) {
#' #   fahrenheit_to_celsius_server(input, output, session)
#' # }
#'
#' @export
# Module Server
fahrenheit_to_celsius_server <- function(input, output, session) {

  # Reactively calculate Celsius based on Fahrenheit input
  celsius_value <- reactive({
    (input$fahrenheit - 32) * 5 / 9
  })

  # Display the converted Celsius value
  output$celsius <- renderText({
    paste("Temperature in Celsius:", round(celsius_value(), 2))
  })
}
