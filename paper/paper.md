---
title: 'genderstat: An R Package for Comprehensive Gender Inequality Analysis'
tags:
- gender inequality analysis
- gender development index
- gender inequality index
- gender empowerment measure
- gender pay gap
- social science
date: "25 August 2023"
output:
  html_document:
    df_print: paged
authors:
- name: S M Mashrur Arafin Ayon
  affiliation: 1
bibliography: reference.bib
affiliations:
- name: Department of Women and Gender Studies, University of Dhaka
  index: 1
---

# Summary

The `genderstat` package is an exhaustive tool developed for the `R` [@R] programming environment, explicitly devised to expedite quantitative evaluations in the field of gender studies. It encompasses an array of functions that facilitate the computation of pivotal gender disparity indicators, including the _Gender Pay Gap_ **(GPG)**, _Gender Inequality Index_ **(GII)**, _Gender Development Index_ **(GDI)**, and _Gender Empowerment Measure_ **(GEM)**. Moreover, it incorporates authentic datasets[@DVN/GZLYLI_2023], derived from the UNDP Human Development Reports Data Center and the World Bank Gender Data Portal, which can be leveraged for pedagogical and practical applications.

This package is fundamentally engineered to support scholars in the social sciences engaged in gender-centric research. Being a freely accessible open-source resource from `R` [@R], it does not incur any financial burdens. Moreover, by being open-source, it supports the ethos of collaborative knowledge sharing and innovation that underpin open-source initiatives and their core philosophy. This provision enables researchers to focus more intently on their profound theoretical explorations rather than dedicating an exorbitant amount of time to craft functions for data visualization or resorting to expensive proprietary alternatives. The `genderstat` package is endowed with the requisite functionalities to scrutinize and visualize gender metrics, thereby serving as a specialized asset for gender analysis.

Additionally, the genderstat package relies on other `R` [@R] packages, namely `ggplot2` [@wickham_2016], `dplyr` [@wickham_2020_dplyr], and `reshape2` [@wickham_2007_reshaping], to provide its full range of functionalities. These dependencies are crucial for the data manipulation, transformation, and visualization tasks that `genderstat` performs.

# Statement of Need

For researchers probing into the intricacies of gender-related issues, it is imperative to meticulously dissect both the quantitative and qualitative dimensions of any manifestation of discrimination. While `genderstat` is not tailored for qualitative inquiries, it occupies a unique niche as the inaugural, and hitherto, _the pioneer and sole dedicated R package_ accessible on **CRAN** for the analysis and visual representation of gender metrics. Born from the spirit of the foundational tenets of open-source software, this package bestows upon researchers the capability to scrutinize the contributory elements underpinning discrimination in the societal fabric. This facility not only liberates researchers from the constraints of paid proprietary software, thereby democratizing the process of gender analysis but also enables a shift in focus towards more substantive aspects of their research, minimizing the time and effort expended on the analytical component. Ultimately, `genderstat` serves as a pivotal tool in the researcher's arsenal, aiding in the elucidation and subsequent eradication of gender-based disparities.


# Core Theoretical Concepts

### Gender Pay Gap: 

The Gender Pay Gap [@miller_2018_the] is a significant metric that encapsulates the differential in the mean earnings of men and women, typically expressed as a percentage. It serves as a lens through which the variance in the remunerations of men and women in the workforce is discerned. A larger percentage denotes a more pronounced incongruity in the earnings of the two genders, while a 0% pay gap symbolizes absolute parity in compensation. As a pivotal barometer of gender inequality, the gender pay gap is shaped by a multitude of determinants, encompassing not merely discrimination, but also disparities in the nature of occupations, the quantum of hours worked, and the opportunities for career advancement[@miller_2018_the].

The Gender Pay Gap is computed employing the subsequent formula:

$$\text{GPG} = \left( \frac{\text{Male Income} - \text{Female Income}}{\text{Male Income}} \right) \times 100 \%$$

### Gender Inequality Index:

