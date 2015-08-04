# ISLR: Chapter 2

## Conceptual questions

### Problem 1

1. (flexible is worse) For large n and small p, we are in danger of overfitting if we use a model that is too flexible. We could eliminate bias, but we would do so at the cost of high variance. I would advocate for using an *inflexible* model 
2. For large p and small n, we should use a flexible model. We ??? 
3. (flexible is better) For a highly non-linear response, we are inclined to use a more flexible model. By definition, "flexibility" is referring to our ability to capture complexity in the form of higher-order (i.e. non-linear) terms (e.g. power series). 
4. (flexible is the same as inflexible) For a data set with extremely large `Var(eps^2)`, there is not yet a preferred method -- `Var(eps^2)` simply tells us the baseline of the test MSE. The `Var` that counts is the `Var` of our model under changes in input points. 

### Problem 2

1. regression (salary is a quantity); n = 500 (companies); p = 3 (profit, #emp, industry); we are interested in inference 
2. classification (success v failure); n = 20 (products); p = 13, prediction 
3. regresion (USD); n = 52; p = 3; inference (effect of stock changes) 

### Problem 3

1. squared bias goes down; variance goes up; training error starts above bayes and decreases; test error is U shaped (sum of squared bias and variance); and irreducible is flat line
2. flexibility allows model to completely explain all data points: bias goes down; flexibility also overfits the pts it saw in training, and will completely change if there are new points: var goes up; training error has no var so bias just gets wiped out; test error is the sum of the var and bias and var wins out; irreducible is inherent in data and irreducible (duh)

### Problem 4

1.
