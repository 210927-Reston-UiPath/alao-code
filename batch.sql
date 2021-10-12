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
('Ai', 'CA', -20), ('Osiris', 'CA', -20), ('Jacob', 'FL', 50),  ('Janel', 'AZ', 50), ('Colton', 'OK', -180), ('Niles', 'AL', 200), ('Timothy', 'CT', -20), ('Aaron', 'RI', 200);
insert into trainers (trainerName, campus, caffeineLevel) values
('Marielle', 'USF', 60), ('Pushpinder', 'UTA', 50), ('Nick', 'UTA', 75), ('Mark', 'WVU', 16), ('Fred', 'UTA', 25), ('Juniper', 'USF', 197);
insert into batch (associateID, trainerID) values
(1,5), (2,3), (5,5), (6,1),(7, 4), (8,1);

select * from associates;
select * from trainers;
select * from batch;

delete from associates where (associateName, associateLocale, revaPoints) = ('Ai', 'CA', -20), ('Osiris', 'CA', -20), ('Jacob', 'FL', 50),  ('Janel', 'AZ', 50), ('Colton', 'OK', -180), ('Niles', 'AL', 200), ('Timothy', 'CT', -20), ('Aaron', 'RI', 200);
delete from trainers;
delete from batch;