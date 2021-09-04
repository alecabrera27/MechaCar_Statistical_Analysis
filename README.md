# MechaCar_Statistical_Analysis

## Overview 

We will review the production data for insights that may help the manufacturing team with the newest prototype, the MechaCar, which is suffering from production troubles that are blocking the manufacturing team’s progress.

- Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
- Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
- Run t-tests to determine if the manufacturing lots are statistically different from the mean population
- Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers.


## Linear Regression to Predict MPG

![Linear Regression Summary](https://user-images.githubusercontent.com/78781719/132107738-52f126f2-36dd-4fb8-89e4-e89450cec9c1.PNG)

- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

We will look at the Pr(>|t|) calue: we have three values that are likely to provide random amounts in our linear model.
Those values are ;  vehicle_weight, spoiler_angle and AWD.

- Is the slope of the linear model considered to be zero? Why or why not?

We can look that our p-value  is 5.35e-11, we can state that our results are significant and we must reject the null hypothesis, and the slope of our linear model is not zero.

- Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

Having an R-squared value of 0.6825, or approximately 69%, our data fits the linear regression

## Summary Statistics on Suspension Coils

![Total_Summary](https://user-images.githubusercontent.com/78781719/132108467-882d181b-3e95-4843-b13b-28b7f1c695eb.PNG)

![lot_summary](https://user-images.githubusercontent.com/78781719/132108473-c6aca774-654f-4bd6-9544-777108d4302d.PNG)


Based on the design of MechaCar suspension coils, the variance should be less than 100 lbs per squared inch. 
In this case, the data does not meet those specifications. 
But on the Lot 3 analysis we can see a variance of 170 PSI, but also exceeds the variance compared of Lot 1 and Lot 2.


## T-Tests on Suspension Coils

We had the p-value below the significance level from lot 3 l, therefore,  we don’t have enough data to reject the null hypothesis of the mean PSI od the data is different from the population mean of 1500.

## Study Design: MechaCar vs Competition
For further analyisis, we can compare the sale prices of cars with the competitor company.

Our null Analysis: There is a difference of average prices between the two companies.
Our alternate analysis: There is not a difference of average prices between the two companies.

To test our hypothesis we would need the mean prices of the cars, compare the difference and have a statistical analysis between the two.

