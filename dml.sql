--dml for inserting data 

INSERT INTO saleperson(
    first_name,
    last_name
)
VALUES(
    'Brandt',
    'Carlson'
),(
    'Shoha',
    'Tsuchida'
);

INSERT INTO cars(
    make,
    model,
    year,
    MSRP,
    new_car,
    use_car
)
VALUES(
    'Hyundai',
    'Veloster Turbo',
    '2013',
    '13000',
    'False',
    'True'
),(
    'Mercedes Benz',
    'GLK 350',
    '2015',
    '20000',
    'False',
    'True'
);

insert into mechanic(
    first_name,
    last_name
)
values(
    'Mister',
    'Mechanic'
),(
    'Ryan',
    'Reynolds'
);

insert into services(
    parts,
    customer_id,
    car_id,
    mechanic_id
)
values(
    'True',
    1,
    2,
    3
)

insert into servie_history(
    car_id,
    service_id
)
Values(
    1,
    2
)

insert into invoice(
    amount,
    salesperson_id,
    customer_id,
    car_id,
    service_id
)
values(
    '20000',
    1,
    2,
    3,
    4
)