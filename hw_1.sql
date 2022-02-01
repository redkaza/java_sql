create table makarenko_om.persons(
	name text,
	surname text,
	age int,
	phone_number text unique, 
	city_of_living text,
    PRIMARY KEY (name, surname, age)
)

select * from makarenko_om.persons;

insert into makarenko_om.persons values('Иван', 'Иванов', 13, '+7 (926) 717-90-25', 'Самара');
insert into makarenko_om.persons values('Иван', 'Васильев', 23, '+7 (926) 917-70-20', 'Москва');
insert into makarenko_om.persons values('Николай', 'Игнатьев', 30, '+7 (926) 727-00-15', 'Москва');
insert into makarenko_om.persons values('Мария', 'Иванова', 93, '+7 (926) 737-94-05', 'Керчь');

select name, surname from makarenko_om.persons p
where p.city_of_living = 'Москва';

select * from makarenko_om.persons p
where p.age > 27
order by age desc;