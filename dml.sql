-- TABLES IN ORDER
--1. CUSTOMER

INSERT INTO customer(
    first_name,
    last_name,
    email
) VALUES(
    'Tristan',
    'Arreola',
    'twd@g.com'
), (
    'Adaise',
    'Menor',
    'addy@g.com'
), (
    'Matt',
    'Gonzales',
    'matt2@g.com'
), (
    'Shane',
    'Drake',
    'shaned@g.com'
)
SELECT * FROM customer;

--2. SALESPERSON

INSERT INTO salesperson(
    first_name,
    last_name
) VALUES(
    'Melissa',
    'Deweese'
), (
    'Adam',
    'Arreola'
), (
    'April',
    'Gonzales'
),(
    'Veronica',
    'Lopez'
)
SELECT * FROM salesperson;

--3. MECHAINC

INSERT INTO mechanic(
    first_name,
    last_name
) VALUES(
    'Frank',
    'Arreola'
), (
    'Chris',
    'Arreola'
), (
    'Daniel',
    'Gonzales'
), (
    'Arthuo',
    'Lopez'
)
SELECT * FROM mechanic;

--4. CAR

INSERT INTO car(
    salesperson_id,
    make,
    model,
    owners,
    price
) VALUES(
    1,
    'Chevrolet',
    'Blazer',
    2,
    67.990
), (
    2,
    'Audi',
    'E-Tron GT',
    1,
    104.900
), (
    3,
    'Toyota',
    'Camry Hybrid',
    1,
    28.355
), (
    4,
    'Chevrolet',
    'Silverado',
    2,
    72.340
)
SELECT * FROM car;

--5. INVOICE

INSERT INTO invoice(
    car_id,
    customer_id
) VALUES(
    2,
    2
), (
    1,
    1
), (
    3,
    4
), (
    4,
    3
)
SELECT * FROM invoice;

--6. SERVICETICKET

INSERT INTO serviceticket(
    customer_id,
    mechanic_id,
    st_type,
    car_id,
    cost
) VALUES(
    3,
    1,
    'Oil Change',
    2,
    80
), (
    2,
    3,
    'Tire Rotation',
    4,
    100
), (
    1,
    4,
    'Spark Plugs',
    3,
    200
), (
    4,
    1,
    'Brake Pads',
    1,
    160
)
SELECT * FROM serviceticket;