##' Gender Inequality Index (GII)
#'
#' Computes the Gender Inequality Index (GII) based on the provided dataset.
#'
#' @param data A data frame containing the required metrics for GII computation.
#'
#' @return A numeric vector representing the GII values.
#'
#' @examples
#'
#' data(real_data_GII) # Load example dataset
#' gii_results <- gender_inequality_index(real_data_GII)
#' print(gii_results)
#'
#' @export
gender_inequality_index <- function(data) {
  ...
}

#' Original Data for Gender Inequality Index (GII)
#'
#' A dataset containing observed values for the GII analysis.
#'
#' @format A data frame with 191 rows and 8 columns:
#' \describe{
#'   \item{country}{A character vector representing the name of the country.}
#'   \item{maternal_mortality_ratio}{Maternal Mortality Ratio.}
#'   \item{adolescent_birth_rate}{Adoloscent Birth rate.}
#'   \item{female_parliament_seats}{Female Parliament Seats.}
#'   \item{female_secondary_education}{Female Secondary Education.}
#'   \item{male_secondary_education}{Male Secondary Education.}
#'   \item{female_labor_force}{Participation of female in labour force.}
#'   \item{male_labor_force}{Participation of male in labour force.}
#' }
#' @source Data obtained from the following sources:
#' \itemize{
#'   \item{\href{https://hdr.undp.org/data-center/documentation-and-downloads}{UNDP Human Development Reports Data Center}}
#'   \item{\href{https://genderdata.worldbank.org/indicators/}{World Bank Gender Data Portal}}
#' }
#' @name real_data_GII
#' @docType data
#' @usage data(real_data_GII)
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


