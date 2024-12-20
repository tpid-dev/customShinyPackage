# UI Module
add_days_ui <- function(id) {
  ns <- NS(id)  # This is to create unique input names
  tagList(
    # Input for the number of days to add
    numericInput(ns("days"), "Enter number of days to add:", value = 1, min = 1),
    # Output for the calculated due date
    textOutput(ns("due_date"))
  )
}
