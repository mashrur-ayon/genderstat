#' Gender Empowerment Measure (GEM)
#'
#' Computes the Gender Empowerment Measure (GEM) based on the provided dataset.
#'
#' @param data A data frame containing the required metrics for GEM computation.
#'
#' @return A numeric vector representing the GEM values.
#'
#' @examples
#' \dontrun{
#' data(gender_empowerment_measure_data) # Load example dataset
#' gem_results <- gender_empowerment_measure(gender_empowerment_measure_data)
#' print(gem_results)
#' }
#'
#' @export
gender_empowerment_measure <- function(data) {
  ...
}


#' Simulated Data for Gender Empowerment Measure (GEM)
#'
#' A dataset containing simulated values for the GEM analysis.
#'
#' @format A data frame with 200 rows and 4 columns:
#' \describe{
#'   \item{country}{A character vector representing the name of the country.}
#'   \item{female_parliament_seats_ratio}{A numeric vector representing the ratio of parliamentary seats occupied by females in the respective country. Measured as a proportion (0-1).}
#'   \item{female_professional_technical_workers_ratio}{A numeric vector representing the ratio of professional and technical job roles occupied by females in the respective country. Measured as a proportion (0-1).}
#'   \item{female_income_ratio}{A numeric vector representing the income ratio for females in the respective country in comparison to males. Measured as a proportion (0-1), where 1 indicates equal income with males.}
#' }
#' @source The dataset is simulated for the purpose of this package.
#' @name simulated_data_GEM
#' @docType data
#' @usage data(simulated_data_GEM)
NULL

#################################################################################

gender_empowerment_measure <- function(data) {
  # Check input data for required columns
  required_columns <- c("female_parliament_seats", "female_professional_positions", "female_to_male_earned_income_ratio")
  if (!all(required_columns %in% colnames(data))) {
    stop("The input data must contain the required columns for GEM calculation.")
  }

  # Normalize the input values (0-1 range)
  data$female_parliament_seats <- data$female_parliament_seats / 100
  data$female_professional_positions <- data$female_professional_positions / 100
  data$female_to_male_earned_income_ratio <- data$female_to_male_earned_income_ratio / 100

  # Calculate GEM
  GEM <- (data$female_parliament_seats +
            data$female_professional_positions +
            data$female_to_male_earned_income_ratio) / 3

  return(GEM)
}



