## EXERCICI 1
SELECT count(flightID)
FROM flights;

## EXERCICI 2
SELECT origin, avg(ArrDelay) as "sortida", avg(DepDelay) as "arribada"
FROM flights
GROUP BY origin;

## EXERCICI 3
SELECT origin, colYear, colMonth, AVG(ArrDelay)
FROM flights
GROUP BY origin, colYear, colMonth
ORDER BY origin, colYear, colMonth;

## EXERCICI 4
SELECT a.city, f.colYear, f.colMonth, AVG(f.ArrDelay)
FROM usairports a, flights f
WHERE f.origin = a.IATA
GROUP BY origin, colYear, colMonth
ORDER BY origin, colYear, colMonth;

## EXERCICI 5
SELECT UniqueCarrier, colYear, colMonth, SUM(cancelled)
FROM flights
GROUP BY UniqueCarrier, colYear, colMonth
ORDER BY sum(cancelled) DESC;

## EXERCICI 6
SELECT TailNum, SUM(distance)
FROM flights
WHERE TailNum != "Null"
GROUP BY TailNum
ORDER BY SUM(distance) DESC
LIMIT 10;

## EXERCICI 7
SELECT UniqueCarrier, AVG(ArrDelay)
FROM flights
GROUP BY UniqueCarrier
HAVING AVG(ArrDelay) > 10
ORDER BY AVG(ArrDelay) DESC;