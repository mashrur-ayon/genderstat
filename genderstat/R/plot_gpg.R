library(ggplot2)
library(dplyr)

#' @noRd
.data <- dplyr::.data


#' Plot Gender Pay Gap for Top 5 Countries
#'
#' Visualizes the Gender Pay Gap (GPG) for the top 5 countries based on their GPG.
#'
#' @param data A data frame containing the required metrics for GPG computation.
#'
#' @return A ggplot2 object visualizing the GPG for the top 5 countries.
#' @importFrom ggplot2 ggplot aes geom_bar coord_flip labs theme_minimal
#' @import dplyr
#' @examples
#' data(real_data_GPG) # Load example dataset
#' plot_gpg(real_data_GPG)
#'
#'
#' @export
plot_gpg <- function(data) {
  ...
}


plot_gpg <- function(data) {
  # Check if gpg column exists
  if(!"gpg" %in% names(data)) {
    data <- gender_pay_gap(data)
  }

  # Remove NA values if any
  data <- data[!is.na(data$gpg), ]

  # Sort the data based on the gpg values
  data <- data[order(data$gpg, decreasing = TRUE), ]

  # Select the top 5 countries
  top5 <- utils::head(data, 5)

  ggplot(top5, aes(x=stats::reorder(.data$country, -.data$gpg), y=.data$gpg)) +
    geom_bar(stat="identity", fill="steelblue") +
    coord_flip() +
    labs(title="Top 5 Countries with Highest Gender Pay Gap",
         x="Country", y="Gender Pay Gap (%)") +
    theme_minimal()
}

# Helper function to get the data subset for a specific quartile
get_quartile_data <- function(data, quartile) {
  n <- nrow(data)
  if (quartile == 1) {
    return(data[1:(n/4),])
  } else if (quartile == 2) {
    return(data[(n/4 + 1):(n/2),])
  } else if (quartile == 3) {
    return(data[(n/2 + 1):(3*n/4),])
  } else if (quartile == 4) {
    return(data[(3*n/4 + 1):n,])
  } else {
    stop("Invalid quartile specified!")
  }
}



#' @noRd
.data <- dplyr::.data


#' Plot Gender Pay Gap for First Quartile Countries
#'
#' Visualizes the Gender Pay Gap (GPG) for countries in the top quartile (Q1) based on their GPG.
#'
#' @param data A data frame containing the required metrics for GPG computation.
#'
#' @return A ggplot2 object visualizing the GPG for Q1 countries.
#' @importFrom ggplot2 ggplot aes geom_bar coord_flip labs theme_minimal
#' @import dplyr
#' @examples
#' data(real_data_GPG) # Load example dataset
#' plot_gpg_q1(real_data_GPG)
#'
#' @export
plot_gpg_q1 <- function(data) {
  ...
}


# Plot Function for first quartile
plot_gpg_q1 <- function(data) {
  if(!"gpg" %in% names(data)) {
    data <- gender_pay_gap(data)
  }

  data <- data[!is.na(data$gpg), ]
  data <- data[order(data$gpg, decreasing = TRUE), ]
  q1_data <- get_quartile_data(data, 1)

  ggplot(q1_data, aes(x=stats::reorder(.data$country, -.data$gpg), y=.data$gpg)) +
    geom_bar(stat="identity", fill="steelblue") +
    coord_flip() +
    labs(title="Countries in 1st Quartile of Gender Pay Gap",
         x="Country", y="Gender Pay Gap (%)") +
    theme_minimal()
}


#' @noRd
.data <- dplyr::.data


#' Plot Gender Pay Gap for Second Quartile Countries
#'
#' Visualizes the Gender Pay Gap (GPG) for countries in the second quartile (Q2) based on their GPG.
#'
#' @param data A data frame containing the required metrics for GPG computation.
#'
#' @return A ggplot2 object visualizing the GPG for Q2 countries.
#' @importFrom ggplot2 ggplot aes geom_bar coord_flip labs theme_minimal
#' @import dplyr
#' @examples
#' data(real_data_GPG) # Load example dataset
#' plot_gpg_q2(real_data_GPG)
#'
#' @export
plot_gpg_q2 <- function(data) {
  ...
}


