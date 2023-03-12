select e.employeeNumber, e.lastName, 
       e.firstName, e.jobTitle,
       m.employeeNumber as mEmployeeNumber, m.lastName as mLastName, 
       m.firstName as mFirstName, m.jobTitle as mJobTitle,
       e2.employeeNumber as meEmployeeNumber, e2.lastName as meLastName, 
       e2.firstName as meFirstName, e2.jobTitle as meJobTitle,
       m2.employeeNumber as mmEmployeeNumber, m2.lastName as mmLastName, 
       m2.firstName as mmFirstName, m2.jobTitle as mmJobTitle
  from employees e
  left join employees m on m.employeeNumber = e.reportsTo
  left join employees e2 on m.employeeNumber = e2.reportsTo
  left join employees m2 on m2.employeeNumber = m.reportsTo
