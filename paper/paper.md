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


# Draft 1
# Summary

The 'genderstat' is a comprehensive package designed for the R programming language, aimed at facilitating quantitative analysis in gender studies. It encompasses a range of functions that enable the calculation of several key gender inequality metrics, including the Gender Pay Gap, Gender Inequality Index (GII), Gender Development Index (GDI), and Gender Empowerment Measure (GEM). Additionally, it incorporates real datasets, sourced from the UNDP Human Development Reports Data Center and the World Bank Gender Data Portal, which can be utilized for practice and educational purposes.

This package is primarily constructed to assist researchers in the social sciences who are engaged in gender-related studies. As a freely accessible open-source package from R, it does not entail any costs. This provision allows researchers to concentrate more on their in-depth theoretical investigations rather than allocating excessive time to create functions for data visualization or resorting to costly proprietary alternatives. The 'genderstat' package is equipped with the essential capabilities to analyze and visualize gender metrics, serving as a dedicated resource for gender analysis.

# Statement of Need

For researchers examining gender issues, it is crucial to understand both the quantitative and qualitative aspects of any form of discrimination. Although 'genderstat' is not designed for qualitative analysis, it holds a distinctive position as the first and, to date, the only dedicated R package available on CRAN for analyzing and visualizing gender metrics. Inspired by the core principles of open-source software, this package empowers researchers to examine the underlying factors contributing to discrimination in society.


# Core Theoretical Concepts

## Gender Pay Gap: 
The Gender Pay Gap is a measure that reflects the disparity between the average income of men and women. It is commonly expressed as a percentage and indicates the difference in the average earnings of men and women in the workforce. A higher percentage indicates a greater disparity between male and female earnings, whereas a 0% pay gap would signify complete gender equality in terms of pay. The gender pay gap is a crucial indicator of gender inequality and is influenced by various factors including, but not limited to, discrimination, differences in occupation and hours worked, and disparities in opportunities for career progression.
The Gender Pay Gap is calculated using the following formula:

$${Gender Pay Gap} = \left(\frac{{Male income} - {Female income}}{{Male income}}\right) \times 100$$

## Gender Inequality Index:

The Gender Inequality Index (GII) is a composite measure that captures gender-based inequalities across three key dimensions: reproductive health, empowerment, and labor market participation. It ranges from 0 to 1, where 0 signifies that both genders fare equally, and 1 indicates maximum inequality between the genders. The GII is calculated by taking the harmonic mean of the geometric means of the three dimensions for both genders, and then dividing it by a reference standard that treats both genders equally. The result is then subtracted from 1.

The simplified formula for GII is:

$${GII} = 1 - \frac{{HARM(GF, GM)}}{{GF,M}}$$

Where:

- ${HARM(GF, GM)}$ is the harmonic mean of the geometric means of the three dimensions for both genders.
- ${GF,M}$ is the geometric mean of the arithmetic means for each indicator, treating both genders equally.

## Gender Development Index: 

The Gender Development Index (GDI) is a metric that reflects gender inequalities across three fundamental dimensions of human development: health, education, and command over economic resources. Health is measured by both female and male life expectancy at birth; education is gauged by the expected years of schooling for children and the mean years of schooling for adults aged 25 and older, for both genders; and economic command is assessed by the estimated earned income for females and males. This index is crucial as it aids in identifying disparities between the sexes, thereby guiding policymakers in formulating strategies that promote gender equality and empower all individuals.

The GDI is computed through a four-step process involving the estimation of female and male earned incomes, the normalization of indicators, the calculation of female and male Human Development Index (HDI) values, and finally, the comparison of female and male HDI values. The formula for GDI is:

$$GDI = \frac{{HDIf}}{{HDIm}}$$

Where,

- $HDIf = \left(I_{\text{Health}f} \cdot I_{\text{Education}f} \cdot I_{\text{Income}f}\right)^{1/3}$
- $HDIm = \left(I_{\text{Health}m} \cdot I_{\text{Education}m} \cdot I_{\text{Income}m}\right)^{1/3}$

Where,

- $I_{\text{Health}f}$ and $I_{\text{Health}m}$ are the health indices for females and males, respectively.
- $I_{\text{Education}f}$ and $I_{\text{Education}m}$ are the education indices for females and males, respectively.
- $I_{\text{Income}f}$ and $I_{\text{Income}m}$ are the income indices for females and males, respectively.

## Gender Empowerment Measure: 

The Gender Empowerment Measure (GEM) is an integral metric designed to evaluate gender inequality across essential areas of participation and decision-making. It is particularly focused on assessing women's empowerment in political representation, economic decision-making positions, and income distribution. The GEM is calculated using three equally weighted components, 'A', 'B', and 'C'.
The formula for GEM is:

$${GEM} = \frac{A + B + C}{3}$$

Where:
- $A$ represents the percentage of seats held by women in national parliaments.
- $B$ represents the percentage of women in economic decision-making positions, such as legislators, senior officials, managers, professionals, and technicians.
- $C$ represents the female share of income, calculated as the ratio of female to male estimated earned income.



# Application
Application and Basic Structure of the package is as follows:

![Basic Structure](https://raw.githubusercontent.com/mashrur-ayon/genderstat/main/plots-pictures/basic-structure.png)

## Key Visualizations and Analyses
With `genderstat`, you can perform a range of visualizations and analyses:

Gender Development Index (GDI): Visualize the disparities in achievements between women and men in health, education, and decent standards of living.

```R
# In this case, I am loading example data from the package
# If you want to load your CSV then follow: data <- read_csv("/path/to/your/data.csv") 

gender_development_index(real_data_GDI)
```

Output:
| No. | Country               | GDI          | Female HDI  | Male HDI    |
|-----|-----------------------|--------------|-------------|-------------|
| 1   | Afghanistan           | 0.455578857  | 0.403890975 | 0.482653625 |
| 2   | Albania               | 0.508329304  | 0.8462988   | 0.818564494 |
| 3   | Algeria               | 0.481143309  | 0.70003075  | 0.754901153 |
| 4   | Andorra               |              |             |             |
| 5   | Angola                | 0.463289727  | 0.54259953  | 0.628588819 |
| 6   | Antigua and Barbuda   |              |             |             |
| 7   | Argentina             | 0.506390402  | 0.845486531 | 0.824147269 |

Gender Pay Gap:

```R
gender_pay_gap(real_data_GPG)
```

Output:
| No. | Country               | Gender Pay Gap |
|-----|-----------------------|----------------|
| 1   | Afghanistan           | 82.74522499    |
| 2   | Albania               | 30.02405292    |
| 3   | Algeria               | 80.04160342    |
| 4   | Andorra               |                |
| 5   | Angola                | 23.33387123    |
| 6   | Antigua and Barbuda   |                |
| 7   | Argentina             | 40.9273582     |


```R
plot_gdi(real_data_GDI)
```

Output: 

![Basic Structure](https://raw.githubusercontent.com/mashrur-ayon/genderstat/main/plots-pictures/plot_gdi_output.png)

Comparative Analysis of HDIs: Present a side-by-side comparison of the Male and Female HDIs.

```R
plot_hdi(real_data_GDI)
```
Output:

![Basic Structure](https://raw.githubusercontent.com/mashrur-ayon/genderstat/main/plots-pictures/plot_hdi_output.png)

Maternal Mortality Ratio and Adolescent Birth Rate: Use stacked bar plots to visualize these critical health metrics.
```R
plot_gii_health(real_data_GII)

```

Output:

![Basic Structure](https://raw.githubusercontent.com/mashrur-ayon/genderstat/main/plots-pictures/plot_gii_health_output.png)



# References
