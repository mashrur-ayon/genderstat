#' Calculate the Gender Empowerment Measure (GEM)
#'
#' This function calculates the Gender Empowerment Measure (GEM) using a data frame containing information on the proportion of seats in parliament held by women, the percentage of women in professional and technical positions, and the ratio of estimated female-to-male earned income.
#' @param data A data frame containing the following columns: 'female_parliament_seats', 'female_professional_positions', 'female_to_male_earned_income_ratio'
#' @return The Gender Empowerment Measure (GEM) as a numeric value
#' @export
#' @examples
#' # Load a sample dataset containing GEM component data
#' data("sample_gem_data")
#' # Calculate the Gender Empowerment Measure
#' gender_empowerment_measure(sample_gem_data)

###################################
# Set the seed for reproducibility
set.seed(123)
##########################
# Generate simulated data for GEM
##########################
##################################

simulated_data_GEM <- data.frame(
  country = paste("Country", 1:200), # 200 hypothetical countries

  # Proportion of seats in parliament held by women (generally ranges between 0 to 100%)
  female_parliament_seats = runif(200, 0, 100),

  # Percentage of women in professional and technical positions (generally ranges between 0 to 100%)
  female_professional_positions = runif(200, 0, 100),

  # Ratio of estimated female-to-male earned income (generally ranges between 0 to 100%)
  female_to_male_earned_income_ratio = runif(200, 0, 100)
)




################################################################################
################################################################################

gender_empowerment_measure <- function(data) {
  # Check input data for required columns
  required_columns <- c("female_parliament_seats", "female_professional_positions", "female_to_male_earned_income_ratio")
  if (!all(required_columns %in% colnames(data))) {
    stop("The input data must contain the required columns for GEM calculation.")
  }

  # Normalize the input values (0-1 range)
  data$female_parliament_seats <- data$female_parliament_seats / 100
  data$female_professional_positions <- data$female_professional_positions / 100
  data$female_to_male_earned_income_ratio <- data$female_to_male_earned_income_ratio / 100

  # Calculate GEM
  GEM <- (data$female_parliament_seats +
            data$female_professional_positions +
            data$female_to_male_earned_income_ratio) / 3

  return(GEM)
}


# View the first few rows of the data frame
head(simulated_data_GEM)

# Test the Gender Empowerment Measure function
gender_empowerment_measure(simulated_data_GEM)
