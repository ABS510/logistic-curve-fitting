# logistic-curve-fitting
This program tries to fit some given data with the best logistic growth curve.

This program works on a similar concept to linear regression, which tries to model a set of data points with a line of best fit.
The cost/loss function for this model takes into account how well a logistic curve fits the data, as well as how well the derivative of the curve matches the slope of the line between each set of adjacent data points.

Logistic growth curves model a variety of natural phenomena, such as population growth in an environment with limited resources. 
Even the spread of diseases tend to follow logistic growth (however, the spread of diseases are influenced by many other external factors, making it difficult to model them perfectly with logistic growth curves).

There is a Data folder, containing some sample data on which this program can be run. 
This program will automatically plot 2 graphs, the expected logistic curve overlaying the data points, and the derivative of this curve.

One of the sample data files contains the number of Covid-19 cases in China during the first 28 days of the disease.
The growth of Covid-19 in China almost perfectly follows logistic growth (as there was only 1 wave of the disease), and using the first 28 days of data, this model was able to predict a total of about 86000 cases.


This code is written in MatLab.
