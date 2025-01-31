#' Utility function to create the drinks data frame
#'
#' This function takes the input values from the UI and creates a data frame
#' with the drink types and their corresponding counts.
#'
#' @param input A list of user inputs containing the quantities for each drink type.
#'
#' @return A data frame with two columns: 'Drink' (name of the drink) and 'Count' (number of drinks).
#'
#' @examples
#' # Assuming input contains the selected quantities
#' # create_drinks_data(list(coffee = 2, energy_drink = 3, tea = 1, soft_drink = 5, water = 7))
#' # This returns a data frame with drinks and counts.
create_drinks_data <- function(input) {
  data.frame(
    Drink = c("Coffee", "Energy Drink", "Tea", "Soft Drink", "Water"),
    Count = c(input$coffee, input$energy_drink, input$tea, input$soft_drink, input$water)
  )
}
