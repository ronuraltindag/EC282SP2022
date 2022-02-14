---
output:
  pdf_document: default
  html_document: default
---

Question 1. 

Assume that you randomly drawn a sample of 16 observations from a population where the mean is unknown but the variance $\sigma^2$ is known and equal to 64.  
The sample mean is equal to 72. 

a. Conduct a statistical test that the population mean is equal to 77 at 5% significance level with two-sided alternative.  

b. Calculate the threshold values of sample mean over and under which you would reject the null hypothesis at 5% significance level.    

c. If the true value of the population mean is equal 77, what is the probability of type-II error and the power of the test?    




Question 2. 

You flipped the coin 100 times and had 61 heads and 39 tails. You would like to test whether the coin is fair or biased. (Assume that n is large enough to for CLT to work).  
Assume that the variance is unknown. 

```
coin <- as.data.frame(c(1:100)) 
names(coin) <- "id"
coin$Y <- as.numeric(coin$id>39)
```

a. Define a binary random variable Y for flipping a coin (head=1).  

b. Calculate the sample mean and sample standard deviation.  

c. You want to test if the coin is fair, construct the null and the alternative hypothesis.   

d. Calculate the t-statistic and the associated p-value. Interpret the value.  

e. Conduct the test at 5% significance level and conclude.   

f. What is the likelihood of type-I error if you reject the null?   

e. What is the likelihood of type-II error if you “accept” the null and the alternative hypothesis is that the coin is biased with 0.70 flipping head and 0.30 flipping tails? 

f. Construct a 95% confidence interval for the population mean using the empirical sample.     


