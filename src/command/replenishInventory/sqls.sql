UPDATE products 
  SET quantityInStock = quantityInStock + :qtyToAdd
WHERE productCode = :productCode
