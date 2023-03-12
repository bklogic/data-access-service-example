select c.customerNumber, c.customerName, 
       c.contactLastName, c.contactFirstName, c.phone,
       c.addressLine1, c.addressLine2, c.city, c.state, 
       c.country , c.postalCode
  from customers c
 where 1 = 1
   and c.customerNumber = :customerNumber
   and c.city = :city
   and c.postalCode = :postalCode
