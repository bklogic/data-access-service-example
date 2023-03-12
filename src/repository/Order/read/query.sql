select o.orderNumber, o.orderDate,
       o.customerNumber, _c.customerName,
       o.requiredDate, o.shippedDate, o.status, o.comments,
       od.orderLineNumber, od.productCode, _p.productName,
       od.quantityOrdered as qty, od.priceEach, od.quantityOrdered*od.priceEach as subtotal,
       (select sum(quantityOrdered*priceEach) from orderdetails 
         where orderNumber = o.orderNumber) as total
  from orders o
  join customers _c on o.customerNumber = _c.customerNumber
  left join orderdetails od on od.orderNumber = o.orderNumber
  left join  products _p on _p.productCode = od.productCode
 where ( 0 = 1
         or :orderNumber is not null
         or :customerNumber is not null
         or :startDate is not null 
         or :endDate is not null
       )
   and o.orderNumber = :orderNumber
   and o.customerNumber = :customerNumber
   and o.orderDate between :startDate and :endDate
