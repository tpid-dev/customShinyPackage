library(shiny)
library(ggplot2)
library(customShinyPackage)


# 3. Main UI
ui <- fluidPage(
  titlePanel("Drink Consumption Tracker"),

  sidebarLayout(
    sidebarPanel(
      drink_module_ui("drink_module")  # Use the drink input module
    ),
    mainPanel(
      h4("Bar Chart of Drinks Consumed:")
    )
  )
)

# 4. Main Server Logic
server <- function(input, output, session) {

  # Call the module and render its output
  drink_module_server("drink_module")

}

# Run the application
shinyApp(ui = ui, server = server)

