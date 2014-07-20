##imports simplecharter.sqlite into R data frame
setwd("/Users/Lara/Downloads")
require(RSQLite)
simpleCharter <- "simplecharter.sqlite"
dbcon <- dbConnect(dbDriver("SQLite"),simpleCharter)
allchartersTable <- dbReadTable(dbcon,"allcharters")
bookingsTable <- dbReadTable(dbcon,"bookings")
captainsTable <- dbReadTable(dbcon,"captains")
shipsTable <- dbReadTable(dbcon,"ships")
dbDisconnect(dbcon)

##exports Boston data frame to SQLite database file
setwd("/Users/Lara/Downloads")
require(MASS)
require(RSQLite)
newDatabase <- "Boston.sqlite"
dbcon <- dbConnect(dbDriver("SQLite"),dbname = newDatabase)
dbWriteTable(dbcon, "Boston", Boston)
dbDisconnect(dbcon)