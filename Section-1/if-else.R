
#the difference between 'if' and 'while' statements is in 'if' statement, condition is applied only once 
# and in 'while' statement , all the conditions are applied till the condition becomes false.

#=== -2 === -1 === 0 === 1 === 2 

rm(answer)
x<-rnorm(1)

if(x>1){
  answer<- "answer is greater than 1"
} else{
  
      if(x>=-1){
        answer<- "answer is equal to 1"
      } 
      else{
        answer<- "answer is less than -1"
      }
  }

