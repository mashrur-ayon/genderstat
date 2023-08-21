#' Gender Pay Gap (GPG)
#'
#' Computes the Gender Pay Gap (GPG) based on the provided dataset.
#'
#' @param data A data frame containing the required metrics for GPG computation.
#'
#' @return A numeric vector representing the GPG values.
#' @importFrom stats aggregate
#'
#' @examples
#'
#' data(real_data_GPG) # Load example dataset
#' gpg_results <- gender_pay_gap(real_data_GPG)
#' print(gpg_results)
#'
#' @export
gender_pay_gap <- function(data) {
  ...
}

#' Original Data for Gender Pay Gap (GPG)
#'
#' A dataset containing observed values for the GPG analysis.
#'
#' @format A data frame with 191 rows and 3 columns:
#' \describe{
#'   \item{country}{Name of Country}
#'   \item{female_income}{Per capita female National Income}
#'   \item{male_income}{Per capita male National Income}
#' }
#' @source Data obtained from the following sources:
#' \itemize{
#'   \item{\href{https://hdr.undp.org/data-center/documentation-and-downloads}{UNDP Human Development Reports Data Center}}
#'   \item{\href{https://genderdata.worldbank.org/indicators/}{World Bank Gender Data Portal}}
#' }
#' @name real_data_GPG
#' @docType data
#' @usage data(real_data_GPG)
NULL


##########################################################
##########################################################

gender_pay_gap <- function(data) {
  # Check input data for required columns
  if (!all(c("female_income", "male_income") %in% colnames(data))) {
    stop("The input data must contain 'female_income' and 'male_income' columns.")
  }

  # Calculate the gender pay gap for each country
  data$gpg <- ((data$male_income - data$female_income) / data$male_income) * 100

  # Return the results
  return(data[, c("country", "gpg")])
}



