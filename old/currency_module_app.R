ui <- fluidPage(
  titlePanel("Currency Converter (GBP to Other Currencies)"),

  sidebarLayout(
    sidebarPanel(
      currency_module_ui("currency_module")  # Use the currency conversion module
    ),
    mainPanel(
      h4("Converted Amount:"),
      textOutput("conversion_display")  # Display the conversion result
    )
  )
)

# 4. Main Server Logic
server <- function(input, output, session) {

  # Call the module and render its output
  currency_module_server("currency_module")

}

# Run the application
shinyApp(ui = ui, server = server)

