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



## How `genderstat` Fits into the Existing Research Landscape

The `genderstat` package addresses the growing need for quantitative tools in gender studies by providing researchers with a comprehensive suite of functions to analyze gender disparity indicators. By simplifying the calculation of complex metrics such as the Gender Pay Gap (GPG), Gender Inequality Index (GII), Gender Development Index (GDI), and Gender Empowerment Measure (GEM), `genderstat` enhances the ability of researchers to empirically validate their theoretical findings.

`genderstat` facilitates rigorous empirical analysis, which is crucial for validating theoretical claims in gender studies. For example, it allows researchers to quantify the gender pay gap across different sectors and regions, thereby providing researchers an opportunity to bring out concrete evidence to support policy recommendations. The package also supports the analysis of gender-specific health outcomes, which is essential for developing gender-sensitive health policies. By using `genderstat`, researchers can easily calculate and visualize disparities in health metrics, aiding in the advocacy for more equitable health interventions. Furthermore, `genderstat` aids in the analysis of gender disparities in education and economic outcomes. The package also enables the analysis of gender disparities in political representation, providing insights into the effectiveness of gender quotas and other measures aimed at increasing women's participation in politics. This empirical evidence is crucial for advocating for more inclusive political systems.

By integrating these functionalities, `genderstat` fills a significant gap in the tools available to gender studies researchers, offering a robust, open-source solution that streamlines the process of quantitative gender analysis. It empowers researchers to produce high-quality, empirical evidence that can drive meaningful social change and policy development.


# Core Theoretical Concepts

### Gender Pay Gap: 

The Gender Pay Gap [@miller_2018_the] is a crucial metric that highlights the difference in average earnings between men and women, usually expressed as a percentage. It provides a clear view of the disparities in compensation within the workforce. A higher percentage indicates a greater disparity, while a 0% pay gap signifies equal pay. This gap reflects not only direct discrimination but also differences in the types of jobs held, the number of hours worked, and career advancement opportunities available to men and women. The formula to calculate the Gender Pay Gap is:

$$\text{GPG} = \left( \frac{\text{Male Income} - \text{Female Income}}{\text{Male Income}} \right) \times 100 \%$$

### Gender Inequality Index:

The Gender Inequality Index (GII) is a comprehensive measure designed to capture gender disparities across three key areas: reproductive health, empowerment, and labor market participation [@ferrant_2010_the]. The GII ranges from 0 to 1, where 0 indicates perfect gender equality and 1 represents maximum inequality. This index uses the harmonic mean of geometric means for both genders across these dimensions, then compares this to a standard of equal gender treatment [@conceio_2022_human]. The calculation involves the following formula:

$$\text{GII} = 1 - \sqrt[3]{H \cdot E \cdot L}$$

Where:

- $\text{H}$ is the health component, calculated using the maternal mortality ratio and adolescent birth rate.
- $\text{E}$ is the empowerment component, calculated using the proportion of parliamentary seats occupied by females and the proportion of females with secondary education.
- $\text{L}$ is the labor market participation component, calculated using the female and male labor force participation rates.

### Gender Development Index: 

The Gender Development Index (GDI) measures gender disparities in three fundamental areas of human development: health, education, and economic resources. Health is assessed by life expectancy at birth for both sexes; education is measured by the expected years of schooling for children and the average years of schooling for adults aged 25 and older; and economic status is gauged by estimated earned income for both genders. This index is crucial for identifying gender gaps and guiding policy decisions to promote gender equality [@charmes_2003_measuring].

The computation of the GDI entails a four-step procedure, encompassing the estimation of female and male earned incomes, normalization of indicators, computation of female and male Human Development Index (HDI) values, and ultimately, the juxtaposition of female and male HDI values[@conceio_2022_human]. The formula for GDI is delineated as follows:

The HDI for each gender is calculated using the formula:

$$\text{HDI} = \left( \text{health} \cdot \text{education} \cdot \text{standard of living} \right)^{1/3}$$

Finally, the GDI in this package is calculated using the formula:

$$\text{GDI} = \frac{\text{female HDI}}{\text{female HDI} + \text{male HDI}}$$

### Gender Empowerment Measure: 

