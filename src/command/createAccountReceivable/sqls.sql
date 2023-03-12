insert into accountReceivables (
    receivableDate, customerNumber, receivableAmount
)
select o.shippedDate as receivableDate, o.customerNumber, sum(od.priceEach*quantityOrdered) as receivableAmount
  from orders o
  join orderdetails od on od.orderNumber = o.orderNumber
 where o.shippedDate = :receivableDate
 group by customerNumber
;
insert into accountReceivableDetails (
    receivableNumber, orderNumber, orderAmount
)
select ar.receivableNumber, o.orderNumber, sum(od.priceEach*quantityOrdered) as orderAmount
  from orders o
  join orderdetails od on od.orderNumber = o.orderNumber
  join accountReceivables ar on ar.receivableDate = o.shippedDate and ar.customerNumber = o.customerNumber
 where ar.receivableDate = :receivableDate
 group by ar.receivableNumber, orderNumber
