time_module_ui <- function(id) {
  ns <- NS(id)
  tagList(
    fluidRow(
      column(6,
             dateInput(ns("start_time"), "Select Start Time:", value = Sys.time())
      ),
      column(6,
             numericInput(ns("duration"), "Duration in Hours:", value = 1, min = 0, step = 0.1)
      )
    ),
    fluidRow(
      column(12,
             textOutput(ns("finished_time"))
      )
    )
  )
}
