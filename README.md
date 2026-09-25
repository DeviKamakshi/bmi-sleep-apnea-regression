# Relationship Between BMI and Sleep Apnea Severity

## Project Overview

This project examines the relationship between Body Mass Index (BMI) and
sleep apnea severity using simple linear regression.

Sleep apnea severity is measured using the Apnea-Hypopnea Index (AHI),
which represents the number of apnea and hypopnea events per hour of sleep.

The research question for this project is:

**Is higher BMI associated with higher AHI?**

BMI is used as the explanatory variable and AHI is used as the response
variable.

## Data

The data used in this project come from the DREAMT dataset available through
PhysioNet.

The DREAMT study contains data from 100 participants recruited through the
Duke University Health System Sleep Disorders Lab. Participants underwent
overnight polysomnography.

The dataset is available at:

https://physionet.org/content/dreamt/2.2.0/

The analysis uses the DREAMT participant information file,
`participant_info.csv`.

The original dataset and `participant_info.csv` are not included in this
repository. To reproduce the analysis, the data should be obtained directly
from PhysioNet.

## Data License

The DREAMT dataset is distributed under the **PhysioNet Restricted Health Data
License 1.5.0**. Access to the dataset is restricted to registered PhysioNet
users who agree to the required Data Use Agreement.

Because the DREAMT data are obtained from an external restricted-access source,
the original data files, including `participant_info.csv`, are not included in
this repository.

Users who wish to reproduce the analysis should obtain the data directly from:

https://physionet.org/content/dreamt/2.2.0/

## Analysis

The statistical analysis was performed using R.

The main steps of the analysis included:

- Examining summary statistics for BMI and AHI
- Creating a scatterplot to examine the relationship between BMI and AHI
- Fitting a simple linear regression model with BMI as the explanatory
  variable and AHI as the response variable
- Estimating the regression parameters using ordinary least squares (OLS)
- Evaluating the assumptions of the simple linear regression model
- Examining residual and normal Q-Q plots
- Conducting a hypothesis test for the regression slope
- Calculating a 95% confidence interval for the slope
- Calculating and interpreting R-squared
- Examining unusual observations
- Performing a sensitivity analysis to determine how an unusual observation
  affected the estimated relationship

The simple linear regression model used in the analysis is:

Y_i = beta_0 + beta_1 X_i + epsilon_i

where Y represents AHI and X represents BMI.

## Repository Structure

- `Project.Rproj` - RStudio project file
- `bmi_ahi_regression.R` - R code used for the statistical analysis
- `report.pdf` - Final project report
- `bmi_ahi_scatterplot.png` - Scatterplot of BMI and AHI with the fitted
  regression line
- `residuals_fitted.png` - Residuals versus fitted values diagnostic plot
- `normal_qq.png` - Normal Q-Q plot of the regression residuals
- `README.md` - Description of the project and repository

The raw DREAMT dataset and `participant_info.csv` are not stored in this
repository.

## Reproducing the Analysis

1. Obtain access to the DREAMT dataset through PhysioNet:
   https://physionet.org/content/dreamt/2.2.0/
2. Download `participant_info.csv`.
3. Place `participant_info.csv` in the same folder as
   `bmi_ahi_regression.R`.
4. Open `Project.Rproj` in RStudio.
5. Open `bmi_ahi_regression.R`.
6. Run the R script from beginning to end to reproduce the statistical
   analysis.

The R script reads the dataset using:

`sleep_data <- read.csv("participant_info.csv")`

## External Resources

The DREAMT dataset was obtained from PhysioNet.

R was used to perform the statistical analysis.

ChatGPT was used for limited assistance with understanding some statistical
concepts, organizing parts of the analysis, and improving the wording and
clarity of the report. It was not used to perform the entire project. The
statistical analysis was conducted in R, and the reported numerical results
were based on the DREAMT data and R output.

## Author

Devi Kamakshi

## Date

September 25, 2026
