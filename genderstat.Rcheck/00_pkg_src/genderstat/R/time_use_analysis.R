#' Time-use Analysis Metrics
#'
#' Computes the Time-use Analysis Metrics based on the provided dataset.
#'
#' @param data A data frame containing the required metrics for time-use analysis.
#'
#' @return A numeric vector representing the Time-use Analysis Metrics.
#'
#' @examples
#' \dontrun{
#' data(time_use_analysis_data) # Load example dataset
#' tua_results <- time_use_analysis(time_use_analysis_data)
#' print(tua_results)
#' }
#'
#' @export
time_use_analysis <- function(data) {
  ...
}

#' Simulated Data for Time-use Analysis
#'
#' A dataset containing simulated values for Time-use Analysis.
#'
#' @format A data frame with 200 rows and 4 columns:
#' \describe{
#'   \item{country}{A character vector representing the name of the country.}
#'   \item{female_leisure_time}{A numeric vector representing the average leisure time in hours per day for females in the respective country.}
#'   \item{male_leisure_time}{A numeric vector representing the average leisure time in hours per day for males in the respective country.}
#'   \item{gender_time_difference}{A numeric vector representing the difference in leisure time between genders in the respective country.}
#' }
#' @source The dataset is simulated for the purpose of this package.
#' @name simulated_data_TUA
#' @docType data
#' @usage data(simulated_data_TUA)
NULL


################################################################################
time_use_analysis <- function(data) {
  # Check input data for required columns
  if (!all(c("gender", "unpaid_work_hours", "paid_work_hours") %in% colnames(data))) {
    stop("The input data must contain 'gender', 'unpaid_work_hours', and 'paid_work_hours' columns.")
  }

  # Calculate the average time spent on unpaid and paid work for each gender
  avg_time_use <- aggregate(cbind(unpaid_work_hours, paid_work_hours) ~ gender, data, mean)

  return(avg_time_use)
}


