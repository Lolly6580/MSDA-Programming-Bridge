---
title: "Week5Quiz_LaraBurford"
author: "Lara Burford"
date: "Wednesday, July 02, 2014"
output: html_document
---

```{Problem #1 - Creating matrices in R}
> x <- c(1,-1,-1,-1)
> A <- matrix(x,nrow = 2)
> A
     [,1] [,2]
[1,]    1   -1
[2,]   -1   -1
> y <- c(2,-1,3,-2)
> B <- matrix(y,nrow = 2)
> B
     [,1] [,2]
[1,]    2    3
[2,]   -1   -2
> z <- c(1,0,0,0)
> C <- matrix(z,nrow = 2)
> C
     [,1] [,2]
[1,]    1    0
[2,]    0    0
> a <- c(0,1,0,1,0,0,0,0,1)
> D <- matrix(a,nrow = 3)
> D
     [,1] [,2] [,3]
[1,]    0    1    0
[2,]    1    0    0
[3,]    0    0    1
> b <- c(1,0,0,0,0,1,0,1,0)
> E <- matrix(b,nrow = 3)
> E
     [,1] [,2] [,3]
[1,]    1    0    0
[2,]    0    0    1
[3,]    0    1    0
>  
```

```{Problem #2 - idempotent matrices are C, D, & E - proven below}   
> G = A * A
> G
     [,1] [,2]
[1,]    1    1
[2,]    1    1
> H = B * B
> H
     [,1] [,2]
[1,]    4    9
[2,]    1    4
> I = C * C
> I
     [,1] [,2]
[1,]    1    0
[2,]    0    0
> J = D * D
> J
     [,1] [,2] [,3]
[1,]    0    1    0
[2,]    1    0    0
[3,]    0    0    1
> K = E * E
> K
     [,1] [,2] [,3]
[1,]    1    0    0
[2,]    0    0    1
[3,]    0    1    0
> 
```
```{Problem #3 - none of these are orthogonal matrices - proven below}   
> X = A * t(A)
> X
     [,1] [,2]
[1,]    1    1
[2,]    1    1
> Y = B * t(B)
> Y
     [,1] [,2]
[1,]    4   -3
[2,]   -3    4
> Z = C * t(C)
> Z
     [,1] [,2]
[1,]    1    0
[2,]    0    0
> U = D * t(D)
> U
     [,1] [,2] [,3]
[1,]    0    1    0
[2,]    1    0    0
[3,]    0    0    1
> V = E * t(E)
> V
    [,1] [,2] [,3]
[1,]    1    0    0
[2,]    0    0    1
[3,]    0    1    0
> 
```

```{Problem ##4 - creating a list of various items}   
> aVec <- c(1,2,3)
> aMat <- matrix(1:6, nrow = 3)
> aArr <- array(1:12, dim = c(2,3,2))
> aDataf <- data.frame(c(4,5,6),c(7,8,9),c(10,11,12))
> aList <- list(1,2,3)
> comboList <- list(TheVector = aVec,TheMatrix = aMat,TheArray = aArr,TheDataFrame = aDataf,TheList = aList)
> comboList
$TheVector
[1] 1 2 3

$TheMatrix
[,1] [,2]
[1,]    1    4
[2,]    2    5
[3,]    3    6

$TheArray
, , 1

[,1] [,2] [,3]
[1,]    1    3    5
[2,]    2    4    6

, , 2

[,1] [,2] [,3]
[1,]    7    9   11
[2,]    8   10   12


$TheDataFrame
c.4..5..6. c.7..8..9. c.10..11..12.
1          4          7            10
2          5          8            11
3          6          9            12

$TheList
$TheList[[1]]
[1] 1

$TheList[[2]]
[1] 2

$TheList[[3]]
[1] 3

```
