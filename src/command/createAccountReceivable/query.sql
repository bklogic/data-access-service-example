select ar.receivableNumber, ar.customerNumber, ar.receivableDate, 
       ar.receivableAmount, ard.orderNumber, ard.orderAmount
  from accountReceivables ar
  join accountReceivableDetails ard on ard.receivableNumber = ar.receivableNumber
 where ar.receivableDate = :receivableDate
 order by ar.receivableNumber, orderNumber
