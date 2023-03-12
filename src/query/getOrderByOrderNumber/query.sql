select o.orderNumber, orderDate,
       c.customerNumber, c.customerName, null as icon,
       c.addressLine1, c.addressLine2, c.city, 
       c.state, c.country, c.postalCode,
       od.orderLineNumber, od.productCode, p.productName,
       od.quantityOrdered, od.priceEach
  from orders o
  join customers c on o.customerNumber = c.customerNumber
  left join orderdetails od on od.orderNumber = o.orderNumber
  left join  products p on p.productCode = od.productCode
 where o.orderNumber = :orderNumber
