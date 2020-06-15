
firstvector<- c(20, 3, 45, 732)
firstvector
is.numeric(firstvector)
is.integer(firstvector) # it is FALSE because all the numeric values are stored as double in R.
is.double(firstvector)


V2<- c(12L, 28L, 56L, 91L)
V2
is.numeric(V2)
is.integer(V2) 
is.double(V2)

V3<- c("a","843","Hello",7) #it will consider 7 as character automatically
is.character(V3)
is.numeric(V3)


seq() #sequence - ':'
rep() #replicate

seq(1,15) 
1:15
x<- seq(1,15,2)
x
y<- seq(1,15,4)
y

rep(3,50)
rep("a",6)

k<- c(24,52)
h<-rep(k,10)





