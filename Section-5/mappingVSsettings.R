
#-----------------------------Mapping vs Setting

r<-ggplot(data=movies, aes(x=CriticRating, y=AudienceRating))
r+geom_point()


#add color
# 1.Mapping(what we have done so far):
r + geom_point(aes(color=Genre))
# 2.Setting:
r + geom_point(color="darkgreen")
#ERROR:
r + geom_point(aes(color="darkgreen"))


#Mapping
r + geom_point(aes(size=BudgetMillions))
#Setting
r + geom_point(size=10)
#ERROR:
r + geom_point(aes(size=10))

#Note:-
#First, we need to understand that any aesthetic in ggplot2 (such as colour, size, shape, etc.) can be used in two distinct ways in your plots:
#Option 1 - you can use the aesthetic to reflect some properties of your data. For example, clarity of the diamonds, like we did in the first example. This is called MAPPING an aesthetic.
#Option 2 - you can choose a certain value for an aesthetic. For example, make the colour blue for ALL points or make the shape a square for ALL points. This is called SETTING an aesthetic and the keyword here is ALL.


