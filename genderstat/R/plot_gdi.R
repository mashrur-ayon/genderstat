library(ggplot2)
library(dplyr)
library(tidyr)

#' @noRd
.data <- dplyr::.data

#' Plot Gender Development Index (GDI) for Bottom 15 Countries
#'
#' @param data A data frame containing the required metrics for GDI computation.
#' @return A ggplot2 object visualizing the GDI for the bottom 15 countries.
#' @importFrom ggplot2 ggplot aes geom_bar coord_flip labs theme_minimal
#' @importFrom utils head
#' @importFrom stats reorder
#' @import dplyr
#' @examples
#' data(real_data_GDI) # Load example dataset
#' plot_gdi(real_data_GDI)
#' @export
plot_gdi <- function(data) {
  gdi_data <- gender_development_index(data)
  top_gdi <- dplyr::arrange(gdi_data, desc(.data$GDI)) %>%
    dplyr::slice_head(n = 15)

  ggplot2::ggplot(top_gdi, aes(x = stats::reorder(.data$country, .data$GDI), y = .data$GDI)) +
    geom_bar(stat = "identity", fill = "#56B4E9") +
    coord_flip() +
    labs(title = "Bottom 15 Countries by Gender Development Index (GDI)",
         x = "Country",
         y = "GDI Value") +
    theme_minimal()
}

#' Plot Human Development Index (HDI) for Bottom 15 Countries by Gender
#'
#' @param data A data frame containing the required metrics for GDI and HDI computation.
#' @return A ggplot2 object visualizing the HDI for males and females in the bottom 15 countries.
#' @importFrom ggplot2 ggplot aes geom_point coord_flip labs theme_minimal scale_color_manual
#' @import dplyr
#' @import tidyr
#' @examples
#' data(real_data_GDI) # Load example dataset
#' plot_hdi(real_data_GDI)
#' @export
plot_hdi <- function(data) {
  gdi_data <- gender_development_index(data)
  top_data <- dplyr::arrange(gdi_data, desc(.data$GDI)) %>%
    dplyr::slice_head(n = 15)

  melted_data <- top_data %>%
    tidyr::pivot_longer(cols = c(.data$female_hdi, .data$male_hdi),
                        names_to = "gender",
                        values_to = "hdi")

  ggplot2::ggplot(melted_data, aes(x = .data$country, y = .data$hdi, color = .data$gender)) +
    geom_point(position = ggplot2::position_dodge(width = 0.5), size = 3) +
    coord_flip() +
    labs(title = "Human Development Index (HDI) for Bottom 15 Countries by Gender",
         x = "Country",
         y = "HDI Value") +
    theme_minimal() +
    scale_color_manual(values = c("female_hdi" = "#D55E00", "male_hdi" = "#009E73"))
}
