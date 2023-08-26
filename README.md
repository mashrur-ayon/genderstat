# genderstat: R Package for Analytical Exploration of Gender Metrics by Country [![CRAN status](https://www.r-pkg.org/badges/version/genderstat)](https://cran.r-project.org/web/packages/genderstat/index.html)



`genderstat` is an R package designed to support the comprehensive exploration of the "gender-metrics-by-country" dataset. It facilitates data visualization and analysis, helping researchers delve into gender inequality metrics and understand gender disparities across various countries. The package offers functions to visualize pivotal metrics such as the Gender Development Index (GDI), Human Development Index (HDI), Maternal Mortality Ratio (MMR), Adolescent Birth Rate (ABR), and more.



# Overview: <img src="https://github.com/mashrur-ayon/genderstat/blob/main/plots-pictures/genderstat-logo.png" align="right" height="200">
The genderstat R package is a comprehensive tool designed to facilitate quantitative analysis in the realm of gender studies. Developed by S M Mashrur Arafin Ayon, this package stands at version 0.1.3 and serves as an invaluable asset for researchers, students, and professionals in gender studies.

## Features:
- Functions for Key Gender Metrics: The package boasts an array of functions tailored to compute various gender inequality metrics. Notably, it can calculate the Gender Pay Gap, Gender Inequality Index (GII), Gender Development Index (GDI), and the Gender Empowerment Measure (GEM).

- Inclusive Datasets: genderstat is enriched with real datasets extracted from reputable sources, specifically the UNDP Human Development Reports Data Center and the World Bank Gender Data Portal. These datasets serve as a practical resource for hands-on practice and in-depth learning.

- Dependencies and Utilities: The package leverages the capabilities of other notable R packages such as `ggplot2`, `dplyr`, and `reshape2`. For those keen on testing and documentation, `testthat`, `knitr`, and `rmarkdown` are suggested.

Installation
To use `genderstat` effectively, you'll also need the `tidyverse` and `ggplot2` packages:

```
install.packages("tidyverse")
install.packages("ggplot2")
install.packages("genderstat")
Loading Required Packages
```

```
library(tidyverse)
library(genderstat)
```

## Key Visualizations and Analyses
With `genderstat`, you can perform a range of visualizations and analyses:

Gender Development Index (GDI): Visualize the disparities in achievements between women and men in health, education, and decent standards of living.

```
data <- read_csv("/path/to/your/data.csv")
# you can also load example data

data(real_data_GDI)

gender_development_index(data)
```
## Bar Diagram Analysis: Assess gender-based development achievements using bar diagrams.

```
plot_gdi(data)
```

## Comparative Analysis of HDIs: Present a side-by-side comparison of the Male and Female HDIs.

```
plot_hdi(data)
```

## Maternal Mortality Ratio and Adolescent Birth Rate: Use stacked bar plots to visualize these critical health metrics.

```
plot_gii_health(data)
```

## Secondary Education Participation: Compare female and male participation in secondary education.

R
Copy code
plot_gii_education(data)
Labor Force Participation with Dot Plots: Analyze labor force participation rates with precise visual representations.

```
plot_gii_labor(data)
```

# Contributing
I welcome contributions to the genderstat package. If you would like to contribute, please open an issue or submit a pull request on GitHub.

# License

genderstat is released under the [MIT License](https://github.com/mashrur-ayon/genderstat/blob/main/genderstat/LICENSE.md)
.
