
#matplot

FieldGoals

?matplot
matplot(t(FieldGoals), type='b', pch=15:18, col=c(1:4,6)) # we transpose the data because plotting happens with columns.(it is applied in python also)
legend("bottomleft", inset=0.01, legend=Players, pch=15:18, col=c(1:4,6), horiz=F)
#type refers to the type of graph(one dim. or two dim. )
#pch refers to the type of dot in the graph (whether round or circle or star etc.)
#col refers to rhe color of dots and lines.

t(FieldGoals/Games)

matplot(t(FieldGoals/Games),type='b', pch=15:18, col=c(1:4,6))
legend("bottomleft",inset=0.01,legend=Players, pch=15:18, col=c(1:4,6), horiz=F)


matplot(t(FieldGoals/FieldGoalAttempts),type='b', pch=15:18, col=c(1:4,6))
legend("bottomleft",inset=0.01,legend=Players, pch=15:18, col=c(1:4,6), horiz=F)






