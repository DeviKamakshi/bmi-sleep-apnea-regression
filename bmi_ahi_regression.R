# ------------------------------------------------------------
# Simple Linear Regression Project
# Relationship Between BMI and AHI
# DREAMT Dataset
# ------------------------------------------------------------


# ------------------------------------------------------------
# 1. Load data
# ------------------------------------------------------------

# Download participant_info.csv from the DREAMT dataset
# and place it in the same folder as this R script.

sleep_data <- read.csv("participant_info.csv")


# ------------------------------------------------------------
# 2. Inspect the dataset
# ------------------------------------------------------------

# Number of observations and variables
dim(sleep_data)

# Variable names
names(sleep_data)

# Summary statistics for BMI
summary(sleep_data$BMI)

# Summary statistics for AHI
summary(sleep_data$AHI)


# ------------------------------------------------------------
# 3. Initial scatterplot
# ------------------------------------------------------------

plot(
  sleep_data$BMI,
  sleep_data$AHI,
  xlab = expression("BMI (kg/m"^2*")"),
  ylab = "AHI (events per hour)",
  main = "Relationship Between BMI and AHI"
)


# ------------------------------------------------------------
# 4. Fit simple linear regression model
# ------------------------------------------------------------

model <- lm(AHI ~ BMI, data = sleep_data)

# Regression results
summary(model)


# ------------------------------------------------------------
# 5. Regression diagnostic plots
# ------------------------------------------------------------

# Residuals vs Fitted
plot(model, which = 1)

# Normal Q-Q plot
plot(model, which = 2)


# ------------------------------------------------------------
# 6. Examine unusual observations
# ------------------------------------------------------------

# Participant with unusually high AHI
sleep_data[44, ]

# Sensitivity analysis excluding observation 44
model_without44 <- lm(
  AHI ~ BMI,
  data = sleep_data[-44, ]
)

summary(model_without44)

# Additional observations examined during diagnostics
sleep_data[c(46, 59), ]


# ------------------------------------------------------------
# 7. Confidence interval for regression coefficients
# ------------------------------------------------------------

confint(model)


# ------------------------------------------------------------
# 8. Final scatterplot with fitted regression line
# ------------------------------------------------------------

plot(
  sleep_data$BMI,
  sleep_data$AHI,
  xlab = expression("BMI (kg/m"^2*")"),
  ylab = "AHI (events per hour)",
  main = "Relationship Between BMI and AHI"
)

abline(model, lwd = 2)