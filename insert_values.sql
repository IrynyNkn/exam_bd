INSERT INTO port
VALUES
    (1, 'Azovskiy', 'Ukraine'),
    (2, 'Black', 'Norvey'),
    (3, 'Beautiful', 'Italy'),
    (4, 'Cold', 'Spain'),
    (5, 'Some port name', 'China'),
    (6, 'North', 'Great Britain'),
    (7, 'East', 'Russia'),
    (8, 'Warm', 'Greece');

INSERT INTO customer
VALUES
    (1, 'Grocery shop', 'Sweden'),
    (2, 'Japan Government', 'Japan'),
    (3, 'Some organization', 'Sweden'),
    (4, 'Military organization', 'Ukraine'),
    (5, 'Pure water', 'Russia'),
    (6, 'Cloths shop', 'France');

INSERT INTO load
VALUES
    (1, 'Water', 1500),
    (2, 'Food', 550),
    (3, 'Resources', 1000),
    (4, 'Live load', 1010),
    (5, 'Spices', 500),
    (6, 'Water', 3000),
    (7, 'Food', 1000),
    (8, 'Resources', 2000);
;

INSERT INTO ship
VALUES
    (9, 'Аляска', 2013, null, 'Nakonechnyi Illia', 10000, 1),
    (2, 'Медуза', 2003, 2012, 'Shevchenko Oleh', 15000, 2),
    (3, 'Вінгілотко', 2001, 2009, 'Jhon Smith', 20000, 3),
    (4, 'Джейн Гай', 2010, 2019,'Captain America', 20000, 4),
    (5, 'Клейморко', 2015, null, 'Stetcun Dima', 9000, 5),
    (6, 'Клеймор', 2009, 2016, 'Makarov Illia', 8000, 6),
    (7, 'Клеймор', 2021, null, 'Captain Kotenko', 10000, 7),
    (8, 'Клеймор', 2017, 2021, 'Ira Nakonechna', 6000, 8);

INSERT INTO orders
VALUES
    (2, 1, 2, 2, 1, 2, 224, '2014-08-01', '1954-12-26', 5000),
    (3, 2, 3, 3, 1, 5, 226, '2014-08-01', '1954-12-26', 3403),
    (4, 4, 4, 4, 3, 4, 28, '2014-08-01', '1954-12-26', 1278),
    (5, 3, 5, 5, 2, 3, 122, '2014-08-01', '1954-12-26', 1213),
    (6, 5, 6, 6, 1, 1, 542, '2014-08-01', '1954-12-26', 1287),
    (7, 6, 7, 1, 2, 2, 502, '2014-08-01', '1954-12-26', 1231),
    (8, 7, 8, 2, 3, 6, 666, '2014-08-01', '1954-12-26', 5000),
    (9, 8, 1, 3, 4, 5, 2234, '2014-08-01', '1954-12-26', 8000),
    (10, 1, 2, 4, 5, 4, 123, '2014-08-01', '1954-12-26', 7000),
    (11, 1, 3, 5, 6, 3, 321, '2014-08-01', '1954-12-26', 5000),
    (12, 1, 4, 6, 7, 2, 54, '2014-08-01', '1954-12-26', 2000),
    (13, 1, 5, 1, 8, 1, 2542, '2014-08-01', '1954-12-26', 500);