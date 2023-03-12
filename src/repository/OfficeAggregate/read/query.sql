select e.employeeNumber as eEmployeeNumber, e.lastName as eLastName, 
       e.firstName as eFirstName, e.jobTitle as eJobTitle, o.officeCode, o.city, o.phone, o.addressLine1, 
       o.state, o.country, o.postalCode,
       e.employeeNumber as eEmployeeNumber, e.lastName as eLastName, 
       e.firstName as eFirstName, e.jobTitle as eJobTitle,
       e.extension as eExtension, e.email as eEmail, e.reportsTo,
       m.employeeNumber as mEmployeeNumber, m.lastName as mLastName, 
       m.firstName as mFirstName, m.jobTitle as mJobTitle,
       m.extension as mExtension, m.email as mEmail
  from offices o
  left join employees m on m.officeCode = o.officeCode and m.jobTitle = 'office manager'
  left join employees e on e.officeCode = o.officeCode and e.jobTitle != 'office manager'
 where 1 = 1
   and o.officeCode = :officeCode
