#' Date and Countdown Module UI
#'
#' This function creates the user interface (UI) for a countdown timer module. It displays the current date and time, allows the user to select a target date for the countdown, and shows the remaining time until the target date.
#'
#' @param id A unique identifier for the UI module. This ID is used to namespace the input and output elements.
#'
#' @return A `tagList` containing UI elements, including:
#'   \itemize{
#'     \item A text output for displaying the current date and time.
#'     \item A date input for selecting the target date for the countdown.
#'     \item A text output for displaying the countdown timer.
#'   }
#'
#' @details The UI includes:
#'   \itemize{
#'     \item A header and text output to display the current date and time.
#'     \item A date input field for the user to choose a target date (default is 7 days from the current date).
#'     \item A countdown timer that updates to show the remaining time until the target date.
#'   }
#'
#' @seealso \code{\link{date_clock_server}} for the corresponding server-side logic.
#'
#' @examples
#' # In a Shiny app, this UI module can be used as follows:
#' # ui <- fluidPage(
#' #   date_clock_ui("countdown_module")
#' # )
#' # server <- function(input, output, session) {
#' #   date_clock_server("countdown_module", input, output, session)
#' # }
#'
#' @export
date_clock_ui <- function(id) {
  ns <- NS(id)  # Create a namespace for the module

  tagList(
    h4("Current Date and Time:"),
    textOutput(ns("current_datetime")),  # Namespaced output for current date and time

    h4("Select a target date for countdown:"),
    dateInput(ns("target_date"), "Choose Target Date", value = Sys.Date() + 7),  # Namespaced input for target date

    h4("Countdown Timer:"),
    textOutput(ns("countdown"))  # Namespaced output for countdown timer
  )
}

