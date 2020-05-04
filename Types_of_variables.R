mydata <- read.csv(file.choose())
install.packages("ggplot2")

ggplot(data=mydata[mydata$carat  <2.5,], aes(x=carat,y=price,color=clarity))+
geom_point(alpha=0.1)+ geom_smooth()

#integer
x<-2L
typeof(x)

#double
y<-2.5
typeof(y)

#complex
z<-3+2i
typeof(z)

#character
q1<-"h"
typeof(q1)

#logical
f<-T
typeof(f)
e<-FALSE
typeof(e)

