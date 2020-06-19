
#-------------------------Merging Data Frames

head(stats)
head(mydf)

merged <- merge(stats, mydf ,by.x="Country.Code", by.y="Codes") #'by.x' and 'by.y' represent the common columns to join. Just like in SQL.          
head(merged)

merged$Country <-NULL
str(merged)
tail(merged)

colnames(merged)[2] <-"desh"
str(merged)
tail(merged)


#------------------------Visualization with new split

qplot(data=merged, x=Internet.users, y=Birth.rate)
qplot(data=merged, x=Internet.users, y=Birth.rate,color=Regions)

#1.Shapes
qplot(data=merged, x=Internet.users, y=Birth.rate, color=Regions, size=I(3),shape=I(17))

#2.Transparency
qplot(data=merged, x=Internet.users, y=Birth.rate ,color=Regions, size=I(4), shape=I(19),
      alpha=0.6)

#3.Title and name change of axis.
qplot(data=merged, x=Internet.users, y=Birth.rate ,color=Regions, size=I(4), shape=I(19),
      alpha=0.6, main="Birthrate vs Internet_Users",xlab='Interent_Users',ylab='Birth_rate')






