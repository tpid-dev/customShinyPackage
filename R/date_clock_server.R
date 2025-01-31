#' Date Clock Server Module
#'
#' Handles the countdown logic and updates the remaining time every second.
#'
#' @param id A unique module identifier.
#'
#' @return None (side effects: updates countdown timer in the UI).
#'
#' @export
date_clock_server <- function(id) {
  moduleServer(id, function(input, output, session) {


    # Reactive countdown calculation
    countdown <- reactive({
      req(input$target_date)  # Ensure a date is selected
      time_diff <- calculate_time_diff(input$target_date)
      format_countdown(time_diff)
    })

    # Update countdown every second
    output$countdown_timer <- renderText({
      invalidateLater(1000, session)  # Refresh every second
      countdown()
    })
  })
}
