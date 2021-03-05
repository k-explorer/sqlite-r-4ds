-- !preview conn=con

SELECT COUNT() AS Number
FROM Programming
WHERE Type = "Compiled";
-- Unsurprisingly, returns a large number: 21


SELECT COUNT() AS Number
FROM Programming
WHERE Type = "Interpreted";

-- Huh? 6?