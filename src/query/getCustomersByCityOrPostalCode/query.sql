select customerNumber, customerNumber, city, state, postalCode 
  from customers
 where (
        1 = 0 
        or :city is not null
        or :postalCode is not null
   )
   and city = :city 
   and postalCode = :postalCode 
