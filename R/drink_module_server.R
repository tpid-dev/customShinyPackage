#' Drink Module Server: Plot Bar Graph of Drink Counts
#'
#' This function defines the server-side logic for rendering a bar plot based
#' on user input for various drink quantities (coffee, energy drink, tea,
#' soft drink, and water). The bar plot displays the count of each drink
#' type selected by the user.
#'
#' @param id A unique identifier for the server module. This ID is used to
#'        associate the inputs and outputs within the module.
#'
#' @return This function does not return a value. It updates the `output$drink_barplot`
#'         with a ggplot2 bar plot displaying the selected drink counts.
#'
#' @details The server module listens to the inputs for the number of each drink
#'          type (coffee, energy drinks, tea, soft drinks, and water) and generates
#'          a bar plot that shows the count of each drink selected by the user.
#'
#' @seealso \code{\link{drink_module_ui}} for the corresponding UI module.
#'
#' @examples
#' # In a Shiny app, this server module can be used as follows:
#' # server <- function(input, output, session) {
#' #   drink_module_server("drink_selection")
#' # }
#'
#' @export
drink_module_server <- function(id) {
  moduleServer(id, function(input, output, session) {

    # Render the bar plot based on user inputs
    output$drink_barplot <- renderPlot({

      # Create the data frame using the utility function
      drinks <- create_drinks_data(input)

      # Generate and render the plot using the utility function
      create_drink_plot(drinks)

    })

  })
}
