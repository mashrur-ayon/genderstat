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
library(tidyr)

# Load the example dataset
data(real_data_GDI)

