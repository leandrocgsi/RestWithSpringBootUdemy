-- CREATE DATABASE rest_with_spring_boot_udemy;

CREATE SEQUENCE books_seq;

CREATE TABLE IF NOT EXISTS books (
  id int NOT NULL DEFAULT NEXTVAL ('books_seq'),
  author varchar(120),
  launch_date timestamp(6) NOT NULL,
  price decimal(65,2) NOT NULL,
  title varchar(120),
  PRIMARY KEY (id)
);

INSERT INTO books (author, launch_date, price, title) VALUES
	('Michael C. Feathers', '2017-11-29 13:50:05.878000', 49.00, 'Working effectively with legacy code'),
	('Ralph Johnson, Erich Gamma, John Vlissides e Richard Helm', '2017-11-29 15:15:13.636000', 45.00, 'Design Patterns'),
	('Robert C. Martin', '2009-01-10 00:00:00.000000', 77.00, 'Clean Code'),
	('Crockford', '2017-11-07 15:09:01.674000', 67.00, 'JavaScript'),
	('Steve McConnell', '2017-11-07 15:09:01.674000', 58.00, 'Code complete'),
	('Martin Fowler e Kent Beck', '2017-11-07 15:09:01.674000', 88.00, 'Refactoring'),
	('Eric Freeman, Elisabeth Freeman, Kathy Sierra, Bert Bates', '2017-11-07 15:09:01.674000', 110.00, 'Head First Design Patterns'),
	('Eric Evans', '2017-11-07 00:00:00.000000', 92.00, 'Domain Driven Design'),
	('Brian Goetz e Tim Peierls', '2017-11-07 15:09:01.674000', 80.00, 'Java Concurrency in Practice'),
	('Susan Cain', '2017-11-07 15:09:01.674000', 123.00, 'O poder dos quietos'),
	('Viktor Mayer-Schonberger e Kenneth Kukier', '2017-11-07 15:09:01.674000', 54.00, 'Big Data: como extrair volume, variedade, velocidade e valor da avalanche de informação cotidiana'),
	('Richard Hunter e George Westerman', '2017-11-07 15:09:01.674000', 95.00, 'O verdadeiro valor de TI'),
	('Marc J. Schiller', '2017-11-07 15:09:01.674000', 45.00, 'Os 11 segredos de líderes de TI altamente influentes'),
	('Michael C. Feathers', '2017-11-29 00:00:00.000000', 49.00, 'Working effectively with legacy code');

ALTER SEQUENCE books_seq RESTART WITH 15;
	
CREATE SEQUENCE permission_seq;

CREATE TABLE IF NOT EXISTS permission (
  id bigint NOT NULL DEFAULT NEXTVAL ('permission_seq'),
  description varchar(255) DEFAULT NULL,
  PRIMARY KEY (id)
)  ;

INSERT INTO permission (description) VALUES
	('ADMIN'),
	('MANAGER'),
	('COMMON_USER');
	
ALTER SEQUENCE permission_seq RESTART WITH 4;

CREATE SEQUENCE person_seq;

CREATE TABLE IF NOT EXISTS person (
  id bigint NOT NULL DEFAULT NEXTVAL ('person_seq'),
  address varchar(100) NOT NULL,
  first_name varchar(80) NOT NULL,
  gender varchar(6) NOT NULL,
  last_name varchar(80) NOT NULL,
  enabled boolean NOT NULL DEFAULT TRUE,
  PRIMARY KEY (id)
)  ;

