#' Gender Empowerment Measure (GEM)
#'
#' Computes the Gender Empowerment Measure (GEM) based on the provided dataset.
#' The GEM measures gender inequality in political representation, professional positions, and income.
#'
#' @param data A data frame containing the required metrics for GEM computation.
#' The data frame must include the following columns: \code{female_parliament_seats}, \code{female_professional_positions}, and \code{female_to_male_earned_income_ratio}.
#'
#' @return A data frame with two columns: \code{country} and \code{GEM}, representing the GEM values for each country.
#'
#' @examples
#' data(real_data_GEM) # Load example dataset
#' gem_results <- gender_empowerment_measure(real_data_GEM)
#' print(gem_results)
#'
#' @export
gender_empowerment_measure <- function(data) {
  # Check input data for required columns
  required_columns <- c("female_parliament_seats", "female_professional_positions", "female_to_male_earned_income_ratio")
  if (!all(required_columns %in% colnames(data))) {
    stop("The input data must contain the required columns for GEM calculation.")
  }

  # Calculate GEM
  GEM <- (data$female_parliament_seats + data$female_professional_positions + data$female_to_male_earned_income_ratio) / 3

  # Create a data frame with required columns
  result_data <- data.frame(
    country = data$country,
    GEM = GEM
  )

  return(result_data)
}

#' Original Data for Gender Empowerment Measure (GEM)
#'
#' A dataset containing observed values for the GEM analysis. This data includes metrics for evaluating gender disparities in political representation, professional positions, and income across different countries.
#'
#' @format A data frame with 191 rows and 4 columns:
#' \describe{
#'   \item{country}{A character vector representing the name of the country.}
#'   \item{female_parliament_seats}{A numeric vector representing the ratio of parliamentary seats occupied by females in the respective country. Measured as a proportion (0-1).}
#'   \item{female_professional_positions}{A numeric vector representing the ratio of professional and technical job roles occupied by females in the respective country. Measured as a proportion (0-1).}
#'   \item{female_to_male_earned_income_ratio}{A numeric vector representing the income ratio for females in the respective country in comparison to males. Measured as a proportion (0-1), where 1 indicates equal income with males.}
#' }
#' @source Data obtained from \href{https://www.kaggle.com/dsv/6359326}{Kaggle}.
#' @name real_data_GEM
#' @docType data
#' @usage data(real_data_GEM)
NULL
