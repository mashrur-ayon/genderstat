#' Gender Pay Gap (GPG)
#'
#' Computes the Gender Pay Gap (GPG) based on the provided dataset.
#'
#' @param data A data frame containing the required metrics for GPG computation.
#'
#' @return A numeric vector representing the GPG values.
#'
#' @examples
#' \dontrun{
#' data(gender_pay_gap_data) # Load example dataset
#' gpg_results <- gender_pay_gap(gender_pay_gap_data)
#' print(gpg_results)
#' }
#'
#' @export
gender_pay_gap <- function(data) {
  ...
}


#' Simulated Data for Gender Pay Gap (GPG)
#'
#' A dataset containing simulated values for the GPG analysis.
#'
#' @format A data frame with 200 rows and 3 columns:
#' \describe{
#'   \item{country}{A character vector representing the name of the country.}
#'   \item{female_salary}{A numeric vector representing the average salary of females in the respective country. Measured in international dollars.}
#'   \item{male_salary}{A numeric vector representing the average salary of males in the respective country. Measured in international dollars.}
#' }
#' @source The dataset is simulated for the purpose of this package.
#' @name simulated_data_GPG
#' @docType data
#' @usage data(simulated_data_GPG)
NULL

##########################################################
##########################################################

gender_pay_gap <- function(data) {
  # Check input data for required columns
  if (!all(c("salary", "gender") %in% colnames(data))) {
    stop("The input data must contain 'salary' and 'gender' columns.")
  }

  # Calculate the average salary for each gender
  avg_salaries <- aggregate(salary ~ gender, data, mean)

  # Calculate the gender pay gap
  gpg <- (avg_salaries$salary[avg_salaries$gender == "male"] -
            avg_salaries$salary[avg_salaries$gender == "female"]) /
    avg_salaries$salary[avg_salaries$gender == "male"] * 100

  return(gpg)
}

