
library(civis)
library(dplyr)

options(civis.default_db = "redshift-general")

query <- "SELECT * FROM scratch.ppp"

data <- read_civis(sql(query))

agg <- data %>% group_by(State) %>% count()

write_civis(agg, tablename = "scratch.ppp_count", if_exists = "drop")
