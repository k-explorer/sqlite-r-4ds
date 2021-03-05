library(DBI)
library(RSQLite)
library(tidyverse)

Dinosaurs = dbConnect(RSQLite::SQLite(), "Dinosaurs.sqlite")
fullDB = dbFetch(dbSendQuery(Dinosaurs, "SELECT * FROM Dinosaurs"))

period = ggplot(fullDB, aes(x=Period)) + geom_bar() + labs(title = "When Dinosaurs Lived")

print(period)