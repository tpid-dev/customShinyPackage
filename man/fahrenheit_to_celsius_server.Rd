% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fahrenheit_to_celsius_server.R
\name{fahrenheit_to_celsius_server}
\alias{fahrenheit_to_celsius_server}
\title{Fahrenheit to Celsius Module Server}
\usage{
fahrenheit_to_celsius_server(input, output, session)
}
\arguments{
\item{input}{A list-like object containing the input values from the UI. This should include a `fahrenheit`
input element, which is a numeric value representing the temperature in Fahrenheit.}

\item{output}{A list-like object that holds the output renderers. It is expected to have an element `celsius`
which will be updated with the calculated Celsius temperature.}

\item{session}{The session object passed from the Shiny app's server function. It is used to manage the app's session state.}
}
\value{
This function does not return a value. It updates the `output$celsius` with the converted temperature in Celsius.
}
\description{
This function defines the server-side logic for converting a temperature value from Fahrenheit to Celsius.
It reacts to the input value of Fahrenheit and updates the output displaying the converted Celsius value.
}
\examples{
# Assuming the UI for the application is already defined, this server function
# would be used in the main app's server function.

# server <- function(input, output, session) {
#   fahrenheit_to_celsius_server(input, output, session)
# }

}
\seealso{
\code{\link{fahrenheit_to_celsius_ui}} for the corresponding UI definition.
}
