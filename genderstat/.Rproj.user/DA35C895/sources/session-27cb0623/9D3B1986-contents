
###################################
# Set the seed for reproducibility
set.seed(123)
##########################
# Generate simulated data for GDI
##########################
##################################

simulated_data_GDI <- data.frame(
  country = paste("Country", 1:200), # 200 hypothetical countries

  # Life expectancy (generally ranges between 50 to 85 years)
  female_life_expectancy = runif(200, 50, 85),
  male_life_expectancy = runif(200, 50, 85),

  # Mean years of schooling (generally ranges between 1 to 15 years)
  female_mean_schooling = runif(200, 1, 15),
  male_mean_schooling = runif(200, 1, 15),

  # GNI per capita (generally ranges between 500 to 75000 USD for a broad representation)
  female_gni_per_capita = runif(200, 500, 75000),
  male_gni_per_capita = runif(200, 500, 75000)
)


# View the first few rows of the data frame
head(simulated_data_GDI)
save(simulated_data_GDI, file="data/gender_development_index.RData")

# Test the Gender Development Index function
#gender_development_index(simulated_data_GDI)

###########################################################
