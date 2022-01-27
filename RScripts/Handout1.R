# Y = {0,1}
# E[Y] = 0.5 
#Var[Y] = 0.25

library(dplyr)
library(tidyr)
library(ggplot2)
library(gganimate)
set.seed(10) 
options(scipen=999)

df1 <- sample(x=c(0,1), prob = c(1-0.04,0.04), size=100000, replace = TRUE)

df1 <- as.data.frame(df1) %>%
       rename(colon.cancer=1) %>%
       mutate(id = row_number()) %>%
       select(id, colon.cancer)
  
names(df1) <- c("id", "colon.cancer") 

pop.mean.Y <- mean(df1$colon.cancer)
pop.var.Y <- var(df1$colon.cancer)
pop.sd.Y <- sd(df1$colon.cancer)


df2 <- sample_n(df1, 100)

sample.mean.y <- mean(df2$colon.cancer)


df3 <- replicate(10, {
  dft <- sample_n(df1, 100)
  mean(dft$colon.cancer)
})

df3 <- as.data.frame(df3)  
names(df3) <- c("sample.mean.y")

mean.of.y.bar <- mean(df3$sample.mean.y)
var.of.y.bar <- var(df3$sample.mean.y)

pop.var.Y/100

hist(df1$colon.cancer)
hist(df3$sample.mean.y)
