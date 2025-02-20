library(shiny)
library(lubridate)

# 1. Module UI: Time Start and Duration Input UI
time_module_ui <- function(id) {
  ns <- NS(id)  # Namespace for module ID
  tagList(
    fluidRow(
      column(6,
             dateInput(ns("start_time"), "Select Start Time:", value = Sys.time()) # Start Time input
      ),
      column(6,
             numericInput(ns("duration"), "Duration in Hours:", value = 1, min = 0, step = 0.1) # Duration in hours input
      )
    ),
    fluidRow(
      column(12,
             textOutput(ns("finished_time"))  # Output finished time
      )
    )
  )
}

# 2. Module Server: Time Start and Duration Logic
time_module_server <- function(id) {
  moduleServer(id, function(input, output, session) {

    # Calculate the finished time when the user inputs start time and duration
    output$finished_time <- renderText({
      # Get the input start time and duration
      start_time <- input$start_time
      duration_hours <- input$duration

      # Convert start time to POSIXct (if not already in the right format)
      start_time <- as.POSIXct(start_time)

      # Calculate the finished time
      finished_time <- start_time + hours(duration_hours)

      # Format and return the finished time as a string
      paste("Time Finished: ", format(finished_time, "%Y-%m-%d %H:%M:%S"))
    })

  })
}

# 3. Main UI
ui <- fluidPage(
  titlePanel("Start Time and Duration Calculator"),

  sidebarLayout(
    sidebarPanel(
      time_module_ui("time_module")  # Use the module UI
    ),
    mainPanel(
      h4("Calculated Finished Time:"),
      textOutput("finished_time_display")  # Display output of the finished time
    )
  )
)

# 4. Main Server Logic
server <- function(input, output, session) {

  # Call the module and render its output
  time_module_server("time_module")

}

# Run the application
shinyApp(ui = ui, server = server)

