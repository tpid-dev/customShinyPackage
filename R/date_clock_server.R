#' Countdown Module Server: Server Logic for Date and Countdown Timer
#'
#' Defines the server-side logic for displaying the current date and time, as well as a countdown timer
#' that shows the remaining time until the selected target date. The countdown is updated every second.
#'
#' @param input A list-like object containing the input values from the UI. This includes the `target_date`
#' input element, which is the target date selected by the user.
#' @param output A list-like object containing the output renderers. This includes `current_datetime` for
#' displaying the current date and time and `countdown` for showing the countdown timer.
#' @param session The session object passed from the Shiny app's server function. It is used to manage the app's session state.
#'
#' @return This function does not return a value. It updates the `output$current_datetime` with the current date and time
#' and the `output$countdown` with the remaining time until the target date.
#'
#' @details The server module:
#'   \itemize{
#'     \item Displays the current date and time.
#'     \item Calculates and displays the countdown to a target date selected by the user.
#'     \item Updates the countdown every second.
#'   }
#'
#' @seealso \code{\link{date_clock_ui}} for the corresponding UI module.
#'
#' @examples
#' # In a Shiny app, this server module can be used as follows:
#' # server <- function(input, output, session) {
#' #   date_clock_server(input, output, session)
#' # }
#'
#' @export
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
