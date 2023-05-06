#' Calculate the Gender Development Index (GDI)
#'
#' This function calculates the Gender Development Index (GDI) using a data frame containing information on life expectancy, mean years of schooling, and Gross National Income (GNI) per capita for both men and women.
#' @param data A data frame containing the following columns: 'female_life_expectancy', 'male_life_expectancy', 'female_mean_schooling', 'male_mean_schooling', 'female_gni_per_capita', 'male_gni_per_capita'
#' @return The Gender Development Index (GDI) as a numeric value
#' @export
#' @examples
#' # Load a sample dataset containing GDI component data
#' data("sample_gdi_data")
#' # Calculate the Gender Development Index
#' gender_development_index(sample_gdi_data)

gender_development_index <- function(data) {
  # Check input data for required columns
  required_columns <- c("female_life_expectancy", "male_life_expectancy",
                        "female_mean_schooling", "male_mean_schooling",
                        "female_gni_per_capita", "male_gni_per_capita")
  if (!all(required_columns %in% colnames(data))) {
    stop("The input data must contain the required columns for GDI calculation.")
  }

  # Calculate HDI components for each gender
  female_health <- data$female_life_expectancy / 85
  male_health <- data$male_life_expectancy / 85

  female_education <- data$female_mean_schooling / 15
  male_education <- data$male_mean_schooling / 15

  female_standard_of_living <- log(data$female_gni_per_capita) / log(75_000)
  male_standard_of_living <- log(data$male_gni_per_capita) / log(75_000)

  # Calculate HDI for each gender
  female_hdi <- (female_health * female_education * female_standard_of_living)^(1/3)
  male_hdi <- (male_health * male_education * male_standard_of_living)^(1/3)

  # Calculate GDI
  GDI <- female_hdi / (female_hdi + male_hdi)

  return(GDI)
}
