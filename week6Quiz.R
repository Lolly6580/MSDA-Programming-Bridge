##reads pizzaData csv from hard drive
> pizzaData <- read.table("C:/pizza-store-data.csv", header = TRUE, sep = ",")
##column 1 includes the date field (datatype Factor) for each day in the year 2013
##column 2 includes the store field (datatype Factor) for each of the 4 store locations
##column 3 includes the pizza field (datatype int) which indicates how many pizzas were sold by each store on each date
##column 4 includes the customers field (datatype int) which indicates how many customers each store had on each date
> summary(pizzaData)
date                 store         pizzas        customers    
2013-01-01:   4   Cork Street   :365   Min.   :  0.0   Min.   :  0.0  
2013-01-02:   4   Stadium Drive :365   1st Qu.:181.8   1st Qu.:148.0  
2013-01-03:   4   West Main     :365   Median :215.0   Median :182.0  
2013-01-04:   4   Westnedge Hill:365   Mean   :227.1   Mean   :189.2  
2013-01-05:   4                        3rd Qu.:285.0   3rd Qu.:228.2  
2013-01-06:   4                        Max.   :417.0   Max.   :389.0  
(Other)   :1436                                                       
> 