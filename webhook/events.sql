CREATE DATABASE IF NOT EXISTS events;

USE events;

CREATE TABLE events (
    call_id varchar(30),
    code varchar(30),
    type varchar(30),
    direction varchar(30),
    our_number varchar(30), 
    their_number varchar(30), 
    timestamp varchar(30)
);

