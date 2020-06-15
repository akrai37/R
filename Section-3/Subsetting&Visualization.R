
#SUBSETTINGS

x<-c("a","b","c","d","e")
x

x[c(1,5)]
x

Games
Games[1:3,6:10]
Games[c(1,10),]
Games[,c("2008","2012")]

Games[1, ] #Row name is missing because R thinks it a vector.
Games[1,5]

is.matrix(Games[1, ])
is.vector(Games[1, ])

Games[1,,drop=F] #drop will tell R to consider this object as a matrix.
Games[1,5, drop=F]

#Q.How can we extract 1st and 3rd row and  only 4th and 5th column information from the matrix.
Games[c(1,3), 4:5]



#VISUALIZING SUBSETS                                   

Data<- MinutesPlayed[1,,drop=F]
matplot(t(Data), type='b',pch=15:18, col=c(1:4,6),xaxt='n') # 'xaxt=n' means that there will no column names mentioned in the plot graph.                  
legend("bottomleft",inset=0.01, legend=Players[1] , pch=15:18, col=c(1:4,6), horiz=F)
axis(1,labels=colnames(MinutesPlayed), at=1:10)# it is use to name the axises(whether row or column names)


Data<- MinutesPlayed[1:3,]
matplot(t(Data), type='b',pch=15:18, col=c(1:4,6))     
legend("bottomleft",inset=0.01, legend=Players[1:3] , pch=15:18, col=c(1:4,6), horiz=F)






