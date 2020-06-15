#Named Matrix

Charlie <-1:5
Charlie

#give names
names(Charlie) <- c("a","b","c","d","e") #assigning the name to the values.
Charlie
Charlie["d"]
names(Charlie)
                                                         
#clear names
names(Charlie)<- NULL
names(Charlie)

#naming Matrix dimensions 1
dim.1 <- rep(c("a","b","zZ"), times=3)


dim.1 <- rep(c("a","b","zZ"), each=3)
dim.1

Bravo <- matrix(dim.1, 3, 3)
Bravo

rownames(Bravo) <-c("how","are","you?")
Bravo

colnames(Bravo) <-c("X","Y","Z")
Bravo["are","Y"] <- 0 # if I have to change the value of coordinates. 
Bravo                                                     

rownames(Bravo)<-NULL   

Bravo <- Bravo[, c(-3)] #This method is used to delete particular rows or columns.    
Bravo


colnames(Bravo)<- NULL
Bravo
colnames(Bravo)<-c('a','b','c')
Bravo

#IP-We can use colnames() to change the column names.If we want to change the second column from B to D it might look a little like this.
#colnames(df)[2] <- "D"





