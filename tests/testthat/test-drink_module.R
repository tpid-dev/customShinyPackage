library(ggplot2)
library(vdiffr)  # For visual testing
library(customShinyPackage)

# 1. Test data creation function
test_that("create_drinks_data returns correct structure", {
  mock_input <- list(coffee = 2, energy_drink = 1, tea = 3, soft_drink = 0, water = 5)
  drinks_data <- create_drinks_data(mock_input)

  expect_s3_class(drinks_data, "data.frame")  # Check if it's a data frame
  expect_equal(nrow(drinks_data), 5)  # Should contain 5 rows (one per drink type)
  expect_named(drinks_data, c("Drink", "Count"))  # Ensure correct column names
})

# 2. Test plot creation function
# Unit test for create_drink_plot
test_that("create_drink_plot generates correct plot", {
  drinks_data <- data.frame(
    Drink = c("Coffee", "Tea", "Juice"),
    Count = c(10, 5, 8)
  )

  plot <- create_drink_plot(drinks_data)

  expect_s3_class(plot, "ggplot")  # Check if output is a ggplot object

  # Use vdiffr to check if the visual output remains consistent
  expect_doppelganger("drink_plot", plot)
})
