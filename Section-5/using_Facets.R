

movies <-read.csv(file.choose())
head(movies)
colnames(movies)<- c("Film", "Genre", "CriticRating", "AudienceRating", "BudgetMillions", "Year")
head(movies)
tail(movies)
str(movies)
summary(movies)

library(ggplot2)

#-----------------------Using Facets

v <-ggplot(data=movies, aes(x=BudgetMillions))
v + geom_histogram(binwidth=10, aes(fill=Genre), color="Black")

??facet_grid
#using facets on above.
v + geom_histogram(binwidth= 10, aes(fill=Genre), color="Black") +
facet_grid(Genre~., scales="free") #facet_grid() can be used to divide the graph into different segments based on one or more category. 
#Here the histogram is divided into 7 separate parts because there are 7 different Genre.


#scatterplots:
w <- ggplot(data=movies, aes(x=CriticRating, y=AudienceRating, color=Genre))
w + geom_point(size=3)

#using facets on above code:
w + geom_point(size=2)+
  facet_grid(Genre~.)

w + geom_point(size=2)+
  facet_grid(.~Year)

w + geom_point(size=2)+
  facet_grid(Genre~Year) # this code can be used to divide the graph based on 2 categories. Have a look at graph.


w + geom_point(size=2) + geom_smooth() +               
  facet_grid(Genre~Year) 

w + geom_point(aes(size=BudgetMillions)) + geom_smooth() +
  facet_grid(Genre~Year) # here ,we have added another feature. We have used 'BudgetMillions' as an aesthetic to describe the size.



