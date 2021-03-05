-- kaggle.com/nasa/astronaut-yearbook for the original data and github.com/pamelafox for porting it to SQL.
-- I uploaded the SQL data to SQLite, and learnt some very interesting information from the results of a few queries.

SELECT COUNT() AS Number
FROM Astronauts
WHERE Gender = "Male";
-- Result is 307

SELECT COUNT() AS Number
FROM Astronauts
WHERE Gender = "Female";
-- Result is 50.
/*
  Difference between number of male and female astronauts is because NASA usually only hired test pilots,
  and women could not easily get advanced training and a pilot's license at the time.
*/
