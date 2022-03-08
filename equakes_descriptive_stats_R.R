

#Practice exercise
#load datasets quakes
e_quakes<- datasets::quakes

#view top 10 and last 10 rows
head(e_quakes,10)
tail(e_quakes,10)

#view columns-wise
e_quakes[,c(1,2)]
e_quakes$depth
e_quakes[3,c(1,2)]
e_quakes[1:10,c(1,2)]

#summary of the data frame
summary(e_quakes)       #summary all column
summary(e_quakes$depth)  #summary column-wise

#visualization
plot(e_quakes)
plot(e_quakes$lat)
plot(e_quakes$depth,e_quakes$mag,type = 'p')

#bar plot
barplot(e_quakes$mag, col='blue')

#histogram
hist(e_quakes$mag, main= 'abc', xlab = 'equakes magnitude levels', col='green')
hist(e_quakes$depth, main='solar radiation in air', xlab='Solar radiation', col='green')

#box plot
boxplot(e_quakes$mag)
boxplot(e_quakes$mag, main='Box Plot')
boxplot.stats(e_quakes$mag)
boxplot.stats(e_quakes$mag)$out  #outliers in column $mag

#Multiple Box plots
boxplot(e_quakes[,1:4],main='Multiple box plots')

##margin of the grid(mar)
##no of rows and columns (mfrow)
#whether a border is to be included (bty)
#and positions of the 
#labels (las=1 for horizontal, las=0 for the vertical)
#bty, box around the plot
par(mfrow=c(3,3), mar=c(2,5,2,1), las=0, bty="0")

plot(e_quakes$mag)
plot(e_quakes$mag, e_quakes$wind)

#find sd, variance, skewness, kurtosis
sd(e_quakes$mag)
sd(e_quakes$mag, na.rm = T)
var(e_quakes$mag)
skewness(e_quakes$mag)
kurtosis(e_quakes$mag)
