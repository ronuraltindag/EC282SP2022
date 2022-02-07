---
output:
  pdf_document: default
  html_document: default
---

You flipped the coin 100 times and had 61 heads and 39 tails. You would like to test whether the coin is fair or biased. (Assume that n is large enough to for CLT to work).  

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


