
stats
#-----------------------Introduction to qplot()
install.packages("ggplot2")
library(ggplot2)
?ggplot2
?qplot #used in plotting the data.
stats$Internet.users
qplot(data=stats, x=Internet.users) #'data' is an object that takes the dataset. 'x' and 'y' are coordinates of the graph.          
qplot(data=stats, x=Income.Group, y=Birth.rate)
qplot(data=stats, x=Income.Group, y=Birth.rate, size=I(10)) #'size' is used to adjust the size of the representations. 'I' is necessary here(for some reason). 
qplot(data=stats, x=Income.Group, y=Birth.rate, size=I(3), color=I('blue')) #'color' can be used to change the color of the plots.
qplot(data=stats, x=Income.Group, y=Birth.rate, geom='boxplot') #'geom' is the type of plot (box like structures).
      
      

#---------------------more Visualization
qplot(data=stats, x=Internet.users, y=Birth.rate)
qplot(data=stats, x=Internet.users, y=Birth.rate, size=I(4))
qplot(data=stats, x=Internet.users, y=Birth.rate, size=I(4), color=I("red"))
qplot(data=stats, x=Internet.users, y=Birth.rate, size=I(4), color=Income.Group) #color will be divided based on different groups in 'Income.Group' column.

#note:- I() function - changes the class of an object to indicate that it should be treated 'as is'. On example with size, we don't want to map the integer '3', we want to assign it to size. That's why we need to use the I() function.      
