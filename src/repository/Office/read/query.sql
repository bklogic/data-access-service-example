SELECT o.officeCode, o.addressLine1 as address, o.phone,
       o.city, o.state, o.country, o.postalCode, o.territory
  FROM offices o
 WHERE 1 = 1
   AND o.officeCode = :officeCode
   AND o.country = :country
