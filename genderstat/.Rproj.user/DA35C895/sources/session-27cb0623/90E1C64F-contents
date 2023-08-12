


###################################
# Set the seed for reproducibility
set.seed(123)
##########################
# Generate simulated data for Time-use Analysis
##########################
##################################

simulated_data_TUA <- data.frame(
  person = 1:200, # 200 hypothetical people

  # Gender assignment
  gender = sample(c("Male", "Female"), 200, replace = TRUE),

  # Hours spent on unpaid work (generally ranges between 0 to 24 hours for this simulation)
  unpaid_work_hours = runif(200, 0, 24),

  # Hours spent on paid work (generally ranges between 0 to 24 hours for this simulation)
  paid_work_hours = runif(200, 0, 24)
)

################################################################################


# View the first few rows of the data frame
head(simulated_data_TUA)

save(simulated_data_TUA, file="data/time_use_analysis.RData")
# Test the Time-use Analysis function
#time_use_analysis(simulated_data_TUA)
