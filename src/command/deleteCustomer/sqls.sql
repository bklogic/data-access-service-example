DELETE FROM payments WHERE customerNumber = :customerNumber
;
DELETE FROM orderdetails WHERE orderNumber in (
    select orderNumber from orders where customerNumber = :customerNumber
)
;
DELETE FROM orders WHERE customerNumber = :customerNumber
;
DELETE FROM customers WHERE customerNumber = :customerNumber
