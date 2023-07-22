-- #prods whose name begins with a 'p' and are less than $300.00.
SELECT COUNT(*) FROM Product
WHERE PName LIKE ‘p%’
AND (Price<300);

-- Names of the products stocked in "d2".
-- without in/not in
SELECT P.PName
FROM Product P, Stock S WHERE P.ProdId=S.ProdId
AND S.DepId=’d2’;

-- with in/not in
SELECT P.PName FROM Product P WHERE P.ProdId IN
(SELECT S.ProdId FROM Stock S WHERE S.DepId=’d2’);

-- #prod and names of the products that are out of stock (quantity <= 0).
-- without in/not in
SELECT P.ProdId, P.PName FROM Product P, Stock S WHERE P.ProdId=S.ProdID
AND S.Quantity <=0;

-- with in/not in
SELECT P.ProdId, P.PName FROM Product P
WHERE P.ProdId IN
(SELECT S.ProdId FROM Stock S
WHERE S.Quantity <=0);

-- Addresses of the depots where the product "p1" is stocked.
-- without exists/not exists and without in/not in
SELECT D.Addr
FROM Depot D, Stock S WHERE D.DepId=S.DepId
AND S.ProdId=’p1’ AND S.Quantity>0;

-- with in/not in
SELECT D.Addr FROM Depot D WHERE D.DepId IN
(SELECT S.DepId FROM Stock S WHERE S.ProdId=’p1’
AND S.Quantity >0);

-- with exists/not exists
SELECT D.Addr FROM Depot D WHERE EXISTS
(SELECT S.DepId
FROM Stock S
WHERE S.DepId=D.DepId
AND S.ProdId='p1' AND S.Quantity >0);

-- #prods whose price is between $250.00 and $400.00.
-- using intersect.
(SELECT DISTINCT(S.ProdId) FROM Product P, Stock S WHERE P.ProdId=S.ProdId
AND P.Price >=250) UNION
(SELECT DISTINCT(P.ProdId) FROM Product P, Stock S WHERE P.Price <=400
AND P.Price >=250);

-- without intersect.
SELECT DISTINCT(P.ProdId) FROM Product P, Stock S WHERE P.ProdId=S.ProdId
AND P.Price >=250 AND P.Price <=400;

-- Number of products that are out of stock (quantity <= 0).
SELECT COUNT(ProdId) FROM Stock
WHERE Quantity <=0;

-- Average of the prices of the products stocked in the "d2" depot.
SELECT AVG(P.Price) FROM Product P, Stock S WHERE P.ProdId IN
(SELECT S.ProdId FROM Stock S WHERE S.DepId=’d2’
AND S.Quantity >0);

-- #deps of the depot(s) with the largest capacity (volume).
SELECT DepId
FROM Depot
WHERE Volume >= (SELECT MAX(Volume)
FROM Depot);

-- Sum of the stocked quantity of each product.
SELECT SUM(Quantity) FROM Stock
GROUP BY ProdId;

-- 10. Products names stocked in at least 3 depots.
-- using count
SELECT P.PName
FROM Product P, Stock S WHERE P.ProdId=S.ProdId
AND S.Quantity >0
GROUP BY P.PName
HAVING COUNT(S.DepId) >=3;

-- without using count
SELECT DISTINCT(P.PName) FROM Product P, Stock S WHERE P.ProdId IN
(SELECT DISTINCT(S1.ProdId) FROM Stock S1, Stock S2, Stock S3 WHERE S1.ProdId = S2.ProdId
AND S2.ProdId = S3.ProdId AND S3.ProdId = S1.ProdId AND S1.DepId <> S2.DepId AND S2.DepId <> S3.DepId AND S3.DepId <> S1.DepId AND S1.Quantity >0
AND S2.Quantity >0 AND S3.Quantity >0);

-- #prod stocked in all depots.
-- We will solve this problem in 2 steps, to make things easier in terms of readability. We will first create a custom view which only selects all distinct depots, and then apply the operations (a) and (b) to get all ProdIds which are stocked in every depot.

CREATE VIEW vw_all_depots AS SELECT DISTINCT(D.DepId) FROM Depot D;

-- using count
SELECT S.ProdId FROM Stock S
WHERE S.DepId IN (SELECT V.DepId FROM vw_all_depots V)
AND S.Quantity >0
GROUP BY S.ProdId
HAVING COUNT(*) = (SELECT COUNT(V.DepId) FROM vw_all_depots V);

-- using exists/not exists
SELECT DISTINCT(S.ProdId) FROM Stock S
WHERE NOT EXISTS
(SELECT V.DepId
FROM vw_all_depots V EXCEPT
SELECT S2.DepId
FROM Stock S2
WHERE S2.ProdId=S.ProdId
AND S2.Quantity >0);













