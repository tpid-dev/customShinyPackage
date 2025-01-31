library(shiny)
library(customShinyPackage)

ui <- fluidPage(
  date_clock_ui("countdown_module")  # Insert UI Module
)

server <- function(input, output, session) {
  date_clock_server("countdown_module")  # Activate Server Module
}

shinyApp(ui, server)
