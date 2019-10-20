install.packages("imager")
library(imager)
library(ggplot2)
library(dplyr)


plot(boats)

ceara <- load.image("C:/Users/nick_/Downloads/ceara.jpg")
plot(ceara)

R(ceara) %>% hist(main="Luminance values in boats picture")
bdf <- as.data.frame(ceara)
head(bdf,3)

bdf <- mutate(bdf,channel=factor(cc,labels=c('R','G','B')))
ggplot(bdf,aes(value,col=channel))+geom_histogram(bins=30)+facet_wrap(~ channel)

x <- rnorm(100)
layout(t(1:2))
hist(x,main="Histogram of x")
f <- ecdf(x)
hist(f(x),main="Histogram of ecdf(x)")

hub <- ceara %>% grayscale
plot(hub,main="Hubble Deep Field")

layout(t(1:2))
set.seed(2)
points <- rbinom(100*100,1,.001) %>% as.cimg
blobs <- isoblur(points,5)
plot(points,main="Random points")
plot(blobs,main="Blobs")



