# Introduction
We use the dataset from National Health and Nutrition Examination Survey(NHANES). The dataset can be obtained from the website of NHANES database(https://wwwn.cdc.gov/nchs/nhanes/default.aspx) .
# Data cleaning
For data cleaning, we first extract those four variable by filter and select code from R package "tidyverse" and "dplyr". then we remove the all NA value with drop_Na() code. 
# Univariable analysis and plot
For each indivdiual variable we use summary(), mean() and sd() to calculate the min, max, median, mean and standard devivation. Then we use ggbar() in ggplot package to plot the bar graph for each of them. 
# Method 
The methods we choose are decision tree, multinomial logistic regression, linear discriminant analysis and support vector machine. The decision tree method utilizes > tree code from the R package "tree". Multinomial logistc regression uses > multinom function from "nnet" package. And >lda and >svm functions will come from "ISLR" pacakge. Each method will go through summary() function to gain the output for our analysis. 
