myData = read.delim("http://www.cpc.ncep.noaa.gov/data/indices/wksst8110.for", header = FALSE)
##read.delim is useful for reading FORTRAN format



read.fwf(file, widths, header = FALSE, sep = "\t",
         skip = 0, row.names, col.names, n = -1,
         buffersize = 2000, fileEncoding = "", …)
##read.fwf is useful for fixed width format


url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fwksst8110.for"
lines <- readLines(url, n = 10)
w <- c(1, 9, 5, 4, 1, 3, 5, 4, 1, 3, 5, 4, 1, 3, 5, 4, 1, 3) ##distributing the letters in string by allocating the width as per pattern shown by fwf
colNames <- c("filler", "week", "filler", "sstNino12", "filler", "sstaNino12", 
              "filler", "sstNino3", "filler", "sstaNino3", "filler", "sstNino34", "filler", 
              "sstaNino34", "filler", "sstNino4", "filler", "sstaNino4") ##allocating name to each distribtion or column
d <- read.fwf(url, w, header = FALSE, skip = 4, col.names = colNames) ##Skipping text
d <- d[, grep("^[^filler]", names(d))] ##keeping non filler "[^filler]" columns
sum(d[, 4])