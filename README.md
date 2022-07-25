# MechaCar Statistical Analysis

## Linear Regression to Predict MPG
The statistical data generated from our linear regression analysis to predict MPG can be seen below.

![Multiple Linear Regression to Predict MPG](https://github.com/Trevor-Jackson94/MechaCar_Statistical_Analysis/blob/main/Linear_Regression_Predict_MPG.PNG?raw=true)

- Based on our Pr(>|t|) values for each variable, vehicle length and ground clearance (along with our intercept) are statistically unlikely to provide random amounts of variance to our model since they are so close to 0. 
- The slope of our multiple linear regression model is NOT considered to be 0 since we have a significant linear relationship between our variables and mpg and our coefficients are not 0.
- Based on our coefficients and our R^2 value of 0.7149, this model does predict MPG of MechaCAr effectively.

## Summary Statistics on Suspension Coils
The summary dataframe and lot specific summary dataframes generated can be seen below.

![Summary Statistics Dataframe](https://github.com/Trevor-Jackson94/MechaCar_Statistical_Analysis/blob/main/total_summary.PNG?raw=true)

![Lot Summary Statistics Dataframe](https://github.com/Trevor-Jackson94/MechaCar_Statistical_Analysis/blob/main/lot_summary.PNG?raw=true)

- Based on the variance limit of 100 PSI in the manufacturing processes, the overall variance in PSI is only 62.29 PSI which is well within the limit. On a lot by lot basis, Lots 1 and 2 are within limits at 0.98 and 7.47 respectively. Lot 3 has some manufacturing issues with a variance of 170.29 PSI.

## T-Tests on Suspension Coils
Find the statistical results of the overall t-test and the individual lot t-tests measured against the population average PSI of 1500.

![All Manufacturing Lots vs 1500 PSI T-test](https://github.com/Trevor-Jackson94/MechaCar_Statistical_Analysis/blob/main/Overall_ttest.PNG?raw=true)

![Individual Lots vs 1500 PSI T-tests](https://github.com/Trevor-Jackson94/MechaCar_Statistical_Analysis/blob/main/individual_ttests.PNG?raw=true)

Based on the common significance level where p=0.05, combining the lots for the overall PSI mean vs the population mean of 1500 our p value of 0.06 shows that these two means are statistically similar. For each lot individually, Lot 1 has a p-value of 1 because it has an identical mean of 1500 compared to the population mean. Lot 2 has p-value of 0.61 showing a HIGH statistical similarity between the Lot 2 PSI mean and the population PSI mean. Lot 3 has a p-value of 0.04, below our level of significance of p=0.05. This is what we expected based on the variance we saw for each individual lot.
