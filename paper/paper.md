---
title: "genderstat: An R Package for Comprehensive Gender Inequality Analysis"

tags: 
- gender inequality analysis
- gender development index
- gender inequality index
- gender empowerment measure
- gender pay gap
- social science

authors: 
- name: S M Mashrur Arafin Ayon
  affiliation: 1

affiliations: 
- name: Department of Women and Gender Studies, University of Dhaka
  index: 1
   
date: 25 August 2023
bibliography: reference.bib
---


# Draft 1
# Summary

The 'genderstat' is a comprehensive package designed for the R programming language, aimed at facilitating quantitative analysis in gender studies. It encompasses a range of functions that enable the calculation of several key gender inequality metrics, including the Gender Pay Gap, Gender Inequality Index (GII), Gender Development Index (GDI), and Gender Empowerment Measure (GEM). Additionally, it incorporates real datasets, sourced from the UNDP Human Development Reports Data Center and the World Bank Gender Data Portal, which can be utilized for practice and educational purposes.

This package is primarily constructed to assist researchers in the social sciences who are engaged in gender-related studies. As a freely accessible open-source package from R, it does not entail any costs. This provision allows researchers to concentrate more on their in-depth theoretical investigations rather than allocating excessive time to create functions for data visualization or resorting to costly proprietary alternatives. The 'genderstat' package is equipped with the essential capabilities to analyze and visualize gender metrics, serving as a dedicated resource for gender analysis.


# Core Theoretical Concepts

- Frameworks or methodologies the package is built upon [@wickham_2007_reshaping].
- Statistical or computational models used.
- Any pre-existing theories or principles integrated into the package.

# Statement of Need

For researchers examining gender issues, it is crucial to understand both the quantitative and qualitative aspects of any form of discrimination. Although 'genderstat' is not designed for qualitative analysis, it holds a distinctive position as the first and, to date, the only dedicated R package available on CRAN for analyzing and visualizing gender metrics. Inspired by the core principles of open-source software, this package empowers researchers to examine the underlying factors contributing to discrimination in society.

# Application
Application and Basic Structure of the package:

The available functions, and the example data available:

| Core Theoretical Concept   | Analysis Function            | Visualization Function                                                                                                                        | Example Dataset | Variables of the dataset                                                                                                                                                                                                                                            |
|----------------------------|------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------|-----------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Gender Development Index   | gender_development_index()   | 1.      plot_gdi()<br>2.      plot_hdi()                                                                                                      | real_data_GDI   | Country<br>female_life_expectancy<br>male_life_expectancy<br>female_mean_schooling<br>male_mean_schooling<br>female_gni_per_capita<br>male_gni_per_capita                                                                                                           |
| Gender Inequality Index    | gender_inequality_index()    | 1.      plot_gii()<br>2.      plot_gii_education()<br>3.      plot_gii_empowerment()<br>4.      plot_gii_health()<br>5.      plot_gii_labor() | real_data_GII   | ·        Country<br>·        maternal_mortality_ratio<br>·        adolescent_birth_rate<br>·        female_parliament_seats<br>·        female_secondary_education<br>·        male_secondary_education<br>·        female_labor_force<br>·        male_labor_force |
| Gender Empowerment Measure | gender_empowerment_measure() | 1.      plot_gem()                                                                                                                            | real_data_GEM   | ·        Country<br>·        female_parliament_seats<br>·        female_professional_positions<br>·        female_to_male_earned_income_ratio                                                                                                                       |
| Gender Pay Gap             | gender_pay_gap()             | 2.      plot_gpg()<br>3.      plot_gpg_q1()<br>4.      plot_gpg_q2()<br>5.      plot_gpg_q3()<br>6.      plot_gpg_q4()                        | real_data_GPG   | ·        country <br>·        female_income<br>·        male_income                                                                                                                                                                                                 |


- Practical uses of the package: specific case studies or examples.
- How it fits into larger research projects or workflows.
- Potential impact in real-world scenarios (e.g., policy-making, awareness campaigns, educational settings).

# References

# Appendix
