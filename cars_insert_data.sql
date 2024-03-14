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

select * from salesperson;

select * from customers;