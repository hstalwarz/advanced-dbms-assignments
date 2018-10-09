


/* Query 3a */
SELECT * FROM "Track" WHERE "Composer" = 'Angus Young, Malcolm Young, Brian Johnson'

/* Query 3b */
SELECT "Track"."Name", "Genre"."Name"
FROM "Track" JOIN "Genre"
ON "Track"."GenreId" = "Genre"."GenreId"

/* Query 3c */
SELECT "T"."Genre Name", Avg("T"."UnitPrice") As "AvgUnitPrice"
FROM
(SELECT "Track"."Name" as "Track Name", "Genre"."Name" as "Genre Name", "Track"."UnitPrice", "Track"."Milliseconds"
FROM "Track" JOIN "Genre"
ON "Track"."GenreId" = "Genre"."GenreId") as "T"
Where "T"."Milliseconds" > 800000
GROUP BY
"Genre Name"
ORDER BY "Genre Name"
