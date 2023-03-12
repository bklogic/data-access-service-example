update customers
   set addressLine1 = :address, 
       city = :city,
       state = :state, 
       country = :country
where customerNumber = :customerNumber
