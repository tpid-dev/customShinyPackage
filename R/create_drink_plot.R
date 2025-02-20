#' Utility function to create the ggplot for the drink data
#'
#' This function takes a data frame containing drink counts and generates
#' a bar plot using ggplot2 to visually represent the data.
#'
#' @param drinks A data frame with two columns: 'Drink' and 'Count'.
#'
#' @return A ggplot object representing a bar plot of the drink counts.
#'
#' @examples
#' # create_drink_plot(data.frame(Drink = c("Coffee", "Tea"), Count = c(2, 3)))
#' # This returns a ggplot bar plot object.
#'
#' @export
create_drink_plot <- function(drinks) {
  ggplot(drinks, aes(x = Drink, y = Count, fill = Drink)) +
    geom_bar(stat = "identity") +
    labs(title = "Drink Count", x = "Drink Type", y = "Number of Drinks") +
    theme_minimal() +
    theme(axis.text.x = element_text(angle = 45, hjust = 1))  # Rotate labels for clarity
}