INSERT INTO person (address, first_name, gender, last_name, enabled) VALUES
	('Uberlândia - Minas Gerais - Brasil', 'Leandro', 'Male', 'Costa', TRUE),
	('Uberlândia - Minas Gerais - Brasil', 'Gabriela', 'Female', 'Costa', TRUE),
	('Patos de Minas - Minas Gerais - Brasil', 'Flávio', 'Male', 'Costa', TRUE),
	('Uberlândia - Minas Gerais - Brasil', 'Fernanda', 'Female', 'Cardoso da Silva', TRUE),
	('Patos de Minas - Minas Gerais - Brasil', 'Pedro', 'Male', 'Paulo', FALSE),
	('Patos de Minas - Minas Gerais - Brasil', 'Marcos', 'Male', 'Paulo', TRUE),
	('Uberaba - Minas Gerais - Brasil', 'Marcela', 'Female', 'Oliveira', TRUE),
	('093 Oneill Alley', 'Kaye', 'Female', 'Wasbrough', TRUE),
	('6 Ridgeway Place', 'Koressa', 'Female', 'Gadman', FALSE),
	('704 Cambridge Plaza', 'Calhoun', 'Male', 'Staveley', FALSE),
	('22 Melvin Court', 'Mable', 'Female', 'Navarro', FALSE),
	('86619 Montana Trail', 'Rebbecca', 'Female', 'Bastock', TRUE),
	('820 Hoard Court', 'Archibald', 'Male', 'Chaim', TRUE),
	('42 Kedzie Pass', 'Westley', 'Male', 'Rosier', FALSE),
	('1 Dayton Center', 'Donalt', 'Male', 'Glasper', FALSE),
	('555 Wayridge Junction', 'Gearard', 'Male', 'Speller', TRUE),
	('5 Milwaukee Plaza', 'Abraham', 'Male', 'Maha', FALSE),
	('3935 Blue Bill Park Junction', 'Romonda', 'Female', 'Havill', TRUE),
	('6 Heffernan Avenue', 'Cynthie', 'Female', 'Gaymar', FALSE),
	('50680 American Ash Center', 'Dannel', 'Male', 'Batisse', FALSE),
	('757 Carpenter Plaza', 'Neel', 'Male', 'Thirkettle', TRUE),
	('96 Burrows Center', 'Aldridge', 'Male', 'Luigi', TRUE),
	('7593 Aberg Street', 'Margi', 'Female', 'Ellaway', TRUE),
	('86770 Truax Center', 'Bidget', 'Female', 'Cuppitt', TRUE),
	('542 Cascade Plaza', 'Sheffie', 'Male', 'Matthews', FALSE),
	('6 Ridge Oak Junction', 'Cairistiona', 'Female', 'Rasher', TRUE),
	('43218 Birchwood Alley', 'Birdie', 'Female', 'Dennison', TRUE),
	('79 Pepper Wood Hill', 'Mariette', 'Female', 'McCrann', TRUE),
	('3556 Linden Trail', 'Veriee', 'Female', 'Konzel', TRUE),
	('6728 Carpenter Plaza', 'Rafe', 'Male', 'Castillon', TRUE),
	('8 Pennsylvania Terrace', 'Eloisa', 'Female', 'McReidy', FALSE),
	('6914 Beilfuss Trail', 'Viole', 'Female', 'Mackieson', TRUE),
	('1779 Ronald Regan Place', 'Johny', 'Male', 'Grzegorczyk', FALSE),
	('96696 Rigney Lane', 'Randell', 'Male', 'Noli', FALSE),
	('91 Claremont Hill', 'Lowe', 'Male', 'Jacobovitch', FALSE),
	('94 Goodland Street', 'Osmond', 'Male', 'McFeate', FALSE),
	('6 Lakewood Alley', 'Georges', 'Male', 'Skeeles', TRUE),
	('9947 Dennis Park', 'Arleta', 'Female', 'Land', FALSE),
	('5 Miller Center', 'Hall', 'Male', 'Leipelt', TRUE),
	('38 Huxley Alley', 'Juline', 'Female', 'Quinet', TRUE),
	('33 8th Street', 'Minda', 'Female', 'Dixcey', TRUE),
	('9154 Northland Junction', 'Garreth', 'Male', 'Eatttok', FALSE),
	('59525 Dexter Circle', 'Keen', 'Male', 'Rogan', TRUE),
	('908 Truax Crossing', 'Dido', 'Female', 'Fitchew', FALSE),
	('797 Annamark Terrace', 'Alvan', 'Male', 'Slimmon', FALSE),
	('604 Oxford Crossing', 'Nolly', 'Male', 'Fick', FALSE),
	('86 Lighthouse Bay Terrace', 'Brice', 'Male', 'Wellings', TRUE),
	('80934 Barby Drive', 'Rheta', 'Female', 'Cruce', TRUE),
	('38211 Grim Circle', 'Dee dee', 'Female', 'Middell', FALSE),
	('9732 Miller Circle', 'Tarrah', 'Female', 'Worsnup', FALSE),
	('75 Ridgeview Parkway', 'Jeramie', 'Male', 'Counsell', TRUE),
	('17270 Mcguire Terrace', 'Borden', 'Male', 'Lazonby', FALSE),
	('10 Forest Run Circle', 'Pippy', 'Female', 'Torrans', FALSE),
	('737 Golf Circle', 'Cleo', 'Female', 'Jirka', FALSE),
	('55 Vernon Lane', 'Tate', 'Female', 'Jedryka', TRUE),
	('0 Jay Plaza', 'Decca', 'Male', 'Bligh', FALSE),
	('55190 Cherokee Avenue', 'Reid', 'Male', 'Lafford', TRUE),
	('1 Portage Hill', 'Kilian', 'Male', 'Lethlay', TRUE),
	('92 Farragut Pass', 'Dannel', 'Male', 'Mease', TRUE),
	('74 Utah Way', 'Rennie', 'Female', 'Moorwood', FALSE),
	('331 Acker Drive', 'Eugenie', 'Female', 'Bengochea', TRUE),
	('57 Forest Lane', 'Tabitha', 'Female', 'Keel', FALSE),
	('960 Talmadge Place', 'Katherina', 'Female', 'Ehrat', FALSE),
	('3025 Chinook Crossing', 'Jonathon', 'Male', 'Pelling', FALSE),
	('34091 East Park', 'Benjie', 'Male', 'Jesson', TRUE),
	('91144 Columbus Lane', 'Sabine', 'Female', 'Vasilyevski', TRUE),
	('9357 Thierer Drive', 'Morie', 'Male', 'Kaubisch', FALSE),
	('82780 Amoth Street', 'Abra', 'Female', 'Doyle', TRUE),
	('39509 Transport Road', 'Rickey', 'Male', 'Corhard', FALSE),
	('59 Dryden Terrace', 'Freddie', 'Female', 'Vaen', FALSE),
	('81 Basil Parkway', 'Darb', 'Female', 'Eddow', TRUE),
	('19629 Bay Street', 'Dolley', 'Female', 'Kohrsen', FALSE),
	('91876 Vernon Lane', 'Parker', 'Male', 'Mairs', TRUE),
	('52846 Summer Ridge Parkway', 'Brandea', 'Female', 'Goodship', TRUE),
	('93 Portage Place', 'Hilton', 'Male', 'Juniper', FALSE),
	('78390 Hoard Pass', 'Prentice', 'Male', 'Moorman', TRUE),
	('2 Dawn Trail', 'Noam', 'Male', 'Sturgess', TRUE),
	('00 Lukken Alley', 'Micky', 'Female', 'Hynam', FALSE),
	('2 Division Crossing', 'Dermot', 'Male', 'Kondrat', FALSE),
	('44028 Barnett Park', 'Blondie', 'Female', 'Ducker', FALSE),
	('7 Gulseth Way', 'Prentice', 'Male', 'Plum', FALSE),
	('02 Farwell Place', 'Jarrad', 'Male', 'Hanny', FALSE),
	('09956 Green Ridge Lane', 'Paulie', 'Female', 'Raylton', FALSE),
	('3 Mendota Pass', 'Wesley', 'Male', 'Russi', TRUE),
	('7 Forest Run Drive', 'Hailee', 'Female', 'Cheers', TRUE),
	('405 Warner Terrace', 'Vernen', 'Male', 'Burnhill', TRUE),
	('909 Coolidge Hill', 'Natasha', 'Female', 'Idle', TRUE),
	('33 Melrose Park', 'Amanda', 'Female', 'De la croix', TRUE),
	('97 Scott Street', 'Terrance', 'Male', 'Winspire', FALSE),
	('92599 Pond Park', 'Leonard', 'Male', 'Martinelli', TRUE),
	('736 Northview Center', 'Clayborn', 'Male', 'Milne', TRUE),
	('610 Laurel Point', 'Brear', 'Female', 'Braden', TRUE),
	('843 Main Circle', 'Novelia', 'Female', 'Jerrard', TRUE),
	('4 Carberry Hill', 'Jonie', 'Female', 'Simoncelli', TRUE),
	('21 Canary Park', 'Ilyse', 'Female', 'Dene', TRUE),
	('65372 Starling Terrace', 'Markus', 'Male', 'Elvin', TRUE),
	('1257 Novick Way', 'Veradis', 'Female', 'Wickett', TRUE);
	
