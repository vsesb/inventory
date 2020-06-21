create table SRC_INVOICE.INVOICE(
invoice_id varchar(50) NOT NULL PRIMARY KEY,
invoice_amount decimal(11,2) NOT NULL,
currency	varchar(3) NOT NULL,
credit_payment boolean DEFAULT NULL,
online_payment boolean DEFAULT NULL,
cash_payment boolean DEFAULT NULL,
address_line varchar(100) NOT NULL,
address_city varchar(50) NOT NULL,
address_state varchar(50) NOT NULL,
address_pincode varchar(10) NOT NULL,
when_created	date DEFAULT NULL,
when_updated	date DEFAULT NULL,
when_deleted	date DEFAULT NULL
);

INSERT INTO SRC_INVOICE.INVOICE(invoice_id,invoice_amount,currency,credit_payment,online_payment,cash_payment,address_line,address_city,address_state,address_pincode,when_created) 
VALUES(100,10000,'USD',FALSE,TRUE,FALSE,'203,kvr towers, lingampally','hyderabad','Telangana','500050','2019-06-15');
INSERT INTO SRC_INVOICE.INVOICE(invoice_id,invoice_amount,currency,credit_payment,online_payment,cash_payment,address_line,address_city,address_state,address_pincode,when_created) 
VALUES(101,20500,'USD',TRUE,FALSE,FALSE,'103,gnr towers, chandanagar','hyderabad','Telangana','500050','2019-06-20');

INSERT INTO SRC_INVOICE.INVOICE(invoice_id,invoice_amount,currency,credit_payment,online_payment,cash_payment,address_line,address_city,address_state,address_pincode,when_created) 
VALUES(103,30500,'USD',FALSE,FALSE,TRUE,'103,kESHAVA towers, chandanagar','hyderabad','Telangana','500050','2019-06-20');


create table TRG_INVOICE.INVOICE(
invoice_id varchar(50) NOT NULL PRIMARY KEY,
invoice_amount decimal(11,2) NOT NULL,
currency	varchar(3) NOT NULL,
credit_payment varchar(10) NOT NULL,
online_payment varchar(10) NOT NULL,
cash_payment varchar(10) NOT NULL,
address_line varchar(100) NOT NULL,
address_city varchar(50) NOT NULL,
address_state varchar(50) NOT NULL,
address_pincode varchar(10) NOT NULL,
when_created	date DEFAULT NULL,
when_updated	date DEFAULT NULL,
when_deleted	date DEFAULT NULL
);