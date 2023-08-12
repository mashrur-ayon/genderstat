#' Calculate Occupational Segregation
#'
#' This function calculates the occupational segregation index using a data frame containing the number of men and women in each occupational category.
#' @param data A data frame containing at least three columns: 'occupation' (factor or character), 'male_count' (numeric), and 'female_count' (numeric)
#' @return The occupational segregation index as a numeric value
#' @export
#' @examples
#' # Load a sample dataset containing occupational data
#' data("sample_occupational_data")
#' # Calculate the Occupational Segregation Index
#' occupational_segregation(sample_occupational_data)

###################################
# Set the seed for reproducibility
set.seed(123)
##########################
# Generate simulated data for Occupational Segregation
##########################
##################################

# Sample occupations
occupations <- c("Engineer", "Doctor", "Teacher", "Nurse", "Lawyer", "Programmer",
                 "Designer", "Manager", "Clerk", "Salesperson")

simulated_data_OS <- data.frame(
  occupation = rep(occupations, each = 20), # 10 hypothetical occupations repeated 20 times

  # Number of men in each occupation (generally ranges between 10 to 1000 for this simulation)
  male_count = runif(200, 10, 1000),

  # Number of women in each occupation (generally ranges between 10 to 1000 for this simulation)
  female_count = runif(200, 10, 1000)
)

###############################################################################
###############################################################################

occupational_segregation <- function(data) {
  # Check input data for required columns
  if (!all(c("occupation", "male_count", "female_count") %in% colnames(data))) {
    stop("The input data must contain 'occupation', 'male_count', and 'female_count' columns.")
  }

  # Calculate the proportion of men and women in each occupation
  data$male_prop <- data$male_count / (data$male_count + data$female_count)
  data$female_prop <- data$female_count / (data$male_count + data$female_count)

  # Calculate the index of dissimilarity (D)
  D <- 0.5 * sum(abs(data$male_prop - data$female_prop))

  return(D)
}

# View the first few rows of the data frame
head(simulated_data_OS)

# Test the Occupational Segregation function
occupational_segregation(simulated_data_OS)
