#' Gender Pay Gap (GPG)
#'
#' Computes the Gender Pay Gap (GPG) based on the provided dataset. The GPG is calculated as the percentage difference between male and female incomes, providing insight into income disparities between genders.
#'
#' @param data A data frame containing the required metrics for GPG computation. The data frame must include the columns: \code{female_income} and \code{male_income}.
#'
#' @return A data frame with two columns: \code{country} and \code{gpg}, representing the GPG values for each country.
#' @importFrom stats aggregate
#'
#' @examples
#' data(real_data_GPG) # Load example dataset
#' gpg_results <- gender_pay_gap(real_data_GPG)
#' print(gpg_results)
#'
#' @export
gender_pay_gap <- function(data) {
  # Check if the required columns are present in the input data
  if (!all(c("female_income", "male_income") %in% colnames(data))) {
    stop("The input data must contain 'female_income' and 'male_income' columns.")
  }

  # Calculate the gender pay gap for each country
  # The GPG is calculated as the percentage difference between male and female incomes
  data$gpg <- ((data$male_income - data$female_income) / data$male_income) * 100

  # Return the results with the country names and corresponding GPG values
  return(data[, c("country", "gpg")])
}

#' Original Data for Gender Pay Gap (GPG)
#'
#' A dataset containing observed values for the GPG analysis. This data includes metrics for evaluating income disparities between genders across different countries.
#'
#' @format A data frame with 191 rows and 3 columns:
#' \describe{
#'   \item{country}{A character vector representing the name of the country.}
#'   \item{female_income}{A numeric vector representing the per capita female National Income in the respective country.}
#'   \item{male_income}{A numeric vector representing the per capita male National Income in the respective country.}
#' }
#' @source Data obtained from \href{https://www.kaggle.com/dsv/6359326}{Kaggle}.
#' @name real_data_GPG
#' @docType data
#' @usage data(real_data_GPG)
NULL
