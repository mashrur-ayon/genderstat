# genderstat: An R Package for Gender Studies Quantitative Analysis

`genderstat` is an R package designed to help gender studies students and researchers conduct quantitative analysis on various aspects of gender inequality. The package includes functions to calculate key gender inequality metrics and offers datasets for hands-on practice.

## Installation

You can install the latest version of `genderstat` from GitHub with:

```R
# Install the 'devtools' package if not already installed
if (!requireNamespace("devtools", quietly = TRUE)) {
  install.packages("devtools")
}

# Install 'genderstat' from GitHub
devtools::install_github("mashrur-ayon/genderstat")
```

## Functions

The package provides functions for calculating the following metrics related to gender inequality:

1. Gender Pay Gap
2. Gender Inequality Index (GII)
3. Gender Development Index (GDI)
4. Occupational Segregation Indices (e.g., Index of Dissimilarity)
5. Gender Empowerment Measure (GEM)
6. Time-use Analysis Metrics (e.g., gender time gap in unpaid work)

## Datasets

`genderstat` includes sample datasets related to gender inequality that can be used for practice and learning purposes. Detailed information about each dataset, including its source and variables, can be found in the package documentation.

## Usage

Here's a simple example of how to use `genderstat` to calculate the Gender Pay Gap:

```R
# Load the package
library(genderstat)

# Load a sample dataset containing salary data for men and women
data("sample_salary_data")

# Calculate the Gender Pay Gap
gpg <- gender_pay_gap(sample_salary_data)

# Print the result
print(gpg)
```

## Documentation and Tutorials

For more detailed information on each function, please refer to the package documentation. Additionally, vignettes are provided to guide users through the process of conducting gender-based data analysis using the `genderstat` package.

## Contributing

We welcome contributions to the `genderstat` package. If you would like to contribute, please feel free to open an issue or submit a pull request on GitHub.

## License

`genderstat` is released under the [MIT License](LICENSE.md).
