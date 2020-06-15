
# creating matrices through different functions.
# a matrix is a collection of vectors with values of only one data type unlike table that can have any values in between.


#matrix()
?matrix

my.data<-1:20
my.data

A<-matrix(my.data,4,5)
A
A[2,3]

B <-matrix(my.data, 4, 5, byrow=T)
B
B[2,4]


#rbind()
r1 <-c("I","am","playing")
r2 <-c("You","are","good")
r3 <-c(1,2,3)

C<-rbind(r1,r2,r3)
C


#cbind()

a1 <- 1:20
a2 <- -1:-20

D<- cbind(a1,a2)
D



