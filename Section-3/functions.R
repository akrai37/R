
#functions

fn1 <-function(rows_no){
  data <- MinutesPlayed[rows_no,,drop=F]  #'rows_no' is a variable that stores value(or values) of selected rows from table
  matplot(t(data),type='b', pch=15:18, col=c(1:4,6))
  legend("bottomleft", inset=0.01, cex=0.75, legend=Players[rows_no], pch=15:18, col=c(1:4,6))  #'cex' is a in-built fn that can be used to adjust size of fonts.   
}

fn1(1)



fn2 <-function(rows_no){
  data <- MinutesPlayed[rows_no,,drop=F]  
  matplot(t(data),type='b', pch=15:18, col=c(1:4,6))  
  legend("bottomleft",inset=0.01, legend=Players[rows_no], pch=15:18, col=c(1:4,6))
}

fn2(1:5)




fn3 <-function(data, rows_no){
  data <- data[rows_no,,drop=F] #'data' here is the variable that will represent a table (any table).  
  matplot(t(data),type='b', pch=15:18, col=c(1:4,6))
  legend("bottomleft",inset=0.01, legend=Players[rows_no], pch=15:18, col=c(1:4,6))
}

fn3(Salary,1:5)



fn4 <-function(data, rows_no,col_no){
  data <- data[rows_no, col_no, drop=F] #'col_no' is a variable that stores value(or values) of selected columns from table.
  matplot(t(data), type='b', pch=15:18, col=c(1:4,6))
  legend("bottomleft", inset=0.01, legend=Players[rows_no], pch=15:18, col=c(1:4,6))
}

fn4(Salary,3:5)




fn5 <-function(data, rows_no, col_no){
  data <- data[rows_no ,col_no ,drop=F]   #'col_no' is a variable that stores value(or values) of selected columns from table
  matplot(t(data), type='b', pch=15:18, col=c(1:4,6))
  legend("bottomleft", inset=0.01,cex=0.75, legend=Players[rows_no], pch=15:18, col=c(1:4,6))
}

fn5(MinutesPlayed/Games,2:5, 5:8) #here 'data' is represented by a table divided by a table. This way is also eligible. 
