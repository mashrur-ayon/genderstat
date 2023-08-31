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




# Statement of Need

For researchers examining gender issues, it is crucial to understand both the quantitative and qualitative aspects of any form of discrimination. Although 'genderstat' is not designed for qualitative analysis, it holds a distinctive position as the first and, to date, the only dedicated R package available on CRAN for analyzing and visualizing gender metrics. Inspired by the core principles of open-source software, this package empowers researchers to examine the underlying factors contributing to discrimination in society.

# Application
Application and Basic Structure of the package:

![Basic Structure](https://github.com/mashrur-ayon/genderstat/blob/main/plots-pictures/basic-structure.png)


Key Visualizations and Analyses
With `genderstat`, you can perform a range of visualizations and analyses:

Gender Development Index (GDI): Visualize the disparities in achievements between women and men in health, education, and decent standards of living.

```R
# In this case, I am loading example data from the package
# If you want to load your CSV then follow: data <- read_csv("/path/to/your/data.csv") 

gender_development_index(real_data_GDI)
```

Output:

Gender Pay Gap:
```R
gender_pay_gap(real_data_GPG)
```

Output:


```R
plot_gdi(real_data_GDI)
```

Output: 

![Basic Structure](https://github.com/mashrur-ayon/genderstat/blob/main/plots-pictures/plot_gdi_output.png)

Comparative Analysis of HDIs: Present a side-by-side comparison of the Male and Female HDIs.

```R
plot_hdi(real_data_GDI)
```
Output:

![Basic Structure](https://github.com/mashrur-ayon/genderstat/blob/main/plots-pictures/plot_hdi_output.png)

Maternal Mortality Ratio and Adolescent Birth Rate: Use stacked bar plots to visualize these critical health metrics.
```R
plot_gii_health(real_data_GII)

```

Output:

![Basic Structure](https://github.com/mashrur-ayon/genderstat/blob/main/plots-pictures/plot_gii_health_output.png)


- Practical uses of the package: specific case studies or examples.
- How it fits into larger research projects or workflows.
- Potential impact in real-world scenarios (e.g., policy-making, awareness campaigns, educational settings).

# References
