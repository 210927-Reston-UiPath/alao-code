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
)