The Gender Inequality Index (GII) is an intricate composite measure meticulously designed to encapsulate the disparities engendered by gender across three pivotal dimensions: reproductive health, empowerment, and participation in the labor market[@ferrant_2010_the]. Its value oscillates between 0 and 1; a score of 0 indicates perfect gender parity across the analyzed dimensions, while a score of 1 signifies the apogee of gender inequality. The computation of the GII entails taking the harmonic mean of the geometric means across the aforementioned dimensions for both genders, subsequently dividing this result by a reference standard premised on treating both genders equitably[@conceio_2022_human]. The resultant figure is then subtracted from 1.

The streamlined formula for GII is delineated as follows:

$$\text{GII} = 1 - \sqrt[3]{H \cdot E \cdot L}$$

Where:

- $\text{H}$ is the health component, calculated using the maternal mortality ratio and adolescent birth rate.
- $\text{E}$ is the empowerment component, calculated using the proportion of parliamentary seats occupied by females and the proportion of females with secondary education.
- $\text{L}$ is the labor market participation component, calculated using the female and male labor force participation rates.

### Gender Development Index: 

The Gender Development Index (GDI) is an indispensable metric engineered to elucidate gender disparities across three quintessential dimensions of human development: health, education, and mastery over economic resources. Health is evaluated by the life expectancy at birth for both genders; education is assessed by the anticipated years of schooling for children coupled with the average years of schooling for adults aged 25 and older, for both sexes; and economic dominion is appraised by the estimated earned income for females and males. This pivotal index plays a crucial role in pinpointing disparities between the sexes, thereby steering policymakers in devising strategies that foster gender equality and empower all individuals[@charmes_2003_measuring].

The computation of the GDI entails a four-step procedure, encompassing the estimation of female and male earned incomes, normalization of indicators, computation of female and male Human Development Index (HDI) values, and ultimately, the juxtaposition of female and male HDI values[@conceio_2022_human]. The formula for GDI is delineated as follows:

The HDI for each gender is calculated using the formula:

$$\text{HDI} = \left( \text{health} \cdot \text{education} \cdot \text{standard of living} \right)^{1/3}$$

Finally, the GDI in this package is calculated using the formula:

$$\text{GDI} = \frac{\text{female HDI}}{\text{female HDI} + \text{male HDI}}$$

### Gender Empowerment Measure: 

The Gender Empowerment Measure (GEM) is a pivotal metric meticulously crafted to scrutinize gender inequality across cardinal domains of participation and decision-making. It is predominantly geared towards evaluating women's empowerment in political representation, economic decision-making echelons, and income distribution[@charmes_2003_measuring].This results in a value between 0 and 1, where a higher value indicates higher gender empowerment.

The GEM is quantified using the subsequent formula:

$$\text{GEM} = \frac{\text{FPS} + \text{FPP} + \text{IR}}{3}$$

Where:

- $\text{FPS}$ is the proportion of parliamentary seats occupied by females.
- $\text{FPP}$ is the proportion of professional and technical job roles occupied by females.
- $\text{IR}$ is the income ratio for females in comparison to males.




# Application
In the forthcoming section, rudimentary instances elucidating the application of the `genderstat` package will be tendered. Prior to that, the fundamental architecture of the package is delineated in the subsequent illustration.

