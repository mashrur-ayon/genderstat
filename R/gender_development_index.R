#' Gender Development Index (GDI)
#'
#' Computes the Gender Development Index (GDI) based on the given dataset. The GDI measures gender disparities in three dimensions of human development: health, education, and standard of living.
#'
#' @param data A data frame containing the required metrics for GDI computation. The data frame must include the following columns: \code{female_life_expectancy}, \code{male_life_expectancy}, \code{female_mean_schooling}, \code{male_mean_schooling}, \code{female_gni_per_capita}, and \code{male_gni_per_capita}.
#'
#' @return A data frame containing the GDI values for each country, along with the individual HDI values for females and males.
#'
#' @examples
#' data(real_data_GDI) # Load example dataset
#' gdi_results <- gender_development_index(real_data_GDI)
#' print(gdi_results)
#'
#' @export
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

  female_standard_of_living <- log(data$female_gni_per_capita) / log(75000)
  male_standard_of_living <- log(data$male_gni_per_capita) / log(75000)

  # Calculate HDI for each gender
  female_hdi <- (female_health * female_education * female_standard_of_living)^(1/3)
  male_hdi <- (male_health * male_education * male_standard_of_living)^(1/3)

  # Calculate GDI
  GDI <- female_hdi / (female_hdi + male_hdi)

  # Create a data frame with required columns for plotting
  result_data <- data.frame(
    country = data$country,
    GDI = GDI,
    female_hdi = female_hdi,
    male_hdi = male_hdi
  )

  return(result_data)
}

#' Original Data of GDI (Gender Development Index)
#'
#' A dataset containing observed values for the GDI analysis. This data includes metrics for evaluating gender disparities in health, education, and economic resources across different countries.
#'
#' @format A data frame with 191 rows and 7 columns:
#' \describe{
#'   \item{country}{A character vector representing the name of the country.}
#'   \item{female_life_expectancy}{A numeric vector representing the life expectancy of females in the respective country, measured in years.}
#'   \item{male_life_expectancy}{A numeric vector representing the life expectancy of males in the respective country, measured in years.}
#'   \item{female_mean_schooling}{A numeric vector representing the average number of schooling years for females in the respective country.}
#'   \item{male_mean_schooling}{A numeric vector representing the average number of schooling years for males in the respective country.}
#'   \item{female_gni_per_capita}{A numeric vector representing the Gross National Income per capita for females in the respective country, measured in international dollars.}
#'   \item{male_gni_per_capita}{A numeric vector representing the Gross National Income per capita for males in the respective country, measured in international dollars.}
#' }
#' @source Data obtained from \href{https://www.kaggle.com/dsv/6359326}{Kaggle}.
#' @name real_data_GDI
#' @docType data
#' @usage data(real_data_GDI)
NULL
