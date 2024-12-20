# 2. Module Server: Plot Bar Graph of Drink Counts
drink_module_server <- function(id) {
  moduleServer(id, function(input, output, session) {

    # Render the bar plot based on user inputs
    output$drink_barplot <- renderPlot({
      # Create a data frame from the inputs
      drinks <- data.frame(
        Drink = c("Coffee", "Energy Drink", "Tea", "Soft Drink", "Water"),
        Count = c(input$coffee, input$energy_drink, input$tea, input$soft_drink, input$water)
      )

      # Create the bar plot using ggplot2
      ggplot(drinks, aes(x = Drink, y = Count, fill = Drink)) +
        geom_bar(stat = "identity") +
        labs(title = "Drink Count", x = "Drink Type", y = "Number of Drinks") +
        theme_minimal() +
        theme(axis.text.x = element_text(angle = 45, hjust = 1))  # Rotate labels for clarity
    })

  })
}

