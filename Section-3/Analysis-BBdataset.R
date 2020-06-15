
#function to plot data in 'BasketballData' dataset.

plotBB <-function(data, rows_no= 1:10){  #plotBB is just a variable to represent this function.
  data <- data[rows_no,,drop=F]  #'rows_no' is a variable that stores value(or values) of selected rows from table
  matplot(t(data),type='b', pch=15:18, col=c(1:4,6))
  legend("bottomleft", inset=0.01,cex=0.75, legend=Players[rows_no], pch=15:18, col=c(1:4,6)) #'cex' is a in-built fn that can be used to adjust size of fonts.   
}

plotBB(Games)

#Salary
plotBB(Salary)
plotBB(Salary/ Games)

#In-Games-metrics
plotBB(MinutesPlayed)
plotBB(Points)

#In-Games-metrics-Normalized
plotBB(FieldGoals/Games)
plotBB(FieldGoals/FieldGoalAttempts)
plotBB(FieldGoalAttempts/Games)
plotBB(Points/Games)

#Interesting_Observation
plotBB(MinutesPlayed/Games)
plotBB(Games)

#TIme is valuable
plotBB(FieldGoals/MinutesPlayed)

#Player-Style
plotBB(Points/FieldGoals)


' note:- if matrix entries are in the wrong order then our operations will be wrong as well. 
 We can compare their row names and column names.

> all.equal(rownames(Games), rownames(Points))
[1] TRUE
> all.equal(colnames(Games), colnames(Points))
[1] TRUE

The function all.equal() compares vectors, matrices, data frames and other objects.'

