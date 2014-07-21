---
title: "Week5Assignment.R"
author: "Lara Burford"
date: "Friday, July 04, 2014"
output: html_document
---

Question #1
When working with vectors, dataframes, or lists you can either create the data structure and append values as you go or you 
create the structure at its final size.  Creating the structure at its final size and then filling in the preallocated space 
is a more efficient since it does not require as much time and storage resources as appending.
  
```{Question #1 - illustrating appending and preallocating}
    
{Vector - appended values}
appVec <- c(numeric(1))
appVec
{Output: [1] 0}
appVec <- c(appVec, 1:4)
appVec
{output: [1] 0 1 2 3 4}

{Vector - preallocated values}
preVec <- numeric(5)
preVec
{output: [1] 0 0 0 0 0}
preVec[1] = 0
preVec[2] = 1
preVec[3] = 2
preVec[4] = 3
preVec[5] = 4
preVec
{output: [1] 0 1 2 3 4}
   
{Data Frame - appended values}
appDF <- data.frame(x <- numeric(), y = character())
appDF <- data.frame(x <- numeric(), y <- character())
appDF
{output: [1] x....numeric..   y....character..
          0 rows> (or 0-length row.names)}
appDF <- rbind(appDF,data.frame(x <- 1:10, y <- toString(x)))
appDF
{output: 
   x....1.10              y....toString.x.
1          1 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
2          2 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
3          3 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
4          4 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
5          5 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
6          6 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
7          7 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
8          8 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
9          9 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
10        10 1, 2, 3, 4, 5, 6, 7, 8, 9, 10}

{Data Frame - preallocated values}
preDF <- data.frame(x <- numeric(10), y <- character(10))
preDF
{output:
   x....numeric.10. y....character.10.
1                 0                   
2                 0                   
3                 0                   
4                 0                   
5                 0                   
6                 0                   
7                 0                   
8                 0                   
9                 0                   
10                0         }          

preDF[1] <- 1:10               
preDF[2] <- 1:10
preDF
{Output:
   x....numeric.10. y....character.10.
1                 1                  1
2                 2                  2
3                 3                  3
4                 4                  4
5                 5                  5
6                 6                  6
7                 7                  7
8                 8                  8
9                 9                  9
10               10                 10}

{List - appended values}
appList <- list(as.factor(c(1,2,3)))
appList
{Output:
   [[1]]
[1] 1 2 3
Levels: 1 2 3}

> appList[4] <- c(4)
> appList
{Output:
   [[1]]
[1] 1 2 3
Levels: 1 2 3

[[2]]
NULL

[[3]]
NULL

[[4]]
[1] 4}

{List - preallocated values}  
preList <- list(as.factor(c(numeric(3))), data.frame(x <- numeric(10),y <- numeric(10)), character(10))
preList
{Output:
   [[1]]
[1] 0 0 0
Levels: 0

[[2]]
x....numeric.10. y....numeric.10.
1                 0               0
2                 0               0
3                 0               0
4                 0               0
5                 0               0
6                 0               0
7                 0               0
8                 0               0
9                 0               0
10                0               0

[[3]]
[1] "" "" "" "" "" "" "" "" "" ""}

preList[[1]] <- as.factor(c(1,2,3))
preList[[2]][1] <- 1:10
preList[[2]][2] <- 1:10
preList[[3]] <- toString(1:10)
preList
{Output:
   [[1]]
 [1] 1 2 3
 Levels: 1 2 3
 
 [[2]]
 x....numeric.10. y....numeric.5.
 1                 1               1
 2                 2               2
 3                 3               3
 4                 4               4
 5                 5               5
 6                 6               1
 7                 7               2
 8                 8               3
 9                 9               4
 10               10               5
 
 [[3]]
 [1] "1, 2, 3, 4, 5, 6, 7, 8, 9, 10"}
 

```


```{Question #2 - illustrating how to load the Boston dataset}

x <- require(MASS)
{Output: Loading required package: MASS}
x
{Output: [1] TRUE}
data(Boston)
a <- Boston[1]
b <- Boston[11]
c <- Boston[13]
newBostonDF <- data.frame(a,b,c)
names(newBostonDF)[1] <- "Crime Rate"
names(newBostonDF)[2] <- "Parent-Teacher Ratio"
names(newBostonDF)[3] <- "Low Status Percent"

    
```