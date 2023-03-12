select customerNumber, customerName, phone, 
       addressLine1 as address, city, state, country
  from customers 
 where customerNumber = :customerNumber
