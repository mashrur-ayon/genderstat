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



###################################
# Set the seed for reproducibility
set.seed(123)
##########################
# Generate simulated data
##########################
##################################

simulated_data_GPG <- data.frame(
  person = paste("Person", 1:200), # 200 hypothetical people
  gender = sample(c("Male", "Female"), 200, replace = TRUE), # Randomly assign sex to each person
  salary = runif(200, 20000, 100000) # Random income between 20000 and 100000
)


##########################################################
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




# View the first few rows of the data frame
head(simulated_data_GPG)

# Test the Gender Pay Gap function
gender_pay_gap(simulated_data_GPG)
