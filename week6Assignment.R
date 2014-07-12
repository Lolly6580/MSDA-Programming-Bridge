##http://"http://www.ssa.gov/oact/babynames/limits.html"
> install.packages('XML')
> require(XML)
> theURL <- "http://www.ssa.gov/oact/babynames/limits.html"
> babyNames <- readHTMLTable(theURL, which = 1, header = TRUE, stringsAsFactors = FALSE)
> babyNames
Year ofbirth  Male Female Total
1          2013 78.91  67.34 73.26
2          2012 78.60  66.81 72.84
3          2011 78.76  66.89 72.97
4          2010 78.69  66.75 72.86
5          2009 79.02  66.85 73.08
6          2008 79.51  67.24 73.51
7          2007 80.10  67.74 74.06
8          2006 80.63  68.48 74.70
9          2005 81.34  69.40 75.51
10         2004 81.70  69.81 75.90
