#' Add Days UI
#'
#' This function creates a user interface (UI) for adding a specified number of days to the current date.
#' The UI includes an input field for entering the number of days to add and an output field to display
#' the calculated due date.
#'
#' @param id A unique identifier for the UI module. This ID is used to namespace input and output elements.
#'
#' @return A `tagList` containing:
#'   \itemize{
#'     \item A numeric input for entering the number of days to add (default is 1).
#'     \item A text output for displaying the calculated due date after adding the specified number of days.
#'   }
#'
#' @examples
#' # In a Shiny app, this UI module can be used as follows:
#' # ui <- fluidPage(
#' #   add_days_ui("add_days")
#' # )
#' # server <- function(input, output, session) {
#' #   add_days_server("add_days", input, output, session)
#' # }
#'
#' @export
add_days_ui <- function(id) {
  ns <- NS(id)  # This is to create unique input names
  tagList(
    numericInput(ns("days"), "Enter number of days to add:", value = 1, min = 1),
    textOutput(ns("due_date"))
  )
}

