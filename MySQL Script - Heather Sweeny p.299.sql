SELECT *
FROM INVOICE, LINE_ITEM
WHERE INVOICE.InvoiceNumber = 35000
	AND INVOICE.InvoiceNumber = LINE_ITEM.InvoiceNumber;

SELECT *
FROM INVOICE, LINE_ITEM
WHERE INVOICE.InvoiceNumber = LINE_ITEM.InvoiceNumber;

SELECT *
FROM CUSTOMER, CONTACT
WHERE CUSTOMER.CustomerID = CONTACT.CustomerID; 

SELECT *
FROM CUSTOMER, CONTACT
WHERE CUSTOMER.CustomerID = CONTACT.CustomerID
	AND CUSTOMER.CustomerID = 1; 

#This gets information on the Customers in a seminar 1
SELECT *
FROM SEMINAR_CUSTOMER, CUSTOMER
WHERE CUSTOMER.CustomerID = SEMINAR_CUSTOMER.CustomerID
	AND SEMINAR_CUSTOMER.SeminarID = 1; 

#This is a 3 table join
SELECT *
FROM SEMINAR, SEMINAR_CUSTOMER, CUSTOMER
WHERE CUSTOMER.CustomerID = SEMINAR_CUSTOMER.CustomerID
	AND SEMINAR.SeminarID = SEMINAR_CUSTOMER.SeminarID
	AND SEMINAR_CUSTOMER.SeminarID = 1; 
    
SELECT *
FROM SEMINAR, SEMINAR_CUSTOMER, CUSTOMER
WHERE CUSTOMER.CustomerID = SEMINAR_CUSTOMER.CustomerID
	AND SEMINAR.SeminarID = SEMINAR_CUSTOMER.SeminarID
	AND SEMINAR.SeminarTitle = 'Kitchen on a Budget';
 
 #Inserting new customer
INSERT INTO CUSTOMER VALUES (NULL, 'Diaz', 'Chris', 'diaz@setonhill.edu', Null, '724-555-1111',
							'Box 374F - Seton Hill U', 'Greensburg', 'PA', '15601-0001');

 #Updating customer information                           
UPDATE CUSTOMER
SET Phone = '724-555-2222'
WHERE CustomerID = 13; 

#Updating Multiple Columns
UPDATE CUSTOMER
SET StreetAddress = '123 North Main', 
	City = 'Latrobe', 
	State = 'PA', 
    Zip = '15650-0001'
WHERE CustomerID = 13;

#Not able to do this becuase first name and last name are not primary keys
UPDATE CUSTOMER
SET EmailAddress = 'chris.diaz.phd@gmail.com'
WHERE FirstName = 'Chris' AND LastName = 'Diaz';

#Lets attempt it another way with subquery, but this still does not work here for the DBMS
UPDATE CUSTOMER
SET EmailAddress = 'chris.diaz.phd@gmail.com'
WHERE CustomerID = (SELECT CustomerID
					FROM CUSTOMER
					WHERE FirstName = 'Chris' AND LastName = 'Diaz');
                    
#This is the SELECT Statement alone
SELECT CustomerID
FROM CUSTOMER
WHERE FirstName = 'Chris' AND LastName = 'Diaz'

#Delete Customer
DELETE FROM CUSTOMER
WHERE CustomerID = 13;

SELECT *
FROM Customer;