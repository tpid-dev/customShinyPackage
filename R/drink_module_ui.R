library(shiny)
library(ggplot2)

# 1. Module UI: Drink Selection and Input
drink_module_ui <- function(id) {
  ns <- NS(id)  # Namespace for module ID
  tagList(
    fluidRow(
      column(4,
             numericInput(ns("coffee"), "Number of Coffees:", value = 0, min = 0)
      ),
      column(4,
             numericInput(ns("energy_drink"), "Number of Energy Drinks:", value = 0, min = 0)
      ),
      column(4,
             numericInput(ns("tea"), "Number of Teas:", value = 0, min = 0)
      )
    ),
    fluidRow(
      column(4,
             numericInput(ns("soft_drink"), "Number of Soft Drinks:", value = 0, min = 0)
      ),
      column(4,
             numericInput(ns("water"), "Number of Waters:", value = 0, min = 0)
      )
    ),
    fluidRow(
      column(12,
             plotOutput(ns("drink_barplot"))  # Output the barplot
      )
    )
  )
}

