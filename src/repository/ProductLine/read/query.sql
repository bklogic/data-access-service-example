select pl.productLine, pl.textDescription, pl.image,
       p.productCode, p.productName, p.productVendor, p.productDescription,
       p.productScale, p.quantityInStock, p.buyPrice, p.MSRP
  from productlines pl
  left join products p on p.productLine = pl.productLine
 where 1 = 1
   and pl.productLine = :productLine
   and pl.productLine in (select productLine from products where productName = :productName)
