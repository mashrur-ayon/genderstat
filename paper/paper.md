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

The `genderstat` package is a comprehensive tool developed for the R programming environment, designed to facilitate quantitative evaluations in gender studies. It includes functions to calculate essential gender disparity indicators such as the  _Gender Pay Gap_ **(GPG)**, _Gender Inequality Index_ **(GII)**, _Gender Development Index_ **(GDI)**, and _Gender Empowerment Measure_ **(GEM)**. These indicators are crucial as they provide a clear picture of gender disparities across various dimensions, including economic participation, health, education, and empowerment. Specifically, **GII**, **GDI**, and **GEM** encapsulate complex aspects of gender inequality that are not addressed by single metrics. 

The package also provides example datasets sourced from the UNDP Human Development Reports Data Center and the World Bank Gender Data Portal. Only the relevant portions of these datasets have been collected and maintained on the author's Kaggle account as a consolidated dataset[@s_m_mashrur_arafin_ayon_2023], which is updated annually. These example datasets are integral to the package, serving both educational and practical research purposes. They are utilized to build vignettes and showcase examples of how to use the package effectively.

`genderstat` simplifies these computations, making them accessible and easy to use. This package streamlines the process, allowing social scientists, particularly those conducting research on gender studies, to perform complex analyses with minimal coding effort, thereby saving time and reducing the potential for errors. It is intended to simplify the work of gender studies researchers by providing a one-stop solution for measuring various gender indexes. It allows R programmers, especially those who want to engage in gender studies research, to easily analyze and visualize gender metrics without needing to create these functions from scratch.

By streamlining the process of gender disparity analysis, `genderstat` enables researchers to focus more on their theoretical and practical explorations rather than the technical aspects of data analysis.

# Statement of Need

For researchers exploring gender-related issues, it is essential to examine both the quantitative and qualitative dimensions of discrimination. The natural research paradigm of gender studies primarily uses qualitative research with an interpretivist approach. However, quantitative research based on numerical data, often derived from surveys and secondary sources, is equally crucial as it provides empirical evidence to support or challenge theoretical claims. Researchers who prefer quantitative methods often face significant challenges due to the lack of a dedicated software package that can easily compute essential gender disparity metrics. Existing tools require multiple steps and complex calculations to derive these metrics, making the process time-consuming and prone to errors. This inefficiency can deter researchers from conducting comprehensive quantitative analyses, thereby limiting the scope and impact of their work.

The `genderstat` package addresses this gap by offering a dedicated solution for analyzing and visualizing gender metrics. By simplifying these computations, it makes them accessible and easy to use, enabling researchers to perform complex analyses with minimal coding effort.

This tool is particularly valuable for social scientists conducting research on gender studies. It streamlines the process of measuring various gender indexes, allowing researchers to focus more on their theoretical and practical explorations rather than the technical aspects of data analysis. By providing a one-stop solution, `genderstat` democratizes the process of gender analysis, making it easier and more efficient to scrutinize and address gender-based disparities. Moreover, `genderstat` is open for contributions. This collaborative aspect enhances its adaptability and convenience, making it more user-friendly than traditional spreadsheet software or other statistical packages. It empowers the researchers to produce high-quality, empirically based research that can inform policy and drive social change. By providing a dedicated, easy-to-use tool for quantitative gender analysis, `genderstat` significantly advances the field of gender studies.

# Assessment of the State of the Field

## Current State of Research in Gender Studies

Gender studies is a multifaceted field that explores the complexities of gender inequality and its impact on various societal dimensions. Research in this field has predominantly focused on qualitative methods to understand gender dynamics, power relations, and cultural constructs. However, there has been a growing emphasis on integrating quantitative methods to provide empirical evidence supporting theoretical claims. This shift is evident in studies examining gender disparities in economic participation, health outcomes, educational attainment, and political representation.

Recent studies highlight the persistent gender pay gap and the underrepresentation of women in leadership positions. For instance, a comprehensive analysis by Blau and Kahn demonstrates the ongoing disparities in wages and employment opportunities between men and women across various sectors [@blau_2017_gender]. The intersection of gender and health is another critical area of research. Studies such as those by Grown, Gupta, and Pande underscore the importance of addressing gender-specific health disparities and the need for gender-sensitive health policies [@grown_2005_taking]. Research in gender studies also focuses on educational inequalities. The work of Buchmann, DiPrete, and McDaniel provides insights into the gender differences in educational outcomes and their long-term implications on economic and social status [@buchmann_2008_gender]. Additionally, studies on political representation, such as those by Paxton, Hughes, and Barnes, explore the barriers to women's participation in politics and the impact of female political representation on policy-making [@paxton_2014_women].





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
install.packages("readr")
install.packages("genderstat")

# If you want to obtain the latest version of genderstat package from GitHub.
# Use this code instead
install.packages("devtools")
devtools::install_github("mashrur-ayon/genderstat", subdir = "genderstat")



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
