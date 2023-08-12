#' Calculate the Gender Inequality Index (GII)
#'
#' This function calculates the Gender Inequality Index (GII) using a data frame containing information on reproductive health, empowerment, and labor market participation for both men and women.
#' @param data A data frame containing the following columns: 'maternal_mortality_ratio', 'adolescent_birth_rate', 'female_parliament_seats', 'female_secondary_education', 'male_secondary_education', 'female_labor_force', 'male_labor_force'
#' @return The Gender Inequality Index (GII) as a numeric value
#' @export
#' @examples
#' # Load a sample dataset containing GII component data
#' data("sample_gii_data")
#' # Calculate the Gender Inequality Index
#' gender_inequality_index(sample_gii_data)



###################################
# Set the seed for reproducibility
set.seed(123)
##########################
# Generate simulated data for GII
##########################
##################################

simulated_data_GII <- data.frame(
  country = paste("Country", 1:200), # 200 hypothetical countries

  # Maternal mortality ratio (ranges can vary by country, using a broad range here)
  maternal_mortality_ratio = runif(200, 10, 200),

  # Adolescent birth rate (ranges can vary by country, using a broad range here)
  adolescent_birth_rate = runif(200, 10, 100),

  # Proportion of seats in parliament held by women (generally ranges between 0 to 100%)
  female_parliament_seats = runif(200, 0, 100),

  # Percentage of females with at least some secondary education (generally ranges between 0 to 100%)
  female_secondary_education = runif(200, 0, 100),

  # Percentage of males with at least some secondary education (generally ranges between 0 to 100%)
  male_secondary_education = runif(200, 0, 100),

  # Female labor force participation rate (generally ranges between 0 to 100%)
  female_labor_force = runif(200, 0, 100),

  # Male labor force participation rate (generally ranges between 0 to 100%)
  male_labor_force = runif(200, 0, 100)
)

############################################################################
############################################################################

gender_inequality_index <- function(data) {
  # Check input data for required columns
  required_columns <- c("maternal_mortality_ratio", "adolescent_birth_rate",
                        "female_parliament_seats", "female_secondary_education",
                        "male_secondary_education", "female_labor_force", "male_labor_force")
  if (!all(required_columns %in% colnames(data))) {
    stop("The input data must contain the required columns for GII calculation.")
  }

  # Calculate GII components
  H <- data$maternal_mortality_ratio / (data$maternal_mortality_ratio + data$adolescent_birth_rate)
  E <- data$female_parliament_seats * data$female_secondary_education / (data$female_secondary_education + data$male_secondary_education)
  L <- data$female_labor_force / (data$female_labor_force + data$male_labor_force)

  # Calculate GII
  GII <- 1 - (H * E * L)^(1/3)

  return(GII)
}


# View the first few rows of the data frame
head(simulated_data_GII)

# Test the Gender Inequality Index function
gender_inequality_index(simulated_data_GII)
