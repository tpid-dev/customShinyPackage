# Module UI
time_finish_ui <- function(id) {
  ns <- NS(id)  # namespace function for modularization

  tagList(
    # User input: Start time
    datetimeInput(ns("start_time"), "Select Start Time", value = Sys.time()),

    # User input: Duration in hours
    numericInput(ns("duration"), "Enter Duration (hours)", value = 1, min = 0),

    # Output: calculated finish time
    textOutput(ns("finish_time"))
  )
}
