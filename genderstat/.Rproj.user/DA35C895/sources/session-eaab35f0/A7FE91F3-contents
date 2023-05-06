#' Calculate the Gender Pay Gap
#'
#' This function calculates the gender pay gap using a data frame containing information on the average income for both men and women.
#' @param data A data frame containing the following columns: 'gender' (factor or character) and 'income' (numeric)
#' @return The gender pay gap as a numeric value (percentage)
#' @export
#' @examples
#' # Load a sample dataset containing income data by gender
#' data("sample_income_data")
#' # Calculate the Gender Pay Gap
#' gender_pay_gap(sample_income_data)

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
