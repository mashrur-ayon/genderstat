library(testthat)
library(genderstat)

test_that("gender_pay_gap calculates correctly", {
  data <- data.frame(
    country = c("CountryA", "CountryB"),
    female_income = c(30000, 25000),
    male_income = c(40000, 50000)
  )
  result <- gender_pay_gap(data)
  expected <- data.frame(
    country = c("CountryA", "CountryB"),
    gpg = c(25, 50)
  )
  expect_equal(result, expected)
})
