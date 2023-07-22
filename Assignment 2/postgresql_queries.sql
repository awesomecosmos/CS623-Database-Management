CREATE TABLE Product(
prod_id pname price
VARCHAR(2) UNIQUE, V ARCHAR(30),
NUMERIC(8,2));

ALTER TABLE Product ADD CONSTRAINT pk_product PRIMARY KEY (prod_id); ALTER TABLE Product ADD CONSTRAINT ck_product_price CHECK (price > 0);

INSERT INTO Product(prod_id, pname, price) V ALUES
('p1', 'tape', 2.50), ('p2', 'tv', 250.00),
('p3', 'ver', 80.00); SELECT * FROM Product

CREATE TABLE Depot(
dep_id addr volume
VARCHAR(2) UNIQUE, V ARCHAR(30),
NUMERIC(8,0));
ALTER TABLE Depot ADD CONSTRAINT pk_depot PRIMARY KEY (dep_id); ALTER TABLE Depot ADD CONSTRAINT ck_volume CHECK (volume > 0);
INSERT INTO Depot(dep_id, addr, volume) V ALUES
('d1', 'New York', 9000), ('d2', 'Syracuse', 6000), ('d4', 'New York', 2000);
SELECT * FROM Depot;

CREATE TABLE Stock(
prod_id dep_id quantity
V ARCHAR(2), V ARCHAR(2),
NUMERIC(8,2));
ALTER TABLE Stock ADD CONSTRAINT pk_stock PRIMARY KEY (prod_id,dep_id);
ALTER TABLE Stock ADD CONSTRAINT fk_prod_id FOREIGN KEY (prod_id) REFERENCES Product(prod_id);
ALTER TABLE Stock ADD CONSTRAINT fk_dep_id FOREIGN KEY (dep_id) REFERENCES Depot(dep_id);
INSERT INTO Stock(prod_id, dep_id, quantity) V ALUES
('p1', 'd1', 1000), ('p1', 'd2', -100), ('p1', 'd4', 1200), ('p3', 'd1', 3000), ('p3', 'd4', 2000), ('p2', 'd4', 1500), ('p2', 'd1', -400), ('p2', 'd2', 2000);
SELECT * FROM Stock;

