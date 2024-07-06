#' Gender Inequality Index (GII)
#'
#' Computes the Gender Inequality Index (GII) based on the provided dataset. The GII measures gender disparities in reproductive health, empowerment, and labor market participation.
#'
#' @param data A data frame containing the required metrics for GII computation.
#' The data frame must include the following columns: \code{maternal_mortality_ratio}, \code{adolescent_birth_rate}, \code{female_parliament_seats}, \code{female_secondary_education}, \code{male_secondary_education}, \code{female_labor_force}, and \code{male_labor_force}.
#'
#' @return A data frame with two columns: \code{country} and \code{GII}, representing the GII values for each country.
#'
#' @examples
#' data(real_data_GII) # Load example dataset
#' gii_results <- gender_inequality_index(real_data_GII)
#' print(gii_results)
#'
#' @export
gender_inequality_index <- function(data) {
  # Check input data for required columns
  required_columns <- c("maternal_mortality_ratio", "adolescent_birth_rate",
                        "female_parliament_seats", "female_secondary_education",
                        "male_secondary_education", "female_labor_force", "male_labor_force")
  if (!all(required_columns %in% colnames(data))) {
    stop("The input data must contain the required columns for GII calculation.")
  }

  # Normalize the components to proportions
  data$female_parliament_seats <- data$female_parliament_seats / 100
  data$female_secondary_education <- data$female_secondary_education / 100
  data$male_secondary_education <- data$male_secondary_education / 100
  data$female_labor_force <- data$female_labor_force / 100
  data$male_labor_force <- data$male_labor_force / 100

  # Calculate Reproductive Health component
  max_mmr <- 100000  # Scaling factor for MMR
  max_abr <- 1000    # Scaling factor for ABR
  reproductive_health <- sqrt((data$maternal_mortality_ratio / max_mmr) * (data$adolescent_birth_rate / max_abr))

  # Calculate Empowerment component
  empowerment <- (1 - (data$female_parliament_seats + data$female_secondary_education /
                         (data$female_secondary_education + data$male_secondary_education)))

  # Calculate Labor Market component
  labor_market <- (1 - (data$female_labor_force / (data$female_labor_force + data$male_labor_force)))

  # Combine components to calculate GII
  GII <- sqrt(reproductive_health * empowerment * labor_market)

  # Create a data frame with required columns
  result_data <- data.frame(
    country = data$country,
    GII = GII
  )

  return(result_data)
}

#' Original Data for Gender Inequality Index (GII)
#'
#' A dataset containing observed values for the GII analysis. This data includes metrics for evaluating gender disparities in reproductive health, empowerment, and labor market participation across different countries.
#'
#' @format A data frame with 191 rows and 8 columns:
#' \describe{
#'   \item{country}{A character vector representing the name of the country.}
#'   \item{maternal_mortality_ratio}{A numeric vector representing the maternal mortality ratio.}
#'   \item{adolescent_birth_rate}{A numeric vector representing the adolescent birth rate.}
#'   \item{female_parliament_seats}{A numeric vector representing the proportion of parliamentary seats occupied by females in the respective country. Measured as a proportion (0-1).}
#'   \item{female_secondary_education}{A numeric vector representing the proportion of females with secondary education in the respective country. Measured as a proportion (0-1).}
#'   \item{male_secondary_education}{A numeric vector representing the proportion of males with secondary education in the respective country. Measured as a proportion (0-1).}
#'   \item{female_labor_force}{A numeric vector representing the proportion of females in the labor force in the respective country. Measured as a proportion (0-1).}
#'   \item{male_labor_force}{A numeric vector representing the proportion of males in the labor force in the respective country. Measured as a proportion (0-1).}
#' }
#' @source Data obtained from \href{https://www.kaggle.com/dsv/6359326}{Kaggle}.
#' @name real_data_GII
#' @docType data
#' @usage data(real_data_GII)
NULL
