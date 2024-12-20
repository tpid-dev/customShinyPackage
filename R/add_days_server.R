# Server Module
add_days_server <- function(id) {
  moduleServer(id, function(input, output, session) {
    # Reactive expression to calculate the due date
    output$due_date <- renderText({
      # Get today's date
      today <- Sys.Date()

      # Add the number of days entered by the user
      due_date <- today + input$days

      # Return the due date
      paste("Due date is:", due_date)
    })
  })
}
