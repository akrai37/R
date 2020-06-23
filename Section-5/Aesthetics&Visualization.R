
#install.packages("ggplot2")
library(ggplot2)
#??ggplot
#install.packages("tidyverse")




movies <-read.csv(file.choose())
head(movies)
colnames(movies)<- c("Film", "Genre", "CriticRating", "AudienceRating", "BudgetMillions", "Year")
head(movies)
tail(movies)
str(movies)
summary(movies)

factor(movies$Year)
movies$Year <-factor(movies$Year)#"factor" and "as.factor" are almost same. They basically do the same job.

summary(movies)
str(movies)


#-------------------------------aesthetics
#install.packages('ggplot2')
#library(ggplot2)
#?ggplot
ggplot(data=movies,aes(x=CriticRating, y=AudienceRating))# 'aes' tells which data is gonna be used for axises.

#add geometry
ggplot(data=movies,aes(x=CriticRating, y=AudienceRating))+ geom_point() #'geom_plot' is used to plot the data. Without it, graph will be empty.       

#add colour
ggplot(data=movies,aes(x=CriticRating, y=AudienceRating,color=Genre))+ geom_point()

#add size
ggplot(data=movies,aes(x=CriticRating, y=AudienceRating,color=Genre, size=Genre))+ geom_point()

#add size-better way
ggplot(data=movies,aes(x=CriticRating, y=AudienceRating,color=Genre, size=BudgetMillions))+ geom_point()



#------------------Plotting with Layers
p <-ggplot(data=movies,aes(x=CriticRating, y=AudienceRating,color=Genre, size=BudgetMillions))

#Point
p +geom_point()

#lines
p+geom_line() #creates a graph with lines rather than dots.

#multiple Layers
p+geom_point()+geom_line() #graph with both dots and lines but lines will overlap dots.
p+geom_line()+geom_point() #graph with both dots and lines but dots will overlap lines.



#---------------------------overriding aesthetics

q <- ggplot(data=movies, aes(x=CriticRating, y=AudienceRating,color=Genre
                             ,size=BudgetMillions))

#add geom layer
q+ geom_point()

#overriding aes
#ex1
q + geom_point(aes(size=CriticRating)) #the 'size' will be overridden. Remember, q will be the same, we are not changing q . 

#ex2
q + geom_point(aes(color=BudgetMillions)) #the 'color' will be overridden.

#ex3
q + geom_point(aes(x=BudgetMillions)) + xlab('BudgetMillions $') #if we are overriding coordinates, then we have to specifically name the coordinates names through 'xlab' and 'ylab'.

#ex4
q + geom_point(aes(x=BudgetMillions)) + xlab('BudgetMillions $')+  labs(color="BudgetMillions") #'labs' can be used to change the name of legend because aesthetic does not override the legend label.      

#ex5
#reduce line size
q + geom_line(size=1) + geom_point() #here, we didnt use "aes" fn to override a value. (It is related to 'mapping' and 'setting')











