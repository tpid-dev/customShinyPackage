# server_module.R

# Module Server: Define the server logic for date and countdown timer
date_clock_server <- function(input, output, session) {

  # Reactive expression to get the current date and time
  current_datetime <- reactive({
    Sys.time()  # Get the current system date and time
  })

  # Display the current date and time
  output$current_datetime <- renderText({
    format(current_datetime(), "%Y-%m-%d %H:%M:%S")  # Format date-time output
  })

  # Reactive expression to calculate the countdown to the selected target date
  countdown_timer <- reactive({
    target_date <- as.POSIXct(input$target_date)  # Convert input date to POSIXct
    current_time <- Sys.time()  # Get the current time

    # Calculate time difference
    time_diff <- target_date - current_time

    # If target date is in the future, show countdown
    if (time_diff > 0) {
      days <- as.numeric(time_diff, units = "days")
      hours <- as.numeric(time_diff, units = "hours") %% 24
      minutes <- as.numeric(time_diff, units = "mins") %% 60
      seconds <- as.numeric(time_diff, units = "secs") %% 60
      paste(
        floor(days), "days, ",
        floor(hours), "hours, ",
        floor(minutes), "minutes, and ",
        floor(seconds), "seconds"
      )
    } else {
      "The target date has passed!"
    }
  })

  # Display the countdown timer
  output$countdown <- renderText({
    countdown_timer()  # Show the countdown timer
  })

  # Update the countdown every second
  observe({
    invalidateLater(1000, session)  # Refresh every second
    output$countdown <- renderText({
      countdown_timer()
    })
  })
}
