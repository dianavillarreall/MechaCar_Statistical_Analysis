# MechaCar_Statistical_Analysis
## Deliverable 1: Linear Regression to Predict MPG 
### Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
Acording to the statistics, the vehicle weight, spoiler angle, and All Wheel Drive p-values demostrates a random amount of variance with the dataset. According to this, the vehicle length and vehicle ground clearence provided non-random amount of variance to the mpg values in the dataset meaning, these two coefficients provide a significant impact on miles per gallon on the MechaCar prototype.
### Is the slope of the linear model considered to be zero? Why or why not?
This model has a p-Value of 5.35e-11 which is much lesser than the assumed significance level which is 0.05%. This tells us that there is sufficient evidence to reject our null hypothesis, which indcates that the slope of this linear model is not zero.
### Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
This linear model does predict mpg of Mechar prototypes effectively. Since this linear model has an r-squared value of 0.7149, which means that 71% of all mpg predictions will be determined by this model.

## Deliverable 2: Create Visualizations for the Trip Analysis
### Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not? 
After analysing the entire population of the production lot, the variance of the coils is 62.29 PSI which is within the 100 PSI variance requirement. Similarly, but significantly more consistent, Lot 1 and Lot 2 are within the 100 PSI variance requiremen following with variances of 0.98 and 7.47 according to the statistics and Lot 3 is showing much bigger variance and cosistency in performance with a variance of 170.29. Lot 3 is disproportionately causing the variance at the full lot level.

## Deliverable 3: T-Tests on Suspension Coils
* All Manufacturing Lots: 
p-value = 0.6028, alpha = 0.05
0.60 > 0.05 the total manufacturing lot is not statistically significant from the normal distribution and normality can be assumed. 
The mean falls within the 95% confidence interval.
* Lot 1: 
p-value = 1, alpha = 0.05
1 > 0.05 is not statistically significant from the normal distribution and normality can be assumed. 
The mean falls within the 95% confidence interval.
* Lot 2: 
p-value = 0.6072, alpha = 0.05
0.60 > 0.05 is not statistically significant from the normal distribution and normality can be assumed. 
The mean falls within the 95% confidence interval.
* Lot 3: 
p-value = 0.04168, alpha = 0.05
0.04 < 0.05 is statistically significant from the normal distribution and normality cannot be assumed. 
The mean falls within the 95% confidence interval.

## Deliverable 4: Design a Study Comparing the MechaCar to the Competition
### What metric or metrics are you going to test?
The next metrics to test should be the safety rating, horsepower, and urrent price and gasoline efficiency 
### What is the null hypothesis or alternative hypothesis?
The null hypothesis is that the mean of the safety rating is zero. 
The alternative hypothesis is that the mean of the safety rating is not equal to zero.
### What statistical test would you use to test the hypothesis? And why?
Using a multiple linear regression statistical summary would show how the variables impact the safety ratings for MechaCar and their competitors.
### What data is needed to run the statistical test?
A multiple linear regression would be used to determine the factors that have the highest correlation with the list selling price. 
