# Module Server
time_finish_server <- function(input, output, session) {
  # Reactive expression to calculate the finish time
  output$finish_time <- renderText({
    start_time <- input$start_time
    duration <- input$duration  # Duration in hours

    # Calculate finish time by adding duration to start time
    finish_time <- start_time + as.difftime(duration, units = "hours")

    # Display the calculated finish time
    paste("Finish Time: ", format(finish_time, "%Y-%m-%d %H:%M:%S"))
  })
}
