e_quakes<-datasets::quakes
e_quakes

x <- c(2, 7, 7, 4, 5, 1, 3) #example set
var(x)
var(e_quakes$depth) #to compute variance
var(e_quakes$mag)
skewness(e_quakes$mag,na.rm=FALSE)
skewness(e_quakes$depth,na.rm=FALSE)
kurtosis(e_quakes,na.rm=FALSE)
skewness(e_quakes,na.rm=FALSE)
hist(e_quakes$depth)