# Plot function for the second quartile
plot_gpg_q2 <- function(data) {
  if(!"gpg" %in% names(data)) {
    data <- gender_pay_gap(data)
  }

  data <- data[!is.na(data$gpg), ]
  data <- data[order(data$gpg, decreasing = TRUE), ]
  q2_data <- get_quartile_data(data, 2)

  ggplot(q2_data, aes(x=stats::reorder(.data$country, -.data$gpg), y=.data$gpg)) +
    geom_bar(stat="identity", fill="steelblue") +
    coord_flip() +
    labs(title="Countries in 2nd Quartile of Gender Pay Gap",
         x="Country", y="Gender Pay Gap (%)") +
    theme_minimal()
}


#' @noRd
.data <- dplyr::.data


#' Plot Gender Pay Gap for Third Quartile Countries
#'
#' Visualizes the Gender Pay Gap (GPG) for countries in the third quartile (Q3) based on their GPG.
#'
#' @param data A data frame containing the required metrics for GPG computation.
#'
#' @return A ggplot2 object visualizing the GPG for Q3 countries.
#' @importFrom ggplot2 ggplot aes geom_bar coord_flip labs theme_minimal
#' @import dplyr
#' @examples
#' data(real_data_GPG) # Load example dataset
#' plot_gpg_q3(real_data_GPG)
#'
#' @export
plot_gpg_q3 <- function(data) {
  ...
}


# Plot function for the third quartile
plot_gpg_q3 <- function(data) {
  if(!"gpg" %in% names(data)) {
    data <- gender_pay_gap(data)
  }

  data <- data[!is.na(data$gpg), ]
  data <- data[order(data$gpg, decreasing = TRUE), ]
  q3_data <- get_quartile_data(data, 3)

  ggplot(q3_data, aes(x=stats::reorder(.data$country, -.data$gpg), y=.data$gpg)) +
    geom_bar(stat="identity", fill="steelblue") +
    coord_flip() +
    labs(title="Countries in 3rd Quartile of Gender Pay Gap",
         x="Country", y="Gender Pay Gap (%)") +
    theme_minimal()
}

#' @noRd
.data <- dplyr::.data


#' Plot Gender Pay Gap for Fourth Quartile Countries
#'
#' Visualizes the Gender Pay Gap (GPG) for countries in the fourth quartile (Q4) based on their GPG.
#'
#' @param data A data frame containing the required metrics for GPG computation.
#'
#' @return A ggplot2 object visualizing the GPG for Q4 countries.
#' @importFrom ggplot2 ggplot aes geom_bar coord_flip labs theme_minimal
#' @import dplyr
#' @examples
#' data(real_data_GPG) # Load example dataset
#' plot_gpg_q4(real_data_GPG)
#'
#' @export
plot_gpg_q4 <- function(data) {
  ...
}




# Plot function for the fourth quartile
plot_gpg_q4 <- function(data) {
  if(!"gpg" %in% names(data)) {
    data <- gender_pay_gap(data)
  }

  data <- data[!is.na(data$gpg), ]
  data <- data[order(data$gpg, decreasing = TRUE), ]
  q4_data <- get_quartile_data(data, 4)

  ggplot(q4_data, aes(x=stats::reorder(.data$country, -.data$gpg), y=.data$gpg)) +
    geom_bar(stat="identity", fill="steelblue") +
    coord_flip() +
    labs(title="Countries in 4th Quartile of Gender Pay Gap",
         x="Country", y="Gender Pay Gap (%)") +
    theme_minimal()
}


# Load the dataset
#data("real_data_GPG")

# Calculate and print the gender pay gap
#gpg_results <- gender_pay_gap(real_data_GPG)
#print(gpg_results)

# Plot the top 5 countries based on gender pay gap
#plot_gpg(real_data_GPG)



#plot_gpg_q2(real_data_GPG)

#plot_gpg_q3(real_data_GPG)

#plot_gpg_q4(real_data_GPG)
