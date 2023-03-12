select o.officeCode, o.city, o.country,
       e.employeeNumber, e.lastName, e.firstName,
       c.customerNumber, c.customerName, 
       c.contactLastName, c.contactFirstName, c.phone,
       c.city as customerCity, c.state as customerState, c.country as customerCountry,
       s.productCode, s.productName, s.qty, s.dollarAmount
  from offices o 
  join employees e on o.officeCode = e.officeCode
  left join customers c on c.salesRepEmployeeNumber = e.employeeNumber
  left join (
        select c2.salesRepEmployeeNumber, p.productCode, p.productName, sum(od.quantityOrdered) as qty, sum(od.priceEach*od.quantityOrdered) as dollarAmount
          from customers c2
          join orders ord on ord.customerNumber = c2.customerNumber
          join orderdetails od on od.orderNumber = ord.orderNumber
          join products p on p.productCode = od.productCode
         group by c2.salesRepEmployeeNumber, p.productCode, p.productName
  ) s on s.salesRepEmployeeNumber = e.employeeNumber
 where e.jobTitle = 'Sales Rep'
  order by o.officeCode, e.employeeNumber
