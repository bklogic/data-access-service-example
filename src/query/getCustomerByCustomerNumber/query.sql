select customerNumber, customerName, 
       contactLastName as lastName, contactFirstName as firstName, phone,
       city, state, country
  from customers
 where customerNumber = :customerNumber
