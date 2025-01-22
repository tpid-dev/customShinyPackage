#' Add Days Server
#'
#' This function defines the server-side logic for calculating a due date by adding a specified number of days
#' to the current date. It reacts to a `days` parameter and updates the `due_date` output with the calculated date.
#'
#' @param id A unique identifier for the server module. This ID is used to associate the inputs and outputs
#'   within the module.
#' @param days A numeric value representing the number of days to add to the current date. This parameter is passed
#'   to the module from the parent server or UI.
#'
#' @return This function does not return a value. It updates the `output$due_date` with the calculated due date,
#'   which is the current date plus the specified number of days.
#'
#' @details The server module calculates the due date using the `calculate_due_date` function and displays the result
#'   as a text output.
#'
#' @seealso \code{\link{add_days_ui}} for the corresponding UI module.
#'
#' @examples
#' # In a Shiny app, this server module can be used as follows:
#' # server <- function(input, output, session) {
#' #   add_days_server("add_days", days = reactive(input$days))
#' # }
#'
#' @export
add_days_server <- function(id, days) {
  moduleServer(id, function(input, output, session) {
    output$due_date <- renderText({
      # Calculate the due date using the provided days parameter
      due_date <- calculate_due_date(days())

      # Return a formatted string for display
      paste("Due date is:", due_date)
    })
  })
}

