--1. CREATE CUSTOMER TABLE

CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(200)
)

SELECT * FROM customer;

--2. CREATE SALESPERSON TABLE

CREATE TABLE salesperson(
    salesperson_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
)

SELECT * FROM salesperson

--3. CREATE MECHANIC TABLE

CREATE TABLE mechanic(
    mechanic_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
)

SELECT * FROM mechanic

--4. CREATE CAR TABLE 

CREATE TABLE car(
    car_id SERIAL PRIMARY KEY,
    salesperson_id INTEGER NOT NULL,
    make VARCHAR(50),
    model VARCHAR(50),
    owners INTEGER NOT NULL,
    price NUMERIC(10, 2)
)

SELECT * FROM car

ALTER TABLE car
ADD FOREIGN KEY (salesperson_id) REFERENCES salesperson(salesperson_id)

--5. CREATE INVOICE TABLE 

CREATE TABLE invoice(
    invoice_id SERIAL PRIMARY KEY,
    car_id INTEGER NOT NULL,
    customer_id INTEGER NOT NULL,
    i_date TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (car_id) REFERENCES car(car_id),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
)

SELECT * FROM invoice

--6. CREATE SERVICETICKET TABLE

CREATE TABLE serviceticket(
    service_id SERIAL PRIMARY KEY,
    customer_id INTEGER NOT NULL,
    mechanic_id INTEGER NOT NULL,
    st_type VARCHAR(50),
    car_id INTEGER NOT NULL,
    cost NUMERIC(10, 2),
    st_date TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (mechanic_id) REFERENCES mechanic(mechanic_id),
    FOREIGN KEY (car_id) REFERENCES car(car_id)
)

SELECT * FROM serviceticket