--ddl for creating database

CREATE TABLE saleperson(
    saleperson_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);

CREATE TABLE cars(
    car_id SERIAL PRIMARY KEY,
    make VARCHAR(20),
    model VARCHAR(20),
    year INTEGER,
    MSRP NUMERIC (8,2),
    new_car BOOLEAN,
    use_car BOOLEAN
);

CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(50),
    phone(50)
);

CREATE TABLE mechanic(
    mechanic_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
);

CREATE TABLE services(
    service_id SERIAL PRIMARY KEY,
    parts BOOLEAN,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (car_id) REFERENCES cars(car_id),
    FOREIGN KEY (mechanic_id) references(mechanic_id)
);

CREATE TABLE service_history(
    service_history_id SERIAL PRIMARY KEY,
    FOREIGN KEY (car_id) REFERENCES cars(car_id),
    FOREIGN KEY (service_id) REFERENCES services(service_id)
);

CREATE TABLE invoice(
    invoice_id SERIAL PRIMARY KEY,
    amount MONEY,
    FOREIGN KEY (salesperson_id) REFERENCES saleperson(salesperson_id),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (car_id) REFERENCES cars(car_id),
    FOREIGN KEY (service_id) references services(service_id),
);
