create table pracownicy (

id int auto_increment primary key,
imie varchar(50),
nazwisko varchar(50),
wyplata decimal(7,2),
data_urodzenia date,
stanowisko varchar(50)
);

insert into pracownicy (imie, nazwisko, wyplata, data_urodzenia, stanowisko) values ('Jan', 'Kowalski', 3450.45, '2000-10-03', 'sprzedawca');
insert into pracownicy (imie, nazwisko, wyplata, data_urodzenia, stanowisko) values ('Tomasz', 'Nowacki', 3450.45, '1976-06-10', 'sprzedawca');
insert into pracownicy (imie, nazwisko, wyplata, data_urodzenia, stanowisko) values ('Iwona', 'Nowak', 2450.05, '1980-08-09', 'sprzątaczka');
insert into pracownicy (imie, nazwisko, wyplata, data_urodzenia, stanowisko) values ('Stefan', 'Romanek', 4550.00, '1982-05-29', 'menadżer_sklepu');
insert into pracownicy (imie, nazwisko, wyplata, data_urodzenia, stanowisko) values ('Magdalena', 'Iksińska', 5450.45, '1988-09-03', 'specjalista_marketingu');
insert into pracownicy (imie, nazwisko, wyplata, data_urodzenia, stanowisko) values ('Tomasz', 'Kowalski', 3200.00, '1985-10-03', 'obsługa_infolinii');
insert into pracownicy (imie, nazwisko, wyplata, data_urodzenia, stanowisko) values ('Jan', 'Nowak', 7800.80, '1981-10-03', 'dyrektor_mrketingu');


select * from pracownicy order by nazwisko;
select * from pracownicy where stanowisko='sprzedawca';
select * from pracownicy where extract(year from data_urodzenia)<=1987;
update pracownicy set wyplata = (wyplata+(wyplata*0.1)) where stanowisko='sprzedawca'; 	
delete from pracownicy where data_urodzenia = (select d_ur from (select max(data_urodzenia) as d_ur from pracownicy) as max_data);



