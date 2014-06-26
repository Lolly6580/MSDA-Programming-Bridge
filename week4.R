>
> # demonstrates assigning variables 3 different ways - Question #1
>
> x <- 3
> x
[1] 3
> y = 3
> y
[1] 3
> assign("z", 3)
> z
[1] 3
> 
>
> # demonstrates using sum() and is.na() to count missing data - Question #2
>
> z <- c(1,2,NA,3,NA,4,5,NA,6,NA,NA,7,8,9,NA)
> z
 [1]  1  2 NA  3 NA  4  5 NA  6 NA NA  7  8  9 NA
> x <- sum(is.na(z))
> x
[1] 6
> 
>
> # demonstrates difference between require() and library() - Question #3
>
> # It is really just a matter of preference which to use.  If you are writing a function that can't 
> # proceed unless a package is loaded successfully, then you might use require() with an if
> # statement that only allows the program to continue if the package loads
>
> # require() returns a value of "TRUE" if the package is successfully loaded
> x <- require(devtools)
> x
[1] TRUE
>
> # library() still loads the package, but it does not return a value of True or False 
> y <- library(devtools)
> y
[1] "devtools"  "stats"     "graphics"  "grDevices" "utils"    
[6] "datasets"  "methods"   "base"     
> 
