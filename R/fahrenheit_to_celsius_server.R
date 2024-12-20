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
