#' Gender Development Index (GDI)
#'
#' Computes the Gender Development Index (GDI) based on the given dataset.
#'
#' @param data A data frame containing the required metrics for GDI computation.
#'
#' @return A numeric vector representing the GDI values.
#'
#'
#' @examples
#'
#' data(real_data_GDI) # Load example dataset
#' gdi_results <- gender_development_index(real_data_GDI)
#' print(gdi_results)
#'
#'
#' @export
gender_development_index <- function(data) {
  ...
}

#' Original Data of GDI (GDI)
#'
#' A dataset containing observed values for the GDI analysis.
#'
#' @format A data frame with 191 rows and 7 columns:
#' \describe{
#'   \item{country}{A character vector representing the name of the country.}
#'   \item{female_life_expectancy}{A numeric vector representing the life expectancy of females in the respective country. Measured in years.}
#'   \item{male_life_expectancy}{A numeric vector representing the life expectancy of males in the respective country. Measured in years.}
#'   \item{female_mean_schooling}{A numeric vector representing the average number of schooling years for females in the respective country.}
#'   \item{male_mean_schooling}{A numeric vector representing the average number of schooling years for males in the respective country.}
#'   \item{female_gni_per_capita}{A numeric vector representing the Gross National Income per capita for females in the respective country. Measured in international dollars.}
#'   \item{male_gni_per_capita}{A numeric vector representing the Gross National Income per capita for males in the respective country. Measured in international dollars.}
#' }
#' @source Data obtained from the following sources:
#' \itemize{
#'   \item{\href{https://hdr.undp.org/data-center/documentation-and-downloads}{UNDP Human Development Reports Data Center}}
#'   \item{\href{https://genderdata.worldbank.org/indicators/}{World Bank Gender Data Portal}}
#' }
#' @name real_data_GDI
#' @docType data
#' @usage data(real_data_GDI)
NULL
###########################################################

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

  return(GDI)
}


