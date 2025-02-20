# 2. Module Server: Currency Conversion Logic
currency_module_server <- function(id) {
  moduleServer(id, function(input, output, session) {

    # Render the converted amount when inputs change
    output$converted_amount <- renderText({
      # Get the amount in GBP and the selected target currency
      amount_gbp <- input$amount_gbp
      target_currency <- input$currency

      # Get the current exchange rate from GBP to the target currency
      exchange_rate <- get_exchange_rate(from_currency = "GBP", to_currency = target_currency)

      # Convert the amount
      converted_amount <- amount_gbp * exchange_rate

      # Format the output
      paste("Converted Amount: ", round(converted_amount, 2), target_currency)
    })

  })
}
