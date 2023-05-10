
--
-- Table structure for table `users`
--

CREATE TABLE users (
                       username varchar(50) NOT NULL,
                       password varchar(68) NOT NULL,
                       enabled boolean NOT NULL,
                       PRIMARY KEY (username)
);
--
-- Inserting data for table `users`
--

INSERT INTO users(username, password, enabled)
VALUES
    ('john', '{bcrypt}$2a$12$RvNgQRbr6N79/0k1MMIK/e8XXV5nFC/fDr0TzNrRrn3mSaTWykZOy', true),
    ('mary', '{bcrypt}$2a$12$RvNgQRbr6N79/0k1MMIK/e8XXV5nFC/fDr0TzNrRrn3mSaTWykZOy', true),
    ('susan', '{bcrypt}$2a$12$RvNgQRbr6N79/0k1MMIK/e8XXV5nFC/fDr0TzNrRrn3mSaTWykZOy', true);

--
-- Table structure for table `authorities`
--

CREATE TABLE authorities (
                             username varchar(50) NOT NULL,
                             authority varchar(50) NOT NULL,
                             CONSTRAINT authorities_pk PRIMARY KEY (username, authority),
                             CONSTRAINT authorities_fk FOREIGN KEY (username) REFERENCES users (username)
);

--
-- Inserting data for table `authorities`
--

INSERT INTO authorities(username, authority)
VALUES
    ('john','ROLE_EMPLOYEE'),
    ('mary','ROLE_EMPLOYEE'),
    ('mary','ROLE_MANAGER'),
    ('susan','ROLE_EMPLOYEE'),
    ('susan','ROLE_MANAGER'),
    ('susan','ROLE_ADMIN');


select * from  customer a  ;
-- password = test123


insert into customer(firstName, lastName) values ('furkan','boncuk');