ALTER SEQUENCE person_seq RESTART WITH 98;

CREATE SEQUENCE users_seq;

CREATE TABLE IF NOT EXISTS users (
  id bigint NOT NULL DEFAULT NEXTVAL ('users_seq'),
  user_name varchar(255) DEFAULT NULL,
  full_name varchar(255) DEFAULT NULL,
  password varchar(255) DEFAULT NULL,
  account_non_expired boolean DEFAULT TRUE,
  account_non_locked boolean DEFAULT TRUE,
  credentials_non_expired boolean DEFAULT TRUE,
  enabled boolean DEFAULT TRUE,
  PRIMARY KEY (id),
  CONSTRAINT uk_user_name UNIQUE  (user_name)
)  ;

INSERT INTO users (user_name, full_name, password, account_non_expired, account_non_locked, credentials_non_expired, enabled) VALUES
	('leandro', 'Leandro Costa', '$2a$16$9qr2tv0HmXbHBsx.TZFjfux742wCZM32a8Wi6iBqwIqaizlHPuxHS', TRUE, TRUE, TRUE, TRUE),
	('flavio', 'Flavio Costa', '$2a$16$h4yDQCYTy62R6xrtFDWONeMH3Lim4WQuU/aj8hxW.dJJoeyvtEkhK', TRUE, TRUE, TRUE, TRUE);
	
ALTER SEQUENCE users_seq RESTART WITH 3;

CREATE TABLE IF NOT EXISTS user_permission (
  id_user bigint NOT NULL,
  id_permission bigint NOT NULL,
  PRIMARY KEY (id_user,id_permission)
 ,
  CONSTRAINT fk_user_permission FOREIGN KEY (id_user) REFERENCES users (id),
  CONSTRAINT fk_user_permission_permission FOREIGN KEY (id_permission) REFERENCES permission (id)
) ;

CREATE INDEX fk_user_permission_permission ON user_permission (id_permission);

INSERT INTO user_permission (id_user, id_permission) VALUES
	(1, 1),
	(2, 1),
	(1, 2);