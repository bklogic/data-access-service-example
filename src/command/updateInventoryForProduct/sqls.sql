UPDATE products 
  SET quantityInStock = quantityInStock - :qtyToDeduct
WHERE productCode = :productCode