![Basic Structure of genderstat package](https://raw.githubusercontent.com/mashrur-ayon/genderstat/main/plots-pictures/basic-structure.png){ width=80% }


## Examples
In the following, five exemplar applications of the `genderstat` package are delineated. These examples are meticulously curated to assist users in comprehending the utilization of this package, whilst simultaneously illuminating the simplicity and efficiency facilitated by minimalistic single-line coding.

In these instances, the sample datasets: _real_data_GPG_, _real_data_GII_, and _real_data_GDI_ are employed to maintain simplicity. However, users wishing to load data from CSV files are encouraged to utilize the `readr`[@wickham_2021_read] package, while those aiming to modify data are advised to employ the `dplyr` [@wickham_2020_dplyr] package as a comprehensive solution.

With `genderstat`, you can perform a range of visualizations and analyses:

### Analytical Functions
**Gender Development Index (GDI):**

```R
# Install the packages if you haven't already
install.packages("ggplot2")
install.packages("dplyr")
install.packages("genderstat")
install.packages("readr")

# Load the packages

library(ggplot2)
library(dplyr)
library(genderstat)
library(readr)



# In this case, I am loading example data from the package
# If you want to load your CSV then follow: data <- read_csv("/path/to/your/data.csv") 

gender_development_index(real_data_GDI)
```

_Output shown as table:_

| No. | Country               | GDI          | Female HDI  | Male HDI    |
|-----|-----------------------|--------------|-------------|-------------|
| 1   | Afghanistan           | 0.455578857  | 0.403890975 | 0.482653625 |
| 2   | Albania               | 0.508329304  | 0.8462988   | 0.818564494 |
| 3   | Algeria               | 0.481143309  | 0.70003075  | 0.754901153 |
| 4   | Andorra               |              |             |             |
| 5   | Angola                | 0.463289727  | 0.54259953  | 0.628588819 |
| 6   | Antigua and Barbuda   |              |             |             |
| 7   | Argentina             | 0.506390402  | 0.845486531 | 0.824147269 |


**Gender Pay Gap:**

```R
# Install the packages if you haven't already
install.packages("ggplot2")
install.packages("dplyr")
install.packages("genderstat")
install.packages("readr")

# Load the packages

library(ggplot2)
library(dplyr)
library(genderstat)
library(reader)

# Finding Gender Pay Gap from the example dataset

gender_pay_gap(real_data_GPG)
```

_Output shown as table:_

| No. | Country               | Gender Pay Gap |
|-----|-----------------------|----------------|
| 1   | Afghanistan           | 82.74522499    |
| 2   | Albania               | 30.02405292    |
| 3   | Algeria               | 80.04160342    |
| 4   | Andorra               |                |
| 5   | Angola                | 23.33387123    |
| 6   | Antigua and Barbuda   |                |
| 7   | Argentina             | 40.9273582     |



### Data Visualization and Plot packages

**Plotting Gender Development Index**

```R
# Install the packages if you haven't already
install.packages("ggplot2")
install.packages("dplyr")
install.packages("genderstat")
install.packages("readr")

# Load the packages

library(ggplot2)
library(dplyr)
library(genderstat)
library(readr)

# Visualizing the gender development index from the example data
plot_gdi(real_data_GDI)
```

_Plot output shown as image:_ 

![Gender Development Index Plot](https://raw.githubusercontent.com/mashrur-ayon/genderstat/main/plots-pictures/plot_gdi_output.png){ width=70% }

**Plotting Hunam Development Index**

Comparative Analysis of HDIs: Present a side-by-side comparison of the Male and Female HDIs.

```R
# Install the packages if you haven't already
install.packages("ggplot2")
install.packages("dplyr")
install.packages("genderstat")
install.packages("readr")

# Load the packages

library(ggplot2)
library(dplyr)
library(genderstat)
library(readr)

# Plotting Human Development Index from example dataset
plot_hdi(real_data_GDI)
```
_Plot output shown as image:_

![Human Development Index Plot](https://raw.githubusercontent.com/mashrur-ayon/genderstat/main/plots-pictures/plot_hdi_output.png){ width=70% }

**Plotting Health Component of Gender Inequality Index**

Maternal Mortality Ratio and Adolescent Birth Rate: Use stacked bar plots to visualize these critical health metrics.
```R
# Install the packages if you haven't already
install.packages("ggplot2")
install.packages("dplyr")
install.packages("genderstat")
install.packages("readr")

# Load the packages

library(ggplot2)
library(dplyr)
library(genderstat)
library(reader)

#Plotting the health component from the example dataset
plot_gii_health(real_data_GII)

```

_Plot output shown as image:_

![Health Component of Gender Inequality Index](https://raw.githubusercontent.com/mashrur-ayon/genderstat/main/plots-pictures/plot_gii_health_output.png){ width=70% }



# References
