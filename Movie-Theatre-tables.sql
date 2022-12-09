-- Customer table
CREATE TABLE customer(
	customer_id SERIAL primary key
);

-- movies table
CREATE TABLE movies(
	movie_id SERIAL primary key,
	movie_name VARCHAR(100),
	movie_time TIME
);

--TICKETS TABLE
CREATE TABLE tickets(
	ticket_id SERIAL primary key,
	movie_id SERIAL,
	price NUMERIC(5,2),
	FOREIGN KEY(movie_id) REFERENCES movies(movie_id)
);

--inventroy table
CREATE TABLE inventory(
	upc SERIAL primary key,
	prod_amount INTEGER
);

--brand table
CREATE TABLE brand(
	seller_id SERIAL primary key,
	brand_name VARCHAR(150)
);

--PRODUCT TABLE
CREATE TABLE product(
	item_id SERIAL primary key,
	amount NUMERIC(5,2),
	product_name VARCHAR(100),
	seller_id INTEGER,
	upc INTEGER,
	FOREIGN KEY(seller_id) REFERENCES brand(seller_id),
	FOREIGN KEY(upc) REFERENCES inventory(upc)
);

--Order table
CREATE TABLE order_(
	order_id SERIAL primary key,
	order_date DATE DEFAULT CURRENT_DATE,
	sub_total NUMERIC(8,2),
	total_cost NUMERIC(8,2),
	upc SERIAL,
	ticket_id SERIAL,
	FOREIGN KEY(upc) REFERENCES inventory(upc),
	FOREIGN KEY(ticket_id) REFERENCES tickets(ticket_id)
);

--Cart table
CREATE TABLE cart(
	cart_id SERIAL primary key,
	customer_id SERIAL,
	order_id SERIAL,
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
	FOREIGN KEY(order_id) REFERENCES order_(order_id)
);











