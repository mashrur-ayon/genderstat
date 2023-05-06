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

gender_empowerment_measure <- function(data) {
  # Check input data for required columns
  required_columns <- c("female_parliament_seats", "female_professional_positions", "female_to_male_earned_income_ratio")
  if (!all(required_columns %in% colnames(data))) {
    stop("The input data must contain the required columns for GEM calculation.")
  }

  # Normalize the input values (0-1 range)
  normalized_data <- data / 100

  # Calculate GEM
  GEM <- (normalized_data$female_parliament_seats +
            normalized_data$female_professional_positions +
            normalized_data$female_to_male_earned_income_ratio) / 3

  return(GEM)
}
