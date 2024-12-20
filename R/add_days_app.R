# Load the necessary libraries
library(shiny)

# Source the module UI and server functions
source("add_days_ui.R")   # This will load the UI module
source("add_days_server.R")  # This will load the server module   })


# Define the main UI
ui <- fluidPage(
  titlePanel("Add Days to Today's Date"),
  sidebarLayout(
    sidebarPanel(
      add_days_ui("add_days_module")  # Call the UI module
    ),
    mainPanel(
      # The module's output will be displayed here
    )
  )
)

# Define the main server function
server <- function(input, output, session) {
  add_days_server("add_days_module")  # Call the server module
}

# Run the Shiny app
shinyApp(ui, server)
