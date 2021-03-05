/*  
  All data collecting & importing completely by me, but conservation status data comes from the IUCN Red List. 
*/

SELECT COUNT()
FROM Lemurs
WHERE Population_Trend
NOT IN ("Decreasing");
-- Returns 0. Very sad. Apparently all of the main species of lemur have a population trend of decreasing.

SELECT *
FROM Lemurs
WHERE Area
IN (
  SELECT Area
  FROM Ecosystems_of_Madagascar
  WHERE Climate = "Rainforest";
)

/* 
  The query inside the "IN" parentheses returns a list of areas whose value for the "Climate" column is "Rainforest". 
  The parent query finds and returns lemurs whose area value is one of the areas returned by the "IN" subquery.
*/

