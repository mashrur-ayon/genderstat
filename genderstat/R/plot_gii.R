library(ggplot2)
library(dplyr)


#' Compute Gender Inequality Index (GII) and Select Top 15 Countries
#'
#' This is an internal helper function to compute the GII for each country in the data
#' and then select the top 15 countries based on their GII values.
#'
#' @param data A data frame containing the required metrics for GII computation.
#' @return A data frame of the top 15 countries sorted by GII values.
#' @import dplyr
#' @keywords internal


# Helper function to compute GII and select top 15 countries
compute_gii <- function(data) {
  data$GII <- 1 - (data$maternal_mortality_ratio / (data$maternal_mortality_ratio + data$adolescent_birth_rate) *
                     data$female_parliament_seats * data$female_secondary_education /
                     (data$female_secondary_education + data$male_secondary_education) *
                     data$female_labor_force / (data$female_labor_force + data$male_labor_force))^(1/3)

  top_countries <- data %>%
    arrange(desc(.data$GII)) %>%
    head(15)

  return(top_countries)
}


#' Plot Gender Inequality Index (GII) for Top 15 Countries
#'
#' @param data A data frame containing the required metrics for GII computation.
#' @return A ggplot2 object visualizing the GII for the top 15 countries.
#' @importFrom ggplot2 ggplot aes geom_bar theme labs element_text
#' @import dplyr
#' @examples
#' data(real_data_GII) # Load example dataset
#' plot_gii(real_data_GII)
#' @export



# Function to plot GII
plot_gii <- function(data) {
  top_countries <- compute_gii(data)
  p <- ggplot(top_countries, aes(x = .data$country, y = .data$GII)) +
    geom_bar(stat = "identity", fill = "skyblue") +
    theme(axis.text.x = element_text(angle = 90, hjust = 1)) +
    labs(title = "Bar Plot for GII", y = "GII Value", x = "Country")
  return(p)
}



#' Plot Health Indicators (Maternal Mortality and Adolescent Birth Rate) for Top 15 Countries
#'
#' @param data A data frame containing the required metrics for GII computation.
#' @return A ggplot2 object visualizing maternal mortality and adolescent birth rate for the top 15 countries.
#' @importFrom ggplot2 ggplot aes geom_bar theme labs scale_fill_manual element_text
#' @import dplyr
#' @examples
#' data(real_data_GII) # Load example dataset
#' plot_gii_health(real_data_GII)
#' @export



# Function to plot health indicators
plot_gii_health <- function(data) {
  top_countries <- compute_gii(data)
  p <- ggplot(top_countries, aes(x = .data$country)) +
    geom_bar(aes(y = .data$maternal_mortality_ratio, fill = "Maternal Mortality Ratio"), stat = "identity") +
    geom_bar(aes(y = .data$adolescent_birth_rate, fill = "Adolescent Birth Rate"), stat = "identity") +
    theme(axis.text.x = element_text(angle = 90, hjust = 1)) +
    labs(title = "Bar Plots for Mortality and Birth Rate", y = "Value", x = "Country") +
    scale_fill_manual(values = c("blue", "red"))
  return(p)
}

#' Plot Female Parliament Seats for Top 15 Countries
#'
#' @param data A data frame containing the required metrics for GII computation.
#' @return A ggplot2 object visualizing female parliament seats for the top 15 countries.
#' @importFrom ggplot2 ggplot aes geom_bar theme labs element_text
#' @import dplyr
#' @examples
#' data(real_data_GII) # Load example dataset
#' plot_gii_empowerment(real_data_GII)
#' @export




# Function to plot female parliament seats
plot_gii_empowerment <- function(data) {
  top_countries <- compute_gii(data)
  p <- ggplot(top_countries, aes(x = .data$country, y = .data$female_parliament_seats)) +
    geom_bar(stat = "identity", fill = "green") +
    theme(axis.text.x = element_text(angle = 90, hjust = 1)) +
    labs(title = "Bar Plot for Female Parliament Seats", y = "Number of Seats", x = "Country")
  return(p)
}


#' Plot Labor Force Participation for Top 15 Countries by Gender
#'
#' @param data A data frame containing the required metrics for GII computation.
#' @return A ggplot2 object visualizing the labor force participation for males and females in the top 15 countries.
#' @importFrom ggplot2 ggplot aes geom_point theme labs scale_color_manual element_text
#' @import dplyr
#' @examples
#' data(real_data_GII) # Load example dataset
#' plot_gii_labor(real_data_GII)
#' @export


# Function to plot labor force participation
plot_gii_labor <- function(data) {
  top_countries <- compute_gii(data)
  p <- ggplot(top_countries, aes(x = .data$country)) +
    geom_point(aes(y = .data$female_labor_force, color = "Female Labor Force")) +
    geom_point(aes(y = .data$male_labor_force, color = "Male Labor Force")) +
    theme(axis.text.x = element_text(angle = 90, hjust = 1)) +
    labs(title = "Dot Plots for Labor Force Participation", y = "Participation Rate (%)", x = "Country") +
    scale_color_manual(values = c("purple", "blue"))
  return(p)
}


#' Plot Secondary Education Participation for Top 15 Countries by Gender
#'
#' @param data A data frame containing the required metrics for GII computation.
#' @return A ggplot2 object visualizing the secondary education participation for males and females in the top 15 countries.
#' @importFrom ggplot2 ggplot aes geom_point theme labs scale_color_manual element_text
#' @import dplyr
#' @examples
#' data(real_data_GII) # Load example dataset
#' plot_gii_education(real_data_GII)
#' @export


# Function to plot secondary education participation
plot_gii_education <- function(data) {
  top_countries <- compute_gii(data)
  p <- ggplot(top_countries, aes(x = .data$country)) +
    geom_point(aes(y = .data$female_secondary_education, color = "Female Secondary Education")) +
    geom_point(aes(y = .data$male_secondary_education, color = "Male Secondary Education")) +
    theme(axis.text.x = element_text(angle = 90, hjust = 1)) +
    labs(title = "Dot Plots for Secondary Education Participation", y = "Participation Rate (%)", x = "Country") +
    scale_color_manual(values = c("orange", "red"))
  return(p)
}


