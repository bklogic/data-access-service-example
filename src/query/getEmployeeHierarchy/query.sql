select a.employeeNumber, a.lastName, 
       a.firstName, a.jobTitle,
       b.employeeNumber as eEmployeeNumber, b.lastName as eLastName, 
       b.firstName as eFirstName, b.jobTitle as eJobTitle,
       c.employeeNumber as eeEmployeeNumber, c.lastName as eeLastName, 
       c.firstName as eeFirstName, c.jobTitle as eeJobTitle,
       d.employeeNumber as eeeEmployeeNumber, d.lastName as eeeLastName, 
       d.firstName as eeeFirstName, d.jobTitle as eeeJobTitle,
       e.employeeNumber as eeeeEmployeeNumber, e.lastName as eeeeLastName, 
       e.firstName as eeeeFirstName, e.jobTitle as eeeeJobTitle
  from employees a
  left join employees b on a.employeeNumber = b.reportsTo
  left join employees c on b.employeeNumber = c.reportsTo
  left join employees d on c.employeeNumber = d.reportsTo
  left join employees e on d.employeeNumber = e.reportsTo
 where a.reportsTo is null
