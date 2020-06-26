
movies <-read.csv(file.choose())
head(movies)
colnames(movies)<- c("Film", "Genre", "CriticRating", "AudienceRating", "BudgetMillions", "Year")
head(movies)
tail(movies)
str(movies)
summary(movies)

library(ggplot2)


#----------------------------Themes

o <- ggplot(data=movies, aes(x=BudgetMillions))
h <- o + geom_histogram(binwidth=10, aes(fill=Genre), color='Black')
h

#axes label

h + 
  xlab("Money Axis") + ylab("Number of movies") #xlab() and ylab() give the names to the axes.

#label Formatting
h + 
  xlab("Money Axis") + ylab("Number of movies") +
  theme(axis.title.x =element_text(color="Darkgreen", size=30), # 'element_text' defines necessary information like color and size of text.
        axis.title.y =element_text(color="Red", size=30))
#the above 2 lines in the theme define the title of both the axes.

#tick mark formatting
h +
  xlab("Money Axis")+ ylab("Number of movies") +
  theme(axis.title.x =element_text(color="Darkgreen", size=30),
        axis.title.y =element_text(color="Red", size=30),
        axis.text.x= element_text(size=20),
        axis.text.y= element_text(size=20))
#the 3rd and 4th lines of theme provide the ticks on the values that are on the axes just for clear view (not much of use).    

#legend formatting
h +
  xlab("Money Axis")+ ylab("Number of movies") +
  theme(axis.title.x =element_text(color="Darkgreen", size=30),
        axis.title.y =element_text(color="Red", size=30),
        axis.text.x= element_text(size=20),
        axis.text.y= element_text(size=20),          
        
        legend.title=element_text(size=30),
        legend.text=element_text(size=20),
        legend.position=c(1,1), #c(1,1) is the top left position. Just like in the quadrant based graph.
        legend.justification = c(1,1)) #even the quadrants have quadrants. Here, the legend is placed at the top left corner of the first quadrant.

#title 
h + 
  xlab("Money Axis") + ylab("Number of movies") +
  ggtitle("Movie of Budget Distribution") + #gives the title to the graph
  theme(axis.title.x=element_text(color="Darkgreen", size=30),
        axis.title.y=element_text(color="Red", size=30),
        axis.text.x= element_text(size=30),
        axis.text.y=element_text(size=30),
        
        legend.title=element_text(size=20),
        legend.text=element_text(size=15),
        legend.position = c(1,1),
        legend.justification =c(1,1),
        
        plot.title=element_text(color="DarkBlue", size=40, family="Courier", hjust=0.5)
        ) #this line gives theme to the title. 'family' is the text type. 'hjust' helps in adjusting the alignment of title.




















