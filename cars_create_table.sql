create table salesperson (
salesperson_id SERIAL primary key,
first_name VARCHAR(50),
last_name VARCHAR(50)
);

create table customers (
	customer_id SERIAL primary key,
	first_name VARCHAR(50),
	last_name VARCHAR(50)
);

create table cars (
	car_id SERIAL primary key,
	serial_number VARCHAR(50) unique,
	make VARCHAR(50),
	model VARCHAR(50),
	year INT,
	price DECIMAL (10, 2),
	is_used BOOLEAN
);

create table invoices (
	invoice_id SERIAL primary key,
	salesperson_id INT,
	foreign key(salesperson_id) references salesperson(salesperson_id),
	customer_id INT,
	foreign key(customer_id) references customers(customer_id),
	car_id INT,
	foreign key(car_id) references cars(car_id),
	sale_date DATE,
	total_amount DECIMAL(10, 2)
);

create table service_tickets (
	ticket_id SERIAL primary key,
	customer_id INT,
	foreign key(customer_id) references customers(customer_id),
	car_id INT,
	foreign key(car_id) references cars(car_id),
	service_date DATE,
	description TEXT
);

create table mechanics (
	mechanic_id SERIAL primary key,
	first_name VARCHAR(50),
	last_name VARCHAR(50)
);

create table car_mechanics (
	car_id INT,
	foreign key(car_id) references cars(car_id),
	mechanic_id INT,
	foreign key(mechanic_id) references mechanics(mechanic_id),
	primary key (car_id, mechanic_id)
);

create table service_history (
	service_id SERIAL primary key,
	car_id INT,
	foreign key(car_id) references cars(car_id),
	service_date DATE,
	description text,
	parts_used text
);