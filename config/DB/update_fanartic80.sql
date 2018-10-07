ALTER TABLE country_duties DROP country_duty;
ALTER TABLE country_duties DROP c_id;
ALTER TABLE country_duties ADD id int not null auto_increment primary key;