library(DBI)
library(RSQLite)
library(tidyverse)

Lemurs = dbConnect(RSQLite::SQLite(), "Lemurs.sqlite")
fullDB = dbFetch(dbSendQuery(Lemurs, "SELECT * FROM Lemurs"))

plot = ggplot(fullDB, aes(x=IUCN_Category)) + geom_bar() + labs(title="Lemurs' IUCN Category")
print(plot)