select ord.orderNumber, ord.orderDate, 
       ord.requiredDate, ord.shippedDate,
       ord.status, ord.customerNumber,
       od.orderLineNumber, od.productCode,
       od.quantityOrdered, od.priceEach
  from orders ord
  left join orderdetails od on od.orderNumber = ord.orderNumber
 where 1 = 1
   and ord.orderNumber = :orderNumber
   and ord.customerNumber = :customerNumber
 order by ord.orderNumber, od.orderLineNumber
