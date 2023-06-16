CREATE TABLE author (
    authorid INTEGER NOT NULL,
    name     VARCHAR2 
     NOT NULL,
    surname  VARCHAR2 
     NOT NULL
);


CREATE TABLE book (
    bookid          INTEGER NOT NULL,
    title           VARCHAR2 
     NOT NULL,
    type            VARCHAR2 
     NOT NULL,
    author_authorid INTEGER NOT NULL
);



CREATE TABLE customer (
    id      INTEGER NOT NULL,
    name    VARCHAR2 
     NOT NULL,
    surname VARCHAR2 
     NOT NULL,
    expiry  DATE NOT NULL
);


CREATE TABLE unit (
    unitid      INTEGER NOT NULL,
    book_bookid INTEGER NOT NULL,
    customer_id INTEGER
);

-- primary keys

ALTER TABLE author ADD CONSTRAINT author_pk PRIMARY KEY ( authorid );

ALTER TABLE book ADD CONSTRAINT book_pk PRIMARY KEY ( bookid );

ALTER TABLE customer ADD CONSTRAINT customer_pk PRIMARY KEY ( id );

-- foreign keys

ALTER TABLE book
    ADD CONSTRAINT book_author_fk FOREIGN KEY ( author_authorid )
        REFERENCES author ( authorid );

ALTER TABLE unit
    ADD CONSTRAINT unit_book_fk FOREIGN KEY ( book_bookid )
        REFERENCES book ( bookid );

ALTER TABLE unit
    ADD CONSTRAINT unit_customer_fk FOREIGN KEY ( customer_id )
        REFERENCES customer ( id );


-- insert records

-- author
INSERT INTO author (authorid, name, surname) VALUES (1, 'J.R.R', 'Tolkien');
INSERT INTO author (authorid, name, surname) VALUES (2, 'Dymytrii', 'Gluchowsky');
INSERT INTO author (authorid, name, surname) VALUES (3, 'Stephen', 'King');

-- book
INSERT INTO book (bookid, title, type, author_authorid) VALUES (1, 'Lord of the Rings', 'Adventure', 1);
INSERT INTO book (bookid, title, type, author_authorid) VALUES (2, 'Hobbit', 'Adventure', 1);
INSERT INTO book (bookid, title, type, author_authorid) VALUES (3, 'Silmarillion', 'Adventure', 1);

INSERT INTO book (bookid, title, type, author_authorid) VALUES (4, 'Metro 2033', 'PostApo', 2);
INSERT INTO book (bookid, title, type, author_authorid) VALUES (5, 'Metro 2034', 'PostApo', 2);
INSERT INTO book (bookid, title, type, author_authorid) VALUES (6, 'Metro 2035', 'PostApo', 2);

INSERT INTO book (bookid, title, type, author_authorid) VALUES (7, 'From', 'Horror', 3);
INSERT INTO book (bookid, title, type, author_authorid) VALUES (8, 'IT', 'Horror', 3);

-- customer
INSERT INTO customer (id, name, surname) VALUES (1, 'Jakub', 'Kolodziej');
INSERT INTO customer (id, name, surname) VALUES (2, 'Roman', 'Siminski');
INSERT INTO customer (id, name, surname) VALUES (2, 'Jan', 'Kowalski');
INSERT INTO customer (id, name, surname) VALUES (2, 'Mateusz', 'Morawiecki');

-- unit
INSERT INTO unit (unitid, book_bookid, customer_id) VALUES (1, 0, 1);
INSERT INTO unit (unitid, book_bookid, customer_id) VALUES (2, 1, 1);
INSERT INTO unit (unitid, book_bookid, customer_id) VALUES (3, 0, 1);

INSERT INTO unit (unitid, book_bookid, customer_id) VALUES (4, 0, 2);
INSERT INTO unit (unitid, book_bookid, customer_id) VALUES (5, 0, 2);

INSERT INTO unit (unitid, book_bookid, customer_id) VALUES (6, 2, 3);

INSERT INTO unit (unitid, book_bookid, customer_id) VALUES (7, 2, 4);
INSERT INTO unit (unitid, book_bookid, customer_id) VALUES (8, 1, 4);
INSERT INTO unit (unitid, book_bookid, customer_id) VALUES (9, 0, 4);

INSERT INTO unit (unitid, book_bookid, customer_id) VALUES (10, 1, 5);
INSERT INTO unit (unitid, book_bookid, customer_id) VALUES (11, 0, 5);



