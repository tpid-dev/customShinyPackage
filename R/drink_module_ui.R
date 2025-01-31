#' Drink Module UI: User Input for Drink Selection and Plot Display
#'
#' This function creates a user interface (UI) module for selecting the number
#' of various drinks (coffee, energy drinks, tea, soft drinks, and water).
#' It includes input fields for each drink type and renders a plot output
#' to visualize the selection in the form of a bar plot.
#'
#' @param id A unique identifier for the UI module. This ID is used to
#'        namespace the input and output elements.
#'
#' @return A `tagList` containing:
#'   \itemize{
#'     \item Numeric inputs for entering the number of each drink type (coffee, energy drinks, tea, soft drinks, water).
#'     \item A plot output for displaying the barplot of drink quantities.
#'   }
#'
#' @examples
#' # In a Shiny app, this UI module can be used as follows:
#' # ui <- fluidPage(
#' #   drink_module_ui("drink_selection")
#' # )
#'
#' @export
drink_module_ui <- function(id) {
  ns <- NS(id)  # Create a namespace for the module

  tagList(
    fluidRow(
      column(4, numericInput(ns("coffee"), "Number of Coffees:", value = 0, min = 0)),
      column(4, numericInput(ns("energy_drink"), "Number of Energy Drinks:", value = 0, min = 0)),
      column(4, numericInput(ns("tea"), "Number of Teas:", value = 0, min = 0))
    ),
    fluidRow(
      column(4, numericInput(ns("soft_drink"), "Number of Soft Drinks:", value = 0, min = 0)),
      column(4, numericInput(ns("water"), "Number of Waters:", value = 0, min = 0))
    ),
    fluidRow(
      column(12, plotOutput(ns("drink_barplot")))  # Namespaced plot output for barplot
    )
  )
}

