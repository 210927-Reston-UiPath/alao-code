--SQL is not case sensitive, it is case insensitive for keywords
--not really care if I create a table via CREATE TABLE, create TABLE, or CReaTe TabLE
create TABLE associates
(
    associateName varchar(100) not NULL,
    associateLocale VARCHAR(2) not null,
    revaPoints int not null,
    id serial PRIMARY KEY
);

CREATE TABLE trainers
(
    id serial PRIMARY key,
    trainerName varchar(100) not null,
    campus VARCHAR(3) not null,
    caffeineLevel int not NULL
);

CREATE TABLE batch
(
    id serial PRIMARY KEY,
    associateID int REFERENCES associates(id),
    trainerID int REFERENCES trainers(id)
);

insert into associates (associateName, associateLocale, revaPoints) values 
('Ai', 'CA', -20), ('Osiris', 'CA', -20), ('Jacob', 'FL', 50),  ('Janel', 'AZ', 50), ('Colton', 'OK', -180), ('Niles', 'AL', 200), ('Timothy', 'CT', -20), ('Aaron', 'RI', 200), ('Garman','CA',60);
insert into trainers (trainerName, campus, caffeineLevel) values
('Marielle', 'USF', 60), ('Pushpinder', 'UTA', 50), ('Nick', 'UTA', 75), ('Mark', 'WVU', 16), ('Fred', 'UTA', 25), ('Juniper', 'USF', 197);

insert into batch (associateID, trainerID) values
(1,5), (2,2), (3,4), (4,5),(5,1),(6,3),(7,2), (8,2), (9,2);

select * from associates;
--select count(id), associateLocale from associates group by associateLocale order by count(id) desc;
select * from trainers;
select * from batch;

select * from associates full join batch --full join
on associates.id = batch.associateid;
select * from associates cross join batch; -- cross join
select associateName, trainerName from associates cross join trainers; -- cross join doesn't need a common column unlike others. 
select trainername, associateName from trainers inner join batch on batch.trainerid = trainers.id inner join associates on batch.associateid = associates.id; -- inner join 

select trainername, count(associateid) from trainers full join batch on batch.trainerid = trainers.id group by  trainername having count(associateid) = 0 order by count(associateid) desc;

select trainername, count(associates) from trainers full join batch on batch.trainerid = trainers.id left join associates on batch.associateid = associates.id group by trainername order by count(associateid) desc;

select trainername from trainers
except
select trainername from trainers inner join batch on
batch.trainerid = trainers.id;

select trainername from trainers where id not in (select trainerid from batch);

select trainername from trainers full join batch on batch.trainerid = trainers.id where trainerid is null;

delete from associates;
delete from trainers;
delete from batch;

drop table trainers


select id from associates WHERE id = 3

select associates update(associateName, associateLocale, revaPoints) 

select associateName, associateLocale, revaPoints, id from associates;

replace into 



update associates
set associateName = 'Leo', associateLocale = 'CA', revaPoints = '300' where id = 3;
update associates
set associateName = 'Aaron', associateLocale = 'CA', revaPoints = '30' where id = 6;
update associates
set associateName = 'Mac', associateLocale = 'FL', revaPoints = '-12' where id = 8;