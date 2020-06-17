
#--------------------------------Basic operations with Data-Frame,very similar to matrix.

stats[1:10, ]#subsetting
stats[ ,1:3]
stats[c(4,101), ]


#Remember how the [] works:-

stats[1, ] #it is returning a dataframe and not a vector without using drop fn. Apparently, it is only needed for column and not for a row in Dataframe.
is.data.frame(stats[1, ]) #checking if it is a dataframe or not. It is.
is.data.frame(stats[ ,1]) #checking if it is a dataframe or not. It is not.
is.data.frame(stats[ ,1, drop=F]) #checking if it is a dataframe or not. It is now after using drop fn.

#multiplication of  columns
stats$Birth.rate * stats$Internet.users

#addition of columns
stats$Birth.rate + stats$Internet.users

#adding new columns in the dataset
stats$cal= stats$Birth.rate * stats$Internet.users 
stats

#test of knowledge

stats$xyz=1:5 #the values are gonna be repeated till the end .
#But remember, the number can only be a multiply of total rows present in the dataset. here , it is 195/5= a whole number.
stats
head(stats, n=10)


#remove a column
stats$cal <-NULL
stats$xyz <-NULL
head(stats)


#Q. Without looking at the dataframe if want to get the Birth rate for Argentina, How do I get that value
stats$country.name=='Argentina'
stats$Birth.rate[stats$Country.Name == "Argentina"] 

#note:- we can use dim() fn to count the no. of rows and columns.

