If you're not familiar with inverting matrices, here's a quick way to check your answers:
Online Matrix Calculator available here:  http://www.bluebit.gr/matrix-calculator/calculate.aspx
Make sure to select the "matrix inverse" checkbox before solving & select your delimiter (I used a comma)
Example output:
4,3
1,2
yield:
-.5, 1.5
1.0, -2

I found this posted on-line to test the code:
> m <- makeCacheMatrix()
> m$set(matrix(c(4,3,2,1),2,2))
> m$get()
[,1] [,2]
[1,]    1    0
[2,]    0    1
> cacheSolve(m)
[,1] [,2]
[1,]    1    0
[2,]    0    1
> cacheSolve(m)
# solves for cacehed data
