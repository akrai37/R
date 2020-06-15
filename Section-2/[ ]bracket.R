
x<- c(12,34,657,324) #combine
y<- seq(201,250,11) #seq
z<- rep("qw",14) #replication

w<- c("a","b","c","d","e")
w[1]
w[2]
w[3]
w[-1] # '-' means including everything except the character in that position.
w[1:3]
w[-3:-5] # the characters in this range wont be included.
w[c(1,3,5)]
w[c(-2,-4)]
w[1,3,5] # error-incorrect no. of dimensions.