The Gender Empowerment Measure (GEM) evaluates gender inequality in areas of participation and decision-making, focusing on women's empowerment in political representation, economic decision-making roles, and income distribution [@charmes_2003_measuring]. The GEM scores range from 0 to 1, with higher values indicating greater empowerment. The formula for GEM is:

$$\text{GEM} = \frac{\text{FPS} + \text{FPP} + \text{IR}}{3}$$

Where:

- $\text{FPS}$ is the proportion of parliamentary seats occupied by females.
- $\text{FPP}$ is the proportion of professional and technical job roles occupied by females.
- $\text{IR}$ is the income ratio for females in comparison to males.

# Core Structure of the Package

##Overview

The `genderstat` package is designed to streamline the process of analyzing gender disparity metrics in the R programming environment. It provides users with predefined functions to compute essential gender indicators, thereby simplifying the process of gender analysis. This package includes functions to calculate the Gender Pay Gap (GPG), Gender Inequality Index (GII), Gender Development Index (GDI), and Gender Empowerment Measure (GEM). These functions are designed to be user-friendly, requiring minimal coding effort while ensuring accurate and reliable computations.A figure below illustrates the basic structure of the package.


![Basic Structure of genderstat package](https://raw.githubusercontent.com/mashrur-ayon/genderstat/main/plots-pictures/basic-structure.png){ width=80% }

## Choice of Metrics

The selection of these specific metrics— **GPG**, **GII**, **GDI**, and **GEM** —was guided by their comprehensive nature and widespread acceptance in gender studies research. These metrics provide a multidimensional view of gender disparities, covering economic, health, educational, and empowerment aspects. While other metrics exist, these were chosen for their robustness and ability to capture the complex and intersecting dimensions of gender inequality. Unlike simpler metrics, these indices offer a deeper understanding of how different factors contribute to overall gender disparities, making them valuable tools for researchers and policymakers aiming to address gender-based inequalities comprehensively.

# Application of the `genderstat` Package

The `genderstat` package provides a powerful toolkit for researchers in gender studies, offering streamlined functions to compute and visualize various gender disparity indicators. This section presents two case studies that demonstrate the practical application of the package's functions for analyzing gender disparities.

## Case Study 1: Analyzing Gender Pay Gap

In this case study, we analyze the Gender Pay Gap (GPG) across different countries using the `genderstat` package. The Gender Pay Gap is a critical indicator that highlights income disparities between men and women.

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

## Case Study 2: Evaluating Gender Inequality Index

The Gender Inequality Index (GII) measures gender disparities in reproductive health, empowerment, and labor market participation. This case study evaluates the GII for various countries, identifying those with the least gender inequality.

We start by loading the example dataset and calculating the GII using the `gender_inequality_index` function. We then visualize the bottom 5 countries with the lowest GII values, indicating the highest levels of gender equality.

```r

data(real_data_GII)
gii_results <- gender_inequality_index(real_data_GII)
# Select bottom 5 countries with the lowest Gender Inequality Index
bottom_5_gii <- gii_results[order(gii_results$GII), ][1:5, ]
```
**Output:**

| Country                 | GII         |
|-------------------------|-------------|
| United Arab Emirates    | 0.001463862 |
| New Zealand             | 0.002054351 |
| Iceland                 | 0.002426154 |
| Norway                  | 0.002427945 |
| Sweden                  | 0.002433420 |


```r
# Visualize the results
ggplot(bottom_5_gii, aes(x = reorder(country, GII), y = GII)) +
  geom_bar(stat = "identity") +
  coord_flip() +
  labs(title = "Bottom 5 Countries with Lowest Gender Inequality Index", x = "Country", y = "GII")

```
**Output:**

![Countries with Lowest Gender Inequality Index](https://raw.githubusercontent.com/mashrur-ayon/genderstat/main/plots-pictures/gender-inequality-index.png)



The results from the gender_inequality_index function provide valuable insights into the countries that have achieved the highest levels of gender equality, as reflected by their low GII values.

# Conclusion

These case studies demonstrate the practical utility of the `genderstat` package in conducting comprehensive gender disparity analyses. By leveraging the functions provided by the package, researchers can efficiently calculate and visualize key gender inequality metrics, supporting data-driven policy-making and advocacy efforts. The `genderstat` package thus serves as a vital tool for advancing gender studies research and promoting gender equality globally.




# References
