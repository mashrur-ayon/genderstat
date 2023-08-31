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


# Core Theoretical Concepts

## Gender Pay Gap: 
The Gender Pay Gap is a measure that reflects the disparity between the average income of men and women. It is commonly expressed as a percentage and indicates the difference in the average earnings of men and women in the workforce. A higher percentage indicates a greater disparity between male and female earnings, whereas a 0% pay gap would signify complete gender equality in terms of pay. The gender pay gap is a crucial indicator of gender inequality and is influenced by various factors including, but not limited to, discrimination, differences in occupation and hours worked, and disparities in opportunities for career progression.
The Gender Pay Gap is calculated using the following formula:

$$
\text{Gender Pay Gap} = \left(\frac{\text{Male income} - \text{Female income}}{\text{Male income}}\right) \times 100
$$



# Statement of Need

For researchers examining gender issues, it is crucial to understand both the quantitative and qualitative aspects of any form of discrimination. Although 'genderstat' is not designed for qualitative analysis, it holds a distinctive position as the first and, to date, the only dedicated R package available on CRAN for analyzing and visualizing gender metrics. Inspired by the core principles of open-source software, this package empowers researchers to examine the underlying factors contributing to discrimination in society.

# Application
Application and Basic Structure of the package is as follows:

![Basic Structure](https://raw.githubusercontent.com/mashrur-ayon/genderstat/main/plots-pictures/basic-structure.png)


- Practical uses of the package: specific case studies or examples.
- How it fits into larger research projects or workflows.
- Potential impact in real-world scenarios (e.g., policy-making, awareness campaigns, educational settings).

# References
