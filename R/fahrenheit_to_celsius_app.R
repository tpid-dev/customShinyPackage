library(shiny)

# Source the module UI and server functions
source("fahrenheit_to_celsius_ui.R")   # This will load the UI module
source("fahrenheit_to_celsius_server.R")  # This will load the server module

# Main UI of the app
ui <- fluidPage(
  titlePanel("Fahrenheit to Celsius Converter"),
  sidebarLayout(
    sidebarPanel(
      fahrenheit_to_celsius_ui("temp_converter")  # Calling the module UI
    ),
    mainPanel(
      # The main content is handled by the module itself
    )
  )
)

# Main Server function
server <- function(input, output, session) {
  callModule(fahrenheit_to_celsius_server, "temp_converter")  # Calling the module server
}

# Run the Shiny app
shinyApp(ui = ui, server = server)
