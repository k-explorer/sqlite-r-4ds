library(DBI)
library(RSQLite)
library(tidyverse)

Programming = dbConnect(RSQLite::SQLite(), "Programming.sqlite")
fullDB = dbFetch(dbSendQuery(Programming, "SELECT * FROM Programming"))

plot = ggplot(fullDB, aes(x=Type)) + geom_bar() + labs(title="Programming Languages' Types")
print(plot)