USE mydb2;

INSERT INTO cars (CAR_ID, VIN, Manufacturer,Model,Year,Color)
VALUES (001, "3K096I98581DHSNUP",	"Volkswagen",	"Tiguan",	2019,	"Blue"),
(002, "ZM8G7BEUQZ97IH46V",	"Peugeot",	"Rifter",	2019,	"Red"),
(003, "RKXVNNIHLVVZOUB4M",	"Ford",	"Fusion",	2018,	"White"),
(004,	"HKNDGS7CU31E9Z7JW",	"Toyota",	"RAV4",	2018,	"Silver"),
(005, "DAM41UDN3CHU2WVF6",	"Volvo",	"V60", 2019, "Gray"),
(006, "DAM41UDN3CHU2WVF6",	"Volvo",	"V60 Cross Country",	2019,	"Gray");


INSERT INTO customers (ID, CUSTOMER_ID, Name, Phone, City, Country, Postal_code)
VALUES (0, 10001, "Pablo Picasso", "+34555", "Madrid", "Spain", 28006),
(1, 20001, "Lincoln", "+1305", "Washington", "USA", 45666),
(2, 30001, "Napoleon", "+5677", "Paris", "France", 48903);


INSERT INTO invoices (ID, Invoice_ID, Date, Car, Customer, Salesperson)
VALUES (001, 852399038, 22-08-2018, 01, 01, 03),
(002, 731166526, 21-08-2018, 03, 03, 05),
(003, 271135104, 22-08-2019, 02, 02, 07);

INSERT INTO salespersons (ID, Staff_ID, Name, Store)
VALUES (001, 00001, "Petey", "Madrid"),
(002, 00002, "Anna","Barcelona"),
(003, 00003, "Paul", "Berlin");