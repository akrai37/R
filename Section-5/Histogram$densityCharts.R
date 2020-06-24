
library(ggplot2)
#------------------Histogram and Density Charts

s <-ggplot(data=movies, aes(x=BudgetMillions))
s + geom_histogram(binwidth=10) #To construct a histogram, the first step is to "bin" (or "bucket") the range of values-that is, divide the entire range of values into a series of intervals-and then count how many values fall into each interval. 
#The bins are usually specified as consecutive, non-overlapping intervals of a variable.
#still doubt how 'binwidth' works.

#add colour
s + geom_histogram(binwidth=20, fill="green") #'fill' is used to give the color to bars(not 'color').
s + geom_histogram(binwidth=20, aes(fill=Genre))

#add a border
s + geom_histogram(binwidth=10, aes(fill=Genre), color="black") #'color' here gives the color to the boundaries of the graph.

#sometimes you may need density charts
s+ geom_density(aes(fill=Genre))
s+ geom_density(aes(fill=Genre), position='stack') #"position" allows stacking up of data which makes it distinctive.


#for making charts or histogram of only one genre:-
#ggplot(data=movies[movies$BudgetMillions > 30 & movies$BudgetMillions < 80 & movies$Genre == "Action",], aes(x=BudgetMillions)) + geom_density(aes(fill=Genre), position = "stack")
#Where we set budget range from 30$ millions to 80$ millions and movies genre action.


