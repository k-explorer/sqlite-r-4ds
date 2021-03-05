library(DBI)
library(RSQLite)
library(tidyverse)

Astronauts = dbConnect(RSQLite::SQLite(), "Astronauts.sqlite")
fullDB = dbFetch(dbSendQuery(Astronauts, "SELECT * FROM Astronauts"))

plot = ggplot(fullDB, aes(x=Gender)) + geom_bar() + labs(title="NASA Astronauts' Genders")
print(plot)