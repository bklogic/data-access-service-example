drop table if exists ordersArchive${cutoffYear}
;
create table ordersArchive${cutoffYear} as
select o.*
  from orders o
 where o.orderDate <= LAST_DAY(concat(:cutoffYear, '-12-31'))
 order by orderDate desc, o.orderNumber desc
;
drop table if exists orderDetailsArchive${cutoffYear}
;
create table orderDetailsArchive${cutoffYear} as
select od.*
  from orders o
  join orderdetails od on od.orderNumber = o.orderNumber
 where o.orderDate <= LAST_DAY(concat(:cutoffYear, '-12-31'))
;
delete from orderdetails
where orderNumber in (
    select orderNumber from orders o
     where o.orderDate <= LAST_DAY(concat(:cutoffYear, '-12-31'))
)
;
delete from orders
 where orderDate <= LAST_DAY(concat(:cutoffYear, '-12-31'))
