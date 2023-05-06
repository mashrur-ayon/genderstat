#' Time-use Analysis
#'
#' This function calculates the average time spent on unpaid work and paid work for both men and women using a data frame containing information on the time spent on these activities.
#' @param data A data frame containing the following columns: 'gender' (factor or character), 'unpaid_work_hours' (numeric), and 'paid_work_hours' (numeric)
#' @return A data frame containing the average time spent on unpaid and paid work for men and women
#' @export
#' @examples
#' # Load a sample dataset containing time-use data
#' data("sample_time_use_data")
#' # Conduct Time-use Analysis
#' time_use_analysis(sample_time_use_data)

time_use_analysis <- function(data) {
  # Check input data for required columns
  if (!all(c("gender", "unpaid_work_hours", "paid_work_hours") %in% colnames(data))) {
    stop("The input data must contain 'gender', 'unpaid_work_hours', and 'paid_work_hours' columns.")
  }

  # Calculate the average time spent on unpaid and paid work for each gender
  avg_time_use <- aggregate(cbind(unpaid_work_hours, paid_work_hours) ~ gender, data, mean)

  return(avg_time_use)
}
