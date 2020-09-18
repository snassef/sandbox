#how to upload local file that is too big to store in memory 

setwd("~/Documents/GitHub/sandbox/training")

library(civis) #calling in civis library

options(civis.default_db = "redshift-general")

write_civis("ppp.csv", tablename="scratch.ppp", if_exists = "drop")

