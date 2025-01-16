#' Add Days Server
#'
#' This function defines the server-side logic for calculating a due date by adding a specified number of days
#' to the current date. It reacts to user input and updates the `due_date` output with the calculated date.
#'
#' @param id A unique identifier for the server module. This ID is used to associate the inputs and outputs
#'   within the module.
#' @param input A list-like object containing input values from the UI. This includes the `days` input element,
#'   which represents the number of days to add.
#' @param output A list-like object containing the output renderers. This includes `due_date`, which will display
#'   the calculated due date.
#' @param session The session object passed from the Shiny app's server function. It manages the app's session state.
#'
#' @return This function does not return a value. It updates the `output$due_date` with the calculated due date,
#'   which is the current date plus the number of days entered by the user.
#'
#' @details The server module listens to the `days` input, adds the specified number of days to the current date,
#'   and displays the result as a text output.
#'
#' @seealso \code{\link{add_days_ui}} for the corresponding UI module.
#'
#' @examples
#' # In a Shiny app, this server module can be used as follows:
#' # server <- function(input, output, session) {
#' #   add_days_server("add_days")
#' # }
#'
#' @export
add_days_server <- function(id) {
  moduleServer(id, function(input, output, session) {
    output$due_date <- renderText({
      today <- Sys.Date()
      due_date <- today + input$days
      paste("Due date is:", due_date)
    })
  })
}
