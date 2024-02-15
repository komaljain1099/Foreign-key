drop table customer;
CREATE TABLE customer(
id INT primary key,
name varchar(50),
city varchar(50)
);

DESC customer;

INSERT INTO customer VALUES (1,"Arvind","Mumbai");
INSERT INTO customer VALUES (2,"Praveen","Bangalore");
INSERT INTO customer VALUES (3,"Anand","Chennai");
INSERT INTO customer VALUES (10,"Aditya","Kolkata");

SELECT * FROM customer;

DROP TABLE orders;
CREATE TABLE orders(
order_id INT primary key,
order_num INT,
customer_id int
);

INSERT INTO orders VALUES (1,12335,3);
INSERT INTO orders VALUES (2,78965,1);
INSERT INTO orders VALUES (3,12678,2);
INSERT INTO orders VALUES (4,19875,10);

SELECT * FROM orders;

drop table orders2;
CREATE TABLE orders2(
order_id INT primary key,
order_num INT,
customer_id int,
FOREIGN KEY (customer_id) REFERENCES customer(id)
);

INSERT INTO orders2 VALUES (1,12335,3);
INSERT INTO orders2 VALUES (2,78965,1);
INSERT INTO orders2 VALUES (3,12678,2);
INSERT INTO orders2 VALUES (4,19875,10);