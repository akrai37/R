

movies <-read.csv(file.choose())
head(movies)
colnames(movies)<- c("Film", "Genre", "CriticRating", "AudienceRating", "BudgetMillions", "Year")
head(movies)
tail(movies)
str(movies)
summary(movies)

library(ggplot2)

#---------------------------Coordinates

m <- ggplot(data=movies, aes(x=CriticRating, y=AudienceRating,size=BudgetMillions,
                            color=Genre)) #In 'ggplot()' , 'color' represents color of the dots.(in histogram, it represents color of boundary)
m + geom_point()

#displaying only one part of the graph through xlim() and ylim() that intake coordinates.
m + geom_point()+xlim(50,100)+
  ylim(50,100)


#-----------using it on histogram.(Note:- in histogram ,'fill' represents the 'color' of the bars and 'color' represents color of the boundary of bars)
n <- ggplot(data=movies, aes(x=BudgetMillions))
n + geom_histogram(binwidth=10, aes(fill=Genre), color="Black") 

n + geom_histogram(binwidth=10, aes(fill=Genre), color="Black") + ylim(0,50) # there is a problem here, some data got removed from top. Below method fixes that.
# This is because ggplot2 provides a little bit of padding when it preforms graphing. This helps the user understand what is past the boundaries of the graph and makes the graph aesthetically pleasing.

#we are going to use a zoom method.
n + geom_histogram(binwidth=10, aes(fill=Genre), color= "Black")+ coord_cartesian(ylim= c(0,50)) #coord_cartesian() gives the exact zoom display of the graph.

#using it on facet_grid()
w + geom_point(aes(size=BudgetMillions)) + geom_smooth() +
  facet_grid(Genre~Year) + coord_cartesian(ylim=c(0,100))

#note:- Regarding geom_smooth, the grey area is the confidence interval. By default, the confidence interval is 95%. The grey band tells us that if we were to make a linear model, 95% of the time it would fit inside the grey band.


