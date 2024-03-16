create or replace procedure insert_salesperson(
	first_name VARCHAR(50),
	last_name VARCHAR(50)
)
language plpgsql
as $$
begin 
	insert into salesperson (first_name, last_name)
	values(first_name, last_name);
end;
$$

create or replace procedure insert_customer(
	first_name VARCHAR(50),
	last_name VARCHAR(50)
)
language plpgsql
as $$
begin 
	insert into customers (first_name, last_name)
	values (first_name, last_name);
end;
$$

call insert_salesperson('John', 'Wick');
call insert_salesperson('John', 'Jacob'); 

call insert_customer('Gordon', 'Ramsey');
call insert_customer('Lebron', 'James');

insert into cars (serial_number, make, model, year, price, is_used)
values 
	(0001, 'Ford', 'Pinto', 1970, 1000, TRUE),
	(0002, 'Tesla', 'Cybertruck', 2024, 99999, FALSE);
	
insert into mechanics (first_name, last_name)
values ('Bob', 'DaBuilder'),
	   ('Wreck', 'ItRalph');
	  
insert into invoices (invoice_id, salesperson_id, customer_id, car_id, sale_date, total_amount)
values 
	(1, 1, 1, 1, '2024-03-15', 1000),
	(2, 2, 2, 2, '2024-03-15', 99999);

insert into service_history (service_id, car_id, service_date, description, parts_used)
values
	(1212, 1, '2024-03-15', 'Placed gas tank in the rear', 'flammable air bags'),
	(8989, 2, '2024-03-15', 'Threw rock at window', 'Dwayne Johnson');

insert into service_tickets (ticket_id, customer_id, car_id, service_date, description)
values 
	(3456, 1, 1, '2024-03-15', 'Advised to never get rear-ended'),
	(6543, 2, 2, '2024-03-15', 'Advised to invest in X and SpaceX');

select * from salesperson;

select * from customers;

select * from cars;

select * from mechanics;

select * from invoices;

select * from service_history;

select * from service_tickets;
