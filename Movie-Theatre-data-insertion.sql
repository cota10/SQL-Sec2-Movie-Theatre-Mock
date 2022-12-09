INSERT INTO customer(
	customer_id
) values(
	1
), (
	2
), (
	3
), (
	4
);

INSERT INTO movies(
	movie_id,
	movie_name,
	movie_time
) values(
	1,
	'The Hurt Locker',
	'4:15'
), (
	2,
	'Wakanda Forever',
	'6:00'
), (
	3,
	'The Dirt',
	'8:00'
), (
	4,
	'Goodwill Hunting',
	'9:45'
);

INSERT INTO tickets(
	ticket_id,
	movie_id,
	price
) values(
	1,
	1,
	10.00
), (
	2,
	2,
	10.00
), (
	3,
	3,
	13.00
), (
	4,
	4,
	13.00
);

INSERT INTO inventory(
	upc,
	prod_amount 
) values(
	1,
	10
), (
	2,
	10
), (
	3,
	20
);

INSERT INTO brand(
	seller_id,
	brand_name 
) values(
	1,
	'M&M'
), (
	2,
	'Snicker'
), (
	3,
	'Kit-Kat'
);

INSERT INTO product(
	item_id,
	amount,
	product_name,
	seller_id,
	upc
) values(
	1,
	3.00,
	'M&M With Peanuts',
	1,
	1
), (
	2,
	4.00,
	'Snicker: Caramel & Peanuts',
	2,
	2
), (
	3,
	5.00,
	'Kit-Kat White Chocolate',
	3,
	3
);

INSERT INTO order_(
	order_id,
	sub_total,
	total_cost,
	upc,
	ticket_id
) values(
	1,
	13.00,
	14.34,
	1,
	1
), (
	2,
	14.00,
	15.50,
	2,
	2
), (
	3,
	18.00,
	19.75,
	3,
	4
), (
	4,
	17.00,
	18.64,
	2,
	3
);

INSERT INTO cart(
	cart_id,
	customer_id,
	order_id
) values(
	1,
	2,
	4
), (
	2,
	4,
	2
), (
	3,
	1,
	3
), (
	4,
	3,
	1
);































































