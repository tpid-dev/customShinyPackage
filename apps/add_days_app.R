# Load necessary libraries
library(shiny)
library(customShinyPackage)

# Define the UI
ui <- fluidPage(
  # Use the add_days_ui module
  add_days_ui("add_days")
)

# Define the server logic
server <- function(input, output, session) {
  # Use the add_days_server module
  add_days_server("add_days")
}

# Run the Shiny app
shinyApp(ui, server)
