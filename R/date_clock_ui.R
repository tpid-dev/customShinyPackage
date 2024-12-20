# ui_module.R

# Module UI: Define the UI part of the module
date_clock_ui <- function(id) {
  ns <- NS(id)  # Namespace for the module

  tagList(
    h4("Current Date and Time:"),
    textOutput(ns("current_datetime")),  # To show current date and time

    h4("Select a target date for countdown:"),
    dateInput(ns("target_date"), "Choose Target Date", value = Sys.Date() + 7),  # Default is 7 days from now

    h4("Countdown Timer:"),
    textOutput(ns("countdown"))  # To show the countdown timer
  )
}
