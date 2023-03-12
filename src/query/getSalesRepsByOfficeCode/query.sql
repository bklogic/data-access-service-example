select e.employeeNumber, e.lastName, e.firstName,
       o.officeCode, o.city, o.country,
       c.customerNumber, c.customerName, 
       c.contactLastName, c.contactFirstName, c.phone,
       c.city as customerCity, c.state as customerState, c.country as customerCountry,
       s.productCode, s.productName, s.qty, s.dollarAmount
  from employees e
  join offices o on o.officeCode = e.officeCode
  left join customers c on c.salesRepEmployeeNumber = e.employeeNumber
  left join (
        select c2.salesRepEmployeeNumber, p.productCode, p.productName, sum(od.quantityOrdered) as qty, sum(od.priceEach*od.quantityOrdered) as dollarAmount
          from customers c2
          join orders o on o.customerNumber = c2.customerNumber
          join orderdetails od on od.orderNumber = o.orderNumber
          join products p on p.productCode = od.productCode
         group by c2.salesRepEmployeeNumber, p.productCode, p.productName
  ) s on s.salesRepEmployeeNumber = e.employeeNumber
 where e.officeCode = :officeCode
   and e.jobTitle = 'Sales Rep'
  order by e.employeeNumber
