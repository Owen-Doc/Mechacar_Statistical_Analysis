# Mechacar_Statistical_Analysis
## Deliverable 1: Linear Regression to Predict MPG
I used R to create a multiple linear regression of the effect of vehicle length, vehicle weight, spoiler angle, ground clearance, and all wheel drive status to try to predict the MPG that a vehicle would get. Below is the summary of the model:

![MultiLinearRegression](./images/MultiRegressionSummary.png)

The null hypothesis is that the selected variables provide a random amount of variance in the mpg values. The alternative hypothesis is that the independent variables do not cause a random amount of variance in the mpg values. 
### Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
As we see in our results table, the vehicle weight, spoiler angle, and all wheel drive status all have p-values that are above our confidence level of 95%. This means that we would fail to reject the null hypothesis that these variables provide a random amount of variance in the MPG. 
The vehicle length and ground clearance both have p-values that are well below the .05 confidence level. This means that we would reject the null hypothesis that these variables cause a random amount of variance in MPG, and therefore cause a non-random amount of variability in MPG. 

### Is the slope of the linear model considered to be zero? Why or why not?
The slope of the linear model is not zero. Each of the variables tested has a coefficient that is non-zero. The vehicle weight has the smallest coefficient (in absolute value) at .001245, so holding all other variables constant, an increase of 1 unit of weight would correlate with an increase of .001245 MPG for a car. While this is small, it is still non-zero. 

###Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
Drawing from the Adjusted R-Squared value of .6825 (68%), I can say that 68% of the variation of MPG can be explained by these 5 variables. This information is indicative that this model predicts mpg effectively, however I'd use caution before broadly applying these relationships as R-Squared values are sensitive to overfitting through adding too many variables to a multi-linear regression. I'd want to build a few more models, removing one variable at a time, and see how the R-squared value changes. 

## Summary Statistics on Suspension Coils
