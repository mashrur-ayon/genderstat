# genderstat: R Package for Analytical Exploration of Gender Metrics by Country [![CRAN status](https://www.r-pkg.org/badges/version/genderstat)](https://cran.r-project.org/web/packages/genderstat/index.html) [![status](https://joss.theoj.org/papers/cade05e5f52b64e0e866ce27921bd041/status.svg)](https://joss.theoj.org/papers/cade05e5f52b64e0e866ce27921bd041)



`genderstat` package is a comprehensive resource for anyone looking to delve into quantitative analysis in gender studies. It encompasses a variety of functions designed to compute key gender inequality metrics such as the Gender Pay Gap, Gender Inequality Index (GII), Gender Development Index (GDI), and Gender Empowerment Measure (GEM). In addition to these calculation tools, the package also includes real datasets extracted from the UNDP Human Development Reports Data Center and the World Bank Gender Data Portal. These datasets, available for practice and learning, were sourced from reliable databases, thereby ensuring the accuracy and relevance of the analyses performed using this toolkit. 


# Overview: <img src="https://github.com/mashrur-ayon/genderstat/blob/main/plots-pictures/genderstat-logo.png" align="right" height="200">
The `genderstat` R package is a comprehensive tool designed to facilitate quantitative analysis in the realm of gender studies. Developed by S M Mashrur Arafin Ayon, this package stands at version 0.1.3 and serves as an invaluable asset for researchers, students, and professionals in gender studies.

## Features:
- **Functions for Key Gender Metrics:** The package boasts an array of functions tailored to compute various gender inequality metrics. Notably, it can calculate the Gender Pay Gap, Gender Inequality Index (GII), Gender Development Index (GDI), and the Gender Empowerment Measure (GEM).

- **Inclusive Datasets:** genderstat is enriched with real datasets extracted from reputable sources, specifically the *UNDP Human Development Reports Data Center* and the *World Bank Gender Data Portal*. These datasets serve as a practical resource for hands-on practice and in-depth learning.

- **Dependencies and Utilities:** The package leverages the capabilities of other notable R packages such as `ggplot2`, `dplyr`, and `reshape2`. For those keen on testing and documentation, `testthat`, `knitr`, and `rmarkdown` are suggested.

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

# In this case I am loading example data

data(real_data_GDI)

gender_development_index(data)
```
**Output:** 
|  #  | Country             | GDI         | Female HDI  | Male HDI   |
| --- | -------------------- | ----------- | ----------- | ---------- |
| 1   | Afghanistan         | 0.455578857 | 0.403890975 | 0.482653625|
| 2   | Albania             | 0.508329304 | 0.8462988   | 0.818564494|
| 3   | Algeria             | 0.481143309 | 0.70003075  | 0.754901153|
| 4   | Andorra             |             |             |            |
| 5   | Angola              | 0.463289727 | 0.54259953  | 0.628588819|
| 6   | Antigua and Barbuda |             |             |            |
| 7   | Argentina           | 0.506390402 | 0.845486531 | 0.824147269|


## Bar Diagram Analysis: Assess gender-based development achievements using bar diagrams.

```
plot_gdi(real_data_GDI)
```
**Output:**

<img src="https://github.com/mashrur-ayon/genderstat/blob/main/plots-pictures/plot_gdi_output.png" height="300">

## Comparative Analysis of HDIs: Present a side-by-side comparison of the Male and Female HDIs.

```
plot_hdi(real_data_GDI)
```
**Output:**

<img src="https://github.com/mashrur-ayon/genderstat/blob/main/plots-pictures/plot_hdi_output.png" height="300">


## Maternal Mortality Ratio and Adolescent Birth Rate: Use stacked bar plots to visualize these critical health metrics.

```
plot_gii_health(real_data_GII)
```
**Output**

<img src="https://github.com/mashrur-ayon/genderstat/blob/main/plots-pictures/plot_gii_health_output.png" height="300">

## Secondary Education Participation: Compare female and male participation in secondary education.

R
Copy code
plot_gii_education(data)
Labor Force Participation with Dot Plots: Analyze labor force participation rates with precise visual representations.

```
plot_gii_labor(real_data_GII)
```

<img src="https://github.com/mashrur-ayon/genderstat/blob/main/plots-pictures/plot_gii_labor_output.png" height="300">

# Contributing
I welcome contributions to the genderstat package. If you would like to contribute, please open an issue or submit a pull request on GitHub.

# License

genderstat is released under the [MIT License](https://github.com/mashrur-ayon/genderstat/blob/main/genderstat/LICENSE.md)
.
