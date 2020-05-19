x<-rnorm(5)
x

for(i in x){
  print(i)
}

print(x[1])
print(x[2])
print(x[3])
print(x[4])
print(x[5])

#conventional programming loop
for(j in 1:5){
  print(x[j])
}


#-----------------------------------2nd part

N <-100

a <-rnorm(N)
b <-rnorm(N)


#vectorised approach
c <-a * b


#de-vectorised approach
d<-rep(NA,N)
for(i in 1:N){
  d[i] <-a[i]*b[i]
}

#de-vectorisation basically means that we are preallocating the memory for the task. 
#It increases the time complexity, but in R , it is opposite.
#Vectorised vectors are faster than devectorised ones because it is a high level language.
#due to which a lot of computations happen in the background.












