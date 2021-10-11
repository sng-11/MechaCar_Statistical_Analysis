# MechaCar Statistical Analysis

## Overview
MechaCar is the newest prototype of AutosRU's and our client has asked us to review its production data and identify any problematic areas. Statistical analysis, using R and RStudio, is carried out. It's results and analyses are laid out in this report.

## Linear Regression to Predict MPG
To identify the vehicle characteristics that impact vehicle performance, 50 prototype MechaCars were created and tested. Optimizing mpg is the goal and in order to determine what variables contribute to predicting mpg, a multiple linear regression is executed on R. The results are as follows:

<img width="660" alt="Screen Shot 2021-10-10 at 5 37 08 PM" src="https://user-images.githubusercontent.com/84816495/136713702-15161c81-bcef-419c-91b6-7d1632499521.png">

As seen from the above summary, vehicle length and ground clearance have p-values much smaller than 0.05 (the statistically significant threshold) so therefore those two variables are statistically unlikely to provide randon amounts of variance to the linear model. Hence, vehicle length and ground clearance have statistically significant impact on mpg and should be further explored when optimizing mpg in MechaCars.

We can extract the "line of best fit" from the above summary to be: mpg = 6.27(vehicle_length) + 0.00125(vehicle_weight) + 0.0688(spoiler_angle) + 3.55(ground_clearance) - 3.41(AWD) - 0.0104. Because there are multiple variables involved in this formula, there are multiple partial slopes involved. However, we can deduce whether the slope of the linear model is zero or not by looking at the p-value of the linear regression, which is 5.35E(-11). As it is much smaller than our pre-determined significance level of 0.05, we can reject our null hypothesis, which also means that the slope of this model is NOT ZERO.

Finally, the R-squared value is 0.7149, which means that roughly 71.5% of the variability of our dependent variable is explained using this particular linear regression model. This indicates that this model is somewhat effective in predicting the mpg of MechaCar prototypes. 

## Summary Statistics on Suspension Coils
Suspension coils of MechaCars are investigated below to determine if their manufacturing process was consistent across the production lots. The suspension coil's PSI metrics are assessed.

Overall, across all lots, the following summary statistics were observed:

<img width="339" alt="total_summary" src="https://user-images.githubusercontent.com/84816495/136714720-1c285486-2ff9-43cc-a131-0d16cdd2fd60.png">

Summary statistics based on manufacturing lot were also collected, as seen below:
<img width="469" alt="lot_summary" src="https://user-images.githubusercontent.com/84816495/136714728-56091897-8f4e-47d4-beec-2e430b1180ad.png">

It is worthwhile to note that the variance of MechaCar suspension coils cannot exceed 100 pounds per square inch. This specification is met for ALL manufacturing lots in total (as seen in total summary) where variance is 62.3. However, when looking at each lot separately, Lot 3 does not have a variance that meet this requirement, with a variance of 170.3. The other lots, Lot 1 and Lot 2, both meet the specification. This indicates that AutosRUs should pay attention to Lot 3.

## T-Tests on Suspension Coils

T-tests were performed on suspension coil data from the MechaCar prototypes to determine if production of these coils of all lots and each lot individually are statistically different from the population mean of 1500 pounds per square inch.

The following hypotheses were determined before the statistical analysis:
- Null Hypothesis: There is no significant difference between the mean PSI of all manufacturing lots and individual lots and population mean of 1500 PSI.
- Alternate Hypothesis: There is significant difference between the mean PSI of all manufacturing lots and population mean of 1500 PSI.

This t-test is for all manufacturing lots:

<img width="407" alt="Screen Shot 2021-10-10 at 7 52 52 PM" src="https://user-images.githubusercontent.com/84816495/136717491-41dc9603-3691-4de7-8946-353f9137ff58.png">

_Based on the above results, the p-value is 0.06 across all lots, which is greater than the significant value we set as 0.05. As such, we FAIL to reject the null hypothesis._

And these t-tests are for each manufacturing lot:

<img width="640" alt="Screen Shot 2021-10-10 at 7 57 52 PM" src="https://user-images.githubusercontent.com/84816495/136717499-0e50e21f-635d-492c-ae9d-08f7dbcd97e7.png">

_Based on the above results, the p-values are 1, 0.61, and 0.04, for Lots 1, 2, and 3, respectively. Both Lots 1 and Lots 2 have p-values that are greater than 0.05 so we FAIL to reject the null hypothesis for them. However, for Lot 3, the p-value is smaller than 0.05, hence we can reject the null hypothesis._
