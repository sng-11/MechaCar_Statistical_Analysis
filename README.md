# MechaCar Statistical Analysis

## Overview
MechaCar is the newest prototype of AutosRU's and our client has asked us to review its production data and identify any problematic areas. Statistical analysis, using R and RStudio, is carried out. It's results and analyses are laid out in this report.

## Linear Regression to Predict MPG
To identify the vehicle characteristics that impact vehicle performance, 50 prototype MechaCars were created and tested. Optimizing mpg is the goal and in order to determine what variables contribute to predicting mpg, a multiple linear regression is executed on R. The results are as follows:

<img width="660" alt="Screen Shot 2021-10-10 at 5 37 08 PM" src="https://user-images.githubusercontent.com/84816495/136713702-15161c81-bcef-419c-91b6-7d1632499521.png">

As seen from the above summary, vehicle length and ground clearance have p-values much smaller than 0.05 (the statistically significant threshold) so therefore those two variables are statistically unlikely to provide randon amounts of variance to the linear model. Hence, vehicle length and ground clearance have statistically significant impact on mpg and should be further explored when optimizing mpg in MechaCars.

We can extract the "line of best fit" from the above summary to be: mpg = 6.27(vehicle_length) + 0.00125(vehicle_weight) + 0.0688(spoiler_angle) + 3.55(ground_clearance) - 3.41(AWD) - 0.0104. Because there are multiple variables involved in this formula, there are multiple partial slopes involved. However, we can deduce whether the slope of the linear model is zero or not by looking at the p-value of the linear regression, which is 5.35E(-11). As it is much smaller than our pre-determined significance level of 0.05, we can reject our null hypothesis, which also means that the slope of this model is NOT ZERO.

Finally, the R-squared value is 0.7149, which means that roughly 71.5% of the variability of our dependent variable is explained using this particular linear regression model. This indicates that this model is somewhat effective in predicting the mpg of MechaCar prototypes. 
