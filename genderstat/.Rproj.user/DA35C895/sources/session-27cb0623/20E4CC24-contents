##' Gender Inequality Index (GII)
#'
#' Computes the Gender Inequality Index (GII) based on the provided dataset.
#'
#' @param data A data frame containing the required metrics for GII computation.
#'
#' @return A numeric vector representing the GII values.
#'
#' @examples
#' \dontrun{
#' data(gender_inequality_index_data) # Load example dataset
#' gii_results <- gender_inequality_index(gender_inequality_index_data)
#' print(gii_results)
#' }
#'
#' @export
gender_inequality_index <- function(data) {
  ...
}


#' Simulated Data for Gender Inequality Index (GII)
#'
#' A dataset containing simulated values for the GII analysis.
#'
#' @format A data frame with 200 rows and 6 columns:
#' \describe{
#'   \item{country}{A character vector representing the name of the country.}
#'   \item{female_reproductive_age}{A numeric vector representing the reproductive age for females in the respective country.}
#'   \item{male_reproductive_age}{A numeric vector representing the reproductive age for males in the respective country.}
#'   \item{female_secondary_education}{A numeric vector representing the secondary education completion rate for females in the respective country. Measured as a proportion (0-1).}
#'   \item{male_secondary_education}{A numeric vector representing the secondary education completion rate for males in the respective country. Measured as a proportion (0-1).}
#'   \item{female_labor_force}{A numeric vector representing the labor force participation rate for females in the respective country. Measured as a proportion (0-1).}
#' }
#' @source The dataset is simulated for the purpose of this package.
#' @name simulated_data_GII
#' @docType data
#' @usage data(simulated_data_GII)
NULL

############################################################################

gender_inequality_index <- function(data) {
  # Check input data for required columns
  required_columns <- c("maternal_mortality_ratio", "adolescent_birth_rate",
                        "female_parliament_seats", "female_secondary_education",
                        "male_secondary_education", "female_labor_force", "male_labor_force")
  if (!all(required_columns %in% colnames(data))) {
    stop("The input data must contain the required columns for GII calculation.")
  }

  # Calculate GII components
  H <- data$maternal_mortality_ratio / (data$maternal_mortality_ratio + data$adolescent_birth_rate)
  E <- data$female_parliament_seats * data$female_secondary_education / (data$female_secondary_education + data$male_secondary_education)
  L <- data$female_labor_force / (data$female_labor_force + data$male_labor_force)

  # Calculate GII
  GII <- 1 - (H * E * L)^(1/3)

  return(GII)
}


