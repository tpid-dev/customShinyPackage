library(shiny)
library(customShinyPackage)


# Main UI of the app
ui <- fluidPage(
  titlePanel("Date and Countdown Timer"),
  sidebarLayout(
    sidebarPanel(
      date_clock_ui("date_clock_module")  # Calling the module UI
    ),
    mainPanel(
      # The main content is handled by the module itself
    )
  )
)

# Main Server function
server <- function(input, output, session) {
  callModule(date_clock_server, "date_clock_module")  # Calling the module server
}

# Run the Shiny app
shinyApp(ui = ui, server = server)
