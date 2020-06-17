

#----------------------------------------Filtering Data-Frames

head(stats) 
filter<-stats$Internet.users < 2 #it will return TRUE/FALSE values according to the conditions in the 'Internet.users' columns that will be stored in the object filter.
filter
stats[filter,] #it will return all the rows and columns of the dataset that have TRUE conditions.

stats[stats$Birth.rate > 40, ] # the reason we use 2 'stats' here because we need all the dataset values that are TRUE to the conditions and not just TRUE/FALSE values. We can also assign a variable to this.
stats[stats$Birth.rate > 40 & stats$Internet.users, ]
stats[stats$Income.Group=='High income', ]
levels(stats$Income.Group)

stats$Country.Name=='Malta' # will return all 195 values with TRUE/FALSE accordingly.
stats[stats$Country.Name=='Malta', ] #will return only the value(s) in which the column 'Column.Name' is equal to 'Malta'.

