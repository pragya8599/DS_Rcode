x <- c(2,0,0,1)
y <- c(2,0,0,1)
x+y
df <- data.frame(Col1=1:3, Col2=c("a","b","c"))
df[2,1]
airquality <- datasets::airquality
head(airquality,10)
tail(airquality,10)
airquality[,c(1,2)]
df<- airquality[,-6]
summary(df$Ozone)
summary(df)
summary(airquality)
plot(airquality)
plot(airquality$Wind)
plot(airquality$Temp)
hist(airquality$Temp)

boxplot(airquality$Wind, main="Boxplot wind")
boxplot.stats(airquality$Wind)$out
boxplot.stats(airquality$wind)$conf

boxplot(airquality)
boxplot(airquality$Ozone)$out

plot(airquality$Ozone, type = 'l')
hist(airquality$Ozone, main= 'abc', xlab = 'ozone levels', col='green')
barplot(airquality$Ozone, main= 'ozone quality', xab = 'ozone levels', col='blue')
