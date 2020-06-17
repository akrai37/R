
#Import the data

?read.csv

#Method 1: Select the file manually

stats <-read.csv(file.choose(),stringsAsFactors = TRUE)
stats


#Method 2: Set Working Directory and read data

getwd() #gives thhe address of current directory

#changing the current directory-
#windows:-                                          
setwd("C:\\Users\\Ankush\\Documents\\R\\Section-4") #allows to change the current directory
getwd()

rm(stats)
stats <-read.csv('DemographicData.csv',stringsAsFactors = True) #this one having some problems
stats




#------------------------------Exploring Data

stats
nrow(stats)
ncol(stats)
head(stats, n=10) #gives the initial 'n' no. of values from the dataset.
tail(stats, n=8)  #gives the last 'n' no. of values from the dataset.
str(stats)  #'str' is the structure here, not string.                             
summary(stats) #gives the summary of the dataset.                                           




#-------------------using the $sign.

stats
head(stats)
stats[3,3]#OR :-
stats[3,'Birth.rate'] #note:- to mention the row, we will always use numbers like 1,2,3 etc. and NOT the name of the row.

stats$Internet.users #will return the whole column Internet.users.
stats[ ,'Internet.users'] #same as above

stats$Internet.users[2] 

levels(stats$Income.Group) #'level' is a function showing the levels that the column 'Income.Group' has. 
#Unfortunately,it didnt detect the levels here and gave the value NULL.










