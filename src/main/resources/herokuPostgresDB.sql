DROP TABLE IF EXISTS customer;
CREATE TABLE customer
(
  id         SERIAL ,
  first_name VARCHAR(45)      DEFAULT NULL,
  last_name  VARCHAR(45)      DEFAULT NULL,
  email      VARCHAR(45)      DEFAULT NULL,
  CONSTRAINT customer_id PRIMARY KEY (id)
);


INSERT INTO customer VALUES
  (1, 'David', 'Gilmour', 'david@gmail.com'),
  (2, 'John', 'Petrucci', 'john@gmail.com'),
  (3, 'Ajay', 'Hoge', 'ajay@gmail.com'),
  (4, 'Mary', 'Private', 'mary@gmail.com'),
  (5, 'Maxwell', 'Ivan', 'maxwell@gmail.com'),
  (6, 'Ivan', 'Durak', 'ivan@gmail.com');


