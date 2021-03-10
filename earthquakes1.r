e_quakes<-datasets::quakes
e_quakes
head(e_quakes,10)
tail(e_quakes,10)
e_quakes[,c(3,4)]

df<-e_quakes[,-5]
df
summary(e_quakes[,c(3,4)])

e_quakes$depth

summary(e_quakes$depth)

###########Summary of the data#########

summary(e_quakes)
summary(e_quakes$mag) 


#####################
plot(e_quakes$depth)
plot(e_quakes$mag,e_quakes$depth,type="p")
plot(e_quakes)
# points and lines 
plot(e_quakes$depth, type= "l") # p: points, l: lines,b: both
plot(e_quakes$mag, xlab = 'Index', 
     ylab = 'e_quakes', main = 'e_quakes in city',
     col = 'blue')

# Horizontal bar plot
barplot(e_quakes$depth, main = 'Earth quakes',
        ylab = 'depth', col= 'blue',horiz = F,axes=T)

#Histogram
hist(e_quakes$depth)
hist(e_quakes$depth, 
     main = 'depth value',
     xlab = 'depth.', col='blue')

#Single box plot
boxplot(e_quakes$mag,main="Boxplot")

boxplot.stats(e_quakes$mag)$out

# Multiple box plots
boxplot(e_quakes[,1:4],main='Multiple')


#margin of the grid(mar), 
#no of rows and columns(mfrow), 
#whether a border is to be included(bty) 
#and position of the 
#labels(las: 1 for horizontal, las: 0 for vertical)
#bty - box around the plot
par(mfrow=c(3,3),mar=c(2,5,2,1),  las=0, bty="o")
plot(e_quakes$depth)
plot(e_quakes$depth, e_quakes$mag)
plot(e_quakes$depth, type= "l")
plot(e_quakes$depth, type= "l")
plot(e_quakes$depth, type= "l")
barplot(e_quakes$depth, main = 'earth quakes',
        xlab = 'depth level', col='green',horiz = TRUE)
hist(e_quakes$depth)
boxplot(e_quakes$mag)
boxplot(e_quakes[,0:4], main='Multiple Box plots')
