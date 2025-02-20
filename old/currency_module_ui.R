library(shiny)
library(httr)
library(jsonlite)

# Function to get exchange rates from the API
get_exchange_rate <- function(from_currency = "GBP", to_currency = "USD") {
  # URL to the ExchangeRate-API (Replace with your API key)
  api_url <- paste0("https://v6.exchangerate-api.com/v6/YOUR_API_KEY/latest/", from_currency)

  # Make the GET request to the API
  response <- GET(api_url)
  data <- content(response, "parsed")

  # Extract the exchange rate for the desired currency
  exchange_rate <- data$conversion_rates[[to_currency]]
  return(exchange_rate)
}

# 1. Module UI: Currency Conversion Inputs
currency_module_ui <- function(id) {
  ns <- NS(id)  # Namespace for module ID
  tagList(
    fluidRow(
      column(6,
             numericInput(ns("amount_gbp"), "Amount in GBP:", value = 1, min = 0)
      ),
      column(6,
             selectInput(ns("currency"), "Select Target Currency:",
                         choices = c("USD", "EUR", "JPY", "AUD", "CAD", "INR"))
      )
    ),
    fluidRow(
      column(12,
             textOutput(ns("converted_amount"))  # Output converted amount
      )
    )
  )
}
