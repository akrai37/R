
library(ggplot2)

#-----------------Starting Layer Tips

t<- ggplot(data=movies, aes(x=AudienceRating))
t + geom_histogram( binwidth=10, fill="White", color='Blue')

#another way: (It will give more flexibility)           
t<-ggplot(data=movies)
t+ geom_histogram(aes(x=AudienceRating), binwidth=10,fill="white", color="BLue")
#OR
t+ geom_histogram(aes(x=CriticRating), binwidth=10,fill="white", color="BLue")

#an empty plot
t<- ggplot()




#---------------------------------Statistical Transformation

?geom_smooth #describes the pattern in the graph

u<- ggplot(data=movies, aes(x=CriticRating, y=AudienceRating, color=Genre))
u + geom_point()+ geom_smooth()
u + geom_point()+ geom_smooth(fill=NA) #won't allow extra shades.

#Boxplots
u<- ggplot(data=movies, aes(x=Genre, y=AudienceRating, color=Genre))
u+ geom_boxplot()
u+ geom_boxplot(size=1.2) 
u+ geom_boxplot(size=1.2)+ geom_point()
u+ geom_boxplot(size=1.1)+ geom_jitter() # #gives both boxplot and datapoints together.
#Note:- geom_jitter are the points RANDOMLY arranged (in the width direction, in the x-axis).They are not exact points but something close. geom_jitter() gives an idea of the distribution of data. 

#or
u+ geom_jitter()+ geom_boxplot(size=1.1, alpha=0.5) # representation of boxes being partially placed on dots OR datapoints.(alpha makes the overlapping less opaque).

#another ex.
u<- ggplot(data=movies, aes(x=CriticRating, y=AudienceRating, color=Genre))
u+ geom_boxplot()
u+ geom_boxplot(size=1.2)
u+ geom_boxplot(size=1.2)+ geom_point()
u+ geom_jitter()+ geom_boxplot(size=1.1, alpha=0.5) 

# geom_point() is a function that will produce points with given coordinate values. 
#geom_jitter() is a function that will produce points with given coordinates that do not overlap and will randomly distribute near a given coordinate if over lapping.

#Q.How do i segregate any one Genre and plot it? Using boxplot or geom point.




