#' Date Clock UI Module
#'
#' This module provides the UI for a countdown timer where the user selects a target date.
#'
#' @param id A unique module identifier.
#'
#' @return A `tagList` containing:
#' - A date input for selecting the target date.
#' - A text output displaying the countdown timer.
#'
#' @export
date_clock_ui <- function(id) {
  ns <- NS(id)  # Namespace for module

  tagList(
    h4("Select a Target Date for Countdown:"),
    dateInput(ns("target_date"), "Choose Date", value = Sys.Date() + 7, min = Sys.Date()),

    h4("Countdown Timer:"),
    textOutput(ns("countdown_timer"))
  )
}
