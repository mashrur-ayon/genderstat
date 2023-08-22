# Load necessary libraries
library(ggplot2)
library(reshape2)

#' @noRd
.data <- dplyr::.data

#' Plot Gender Empowerment Measure (GEM) for 15 Countries
#'
#' Visualizes the Gender Empowerment Measure (GEM) along with other metrics
#' such as female parliament seats, female professional positions, and
#' female to male earned income ratio for 15 countries based on GEM.
#'
#' @param data A data frame containing the required metrics for GEM visualization.
#'
#' @return A ggplot object representing the bar chart of the GEM and other metrics.
#'
#' @examples
#'
#' data(real_data_GEM) # Load example dataset
#' plot_gem(real_data_GEM)
#'
#' @export
plot_gem <- function(data) {
  ...
}



plot_gem <- function(data) {

  # Check if the data contains the necessary columns
  required_columns <- c("country", "female_parliament_seats", "female_professional_positions", "female_to_male_earned_income_ratio")
  if (!all(required_columns %in% colnames(data))) {
    stop("The input data must contain the required columns.")
  }

  # Compute GEM
  data$GEM <- gender_empowerment_measure(data)

  # Sort data based on GEM and take 15 countries
  top_15_data <- data[order(-data$GEM), ][1:15, ]

  # Melt the data for plotting
  melted_data <- reshape2::melt(top_15_data, id.vars = "country",
                                variable.name = "Metric",
                                value.name = "Value")

  # Plot
  p <- ggplot2::ggplot(melted_data,
                       ggplot2::aes_string(x = "reorder(country, -Value)",
                                           y = "Value",
                                           fill = "Metric")) +
    ggplot2::geom_bar(stat = "identity", position = "dodge") +
    ggplot2::labs(title = "15 Countries by Gender Empowerment Measure (GEM)",
                  x = "Country", y = "Value") +
    ggplot2::theme_minimal() +
    ggplot2::theme(axis.text.x = ggplot2::element_text(angle = 45, hjust = 1))

  print(p)
}

