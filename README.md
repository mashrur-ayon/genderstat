# genderstat: R Package for Analytical Exploration of Gender Metrics by Country [![CRAN status](https://www.r-pkg.org/badges/version/genderstat)](https://cran.r-project.org/web/packages/genderstat/index.html) [![DOI](https://zenodo.org/badge/637165677.svg)](https://zenodo.org/doi/10.5281/zenodo.12825228)


The `genderstat` package is a comprehensive tool developed for the R programming environment, designed to facilitate quantitative evaluations in gender studies. It includes functions to calculate essential gender disparity indicators such as the Gender Pay Gap (GPG), Gender Inequality Index (GII), Gender Development Index (GDI), and Gender Empowerment Measure (GEM). These functions are designed to be user-friendly, requiring minimal coding effort while ensuring accurate and reliable computations.


# Overview: <img src="https://github.com/mashrur-ayon/genderstat/blob/main/plots-pictures/genderstat-logo.png" align="right" height="200">
The `genderstat` R package is a useful tool for quantitative analysis in gender studies. Developed by S M Mashrur Arafin Ayon, this package (version 0.1.5) is intended for researchers, students, and professionals working in gender studies.


## Features:
**Functions for Key Gender Metrics:** The package includes functions to calculate important gender inequality metrics such as the Gender Pay Gap, Gender Inequality Index (GII), Gender Development Index (GDI), and Gender Empowerment Measure (GEM).

# Installation
To install the genderstat package, you have two options: installing from CRAN or directly from GitHub.

To install the stable release from CRAN (version 0.1.3), use the following command in your R console:

```r
install.packages("genderstat")
```

For the latest development version (version 0.1.5), you can install the package directly from GitHub using the `devtools` package. First, ensure that `devtools` is installed:

```r
install.packages("devtools")
```

Then, use the following command to install `genderstat` from GitHub:

```r 
devtools::install_github("mashrur-ayon/genderstat", subdir = "genderstat")
```

Please note that the GitHub version is the most up-to-date version, while it takes a bit of time for the stable release to get accepted on CRAN.



# Example Dataset

The genderstat package provides example datasets sourced from the UNDP Human Development Reports Data Center and the World Bank Gender Data Portal. Only the relevant portions of these datasets have been collected and maintained on the author's Kaggle account as a consolidated dataset, which is updated annually. These example datasets can be useful for both teaching and practical research applications and are available on [Kaggle](https://www.kaggle.com/dsv/6359326).

## Case Study 1: Analyzing Gender Pay Gap

The following case study is an example of how to use the `genderstat` package. In this case study, we analyze the Gender Pay Gap (GPG) across different countries using the `genderstat` package. The Gender Pay Gap is a critical indicator that highlights income disparities between men and women.

We begin by loading the example dataset and computing the GPG for each country using the `gender_pay_gap` function. We then visualize the top 5 countries with the highest GPG to highlight the most significant disparities.

```r

data(real_data_GPG)
gpg_results <- gender_pay_gap(real_data_GPG)
# Select top 5 countries with the highest Gender Pay Gap
top_5_gpg <- gpg_results[order(-gpg_results$gpg), ][1:5, ]
```
**Output:**

| Country                       | GPG       |
|-------------------------------|-----------|
| Yemen                         | 92.75124  |
| Iraq                          | 87.69439  |
| Iran (Islamic Republic of)    | 82.90912  |
| Afghanistan                   | 82.74522  |
| Egypt                         | 82.08804  |


```r
# Visualize the results
library(ggplot2)
ggplot(top_5_gpg, aes(x = reorder(country, gpg), y = gpg)) +
  geom_bar(stat = "identity") +
  coord_flip() +
  labs(title = "Top 5 Countries with Highest Gender Pay Gap", x = "Country", y = "GPG (%)")

```

**Output:**

![Countries with Highest Gender Pay Gap](https://raw.githubusercontent.com/mashrur-ayon/genderstat/main/plots-pictures/gender-pay-gap.png)

The results from the gender_pay_gap function reveal significant income disparities in the selected countries, providing a clear picture of where gender pay inequities are most pronounced.


# Contributing
The genderstat package is open for contributions. Researchers and developers who wish to add or modify indexes can easily fork the GitHub repository and make changes. This collaborative aspect enhances the adaptability and convenience of the package, making it more user-friendly than traditional spreadsheet software or other statistical packages.

**To contribute:**

- Fork the repository on GitHub.
- Create a new branch for your feature or bug fix.
- Make your changes and commit them with descriptive messages.
- Push your changes to your branch.
- Submit a pull request to the main repository.
- Your contributions are highly appreciated and will help improve the package for everyone.

## Working with Personal/Customised Data

To work with your own research data, ensure that your data is formatted similarly to the provided example datasets (`real_data_GPG`, `real_data_GII`, `real_data_GDI`, etc.). You can follow the structure of the given RData files or CSV files for proper formatting. Here is a brief guide:

1. **Format Your Data**: Make sure your data frame has the required columns as shown in the example datasets. For instance, for calculating the Gender Pay Gap, your data should include `country`, `female_income`, and `male_income` columns.

2. **Handle Missing Values**: Note that many fields in the example datasets may not have values and are marked as `Null` or `NA`. The same might occur in your research data. Ensure that your data can handle these missing values appropriately.

3. **Example**:
    ```r
    # Load your custom data
    my_data <- read.csv("path/to/your/data.csv")

    # Ensure your data has the necessary columns
    head(my_data)

    # Calculate Gender Pay Gap using your data
    gpg_results <- gender_pay_gap(my_data)
    print(gpg_results)
    ```

If you have any questions or queries about formatting your data or using the package, feel free to reach out to me on GitHub.


# License

genderstat is released under the [MIT License](https://github.com/mashrur-ayon/genderstat/blob/main/genderstat/LICENSE.md)
.
