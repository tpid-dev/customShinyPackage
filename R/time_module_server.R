time_module_server <- function(id) {
  moduleServer(id, function(input, output, session) {

    output$finished_time <- renderText({
      # Get the input start time and duration
      start_time <- input$start_time
      duration_hours <- input$duration

      # Convert to POSIXct if it's not already
      start_time <- as.POSIXct(start_time)

      # Calculate the finished time
      finished_time <- start_time + hours(duration_hours)

      # Format and return the finished time
      paste("Time Finished: ", format(finished_time, "%Y-%m-%d %H:%M:%S"))
    })

  })
}
