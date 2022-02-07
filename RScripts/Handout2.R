
library(dplyr)
library(tidyr)
library(ggplot2)
library(gganimate)
set.seed(10) 
options(scipen=999)


### Normal and Standard Normal Distribution
df1 <- as.data.frame(rnorm(50000,1,2))
names(df1) <- "Y"
hist(df1$Y)
hist(df1$Y, freq = F)

plot(density(df1$Y))
df1$Z <- (df1$Y - 1)/2
hist(df1$Z, freq = F)
plot(density(df1$Z))


###

flips <- function(n,p,x1,x2) {
  out1 <- sample(x=c(x1,x2), prob = c(p,1-p), size=n, replace = TRUE)
  n.sample <- n 
  mean.sample <- sum(out1)/n 
  sd.sample <- sqrt(sum((out1-mean.sample)^2)/n)
  out2 <- cbind(mean.sample, n.sample, sd.sample)
  return(out2)
}

# n =1 , n=2, n=3, n=4. ---> 

df1 <- do.call(rbind.data.frame,lapply(1:1000, flips,p=0.5,x1=0,x2=1)) 

p1 <- ggplot(df1, aes(x=n.sample,y=mean.sample)) +
  #theme_tufte() +
  geom_line() + 
  geom_hline(yintercept = 0.5, colour='grey', linetype='dashed') +
  labs(x = "number of coins flipped", y = "outcome mean") + 
  transition_reveal(n.sample) + 
  view_follow() + 
  xlim(1,1000 ) + 
  ylim(0.0,1.0) 



animate(p1, nframes=200, fps=5)


f.coins <- function(n) {
  sample.n <- sample(x=c(0,1), prob=c(0.5,0.5), size=n, replace=TRUE)
  mean.sample <- mean(sample.n)
  return(mean.sample)
}

#now try if it is working 
f.coins(1)
#replicate 10000 times 
df1 <- replicate(10000, f.coins(10000))
#see if the data looks right 
head(df1)
#now plot 
hist.df1 <- hist(df1,  xlab='sample average of n coins', ylab='frequency (over 10000)',main='')


#answers to handout question 2 

a1 <- pnorm(1.525)

a2 <- pnorm(101,mean=100,sd=sqrt(43/100))




a2 <- pnorm(101,mean=100,sd=sqrt(43/100))

b <- pnorm(3.660) - pnorm(1.220)
c <- 1 - pnorm(98, mean=100, sd = sqrt(43/165))
