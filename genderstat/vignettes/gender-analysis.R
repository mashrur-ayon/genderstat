## -----------------------------------------------------------------------------
# Load the required data
library(genderstat)
data(real_data_GDI)

# Compute the GDI
gdi_results <- gender_development_index(real_data_GDI)
print(gdi_results)

## ----fig.width=10, fig.height=6-----------------------------------------------
# Load necessary libraries
library(genderstat)
library(ggplot2)
library(dplyr)
library(reshape2)

# Load the example dataset
data(real_data_GDI)

# Plot Gender Development Index (GDI) for Bottom 15 Countries
gdi_plot <- plot_gdi(real_data_GDI)
print(gdi_plot)

# Plot Human Development Index (HDI) for Bottom 15 Countries by Gender
hdi_plot <- plot_hdi(real_data_GDI)
print(hdi_plot)

## ---- fig.width=10, fig.height=6----------------------------------------------
# Load the required dataset
data(real_data_GII)

# Plot Gender Inequality Index (GII) for Bottom 15 Countries
gii_plot <- plot_gii(real_data_GII)
print(gii_plot)

