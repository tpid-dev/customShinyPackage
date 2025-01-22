# Load the necessary libraries
library(shiny)
library(customShinyPackage)


# Main App UI
ui <- fluidPage(
  titlePanel("Add Days to Today's Date"),

  sidebarLayout(
    sidebarPanel(
      numericInput("days", "Enter number of days to add:", value = 1, min = 1)
    ),
    mainPanel(
      add_days_ui("add_days_module")
    )
  )
)

# Main App Server
server <- function(input, output, session) {
  # Declare the reactive value for days
  days <- reactive({
    input$days
  })

  # Pass the reactive value to the add_days_server module
  add_days_server("add_days_module", days = days)
}


# Run the Shiny App
shinyApp(ui, server)
