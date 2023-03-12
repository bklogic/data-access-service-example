INSERT INTO productlines (
    productLine, textDescription
)
SELECT :targetProductLineName, textDescription
  FROM productlines
 WHERE productLine = :sourceProductLineName
;
INSERT INTO products (
    productCode, productName, productLine, 
    productScale, productVendor, productDescription, quantityInStock,
    buyPrice, MSRP
)
SELECT concat(:productCodePrefix, productCode), productName, :targetProductLineName, 
    productScale, productVendor, productDescription, 0,
    buyPrice, MSRP
  FROM products
 WHERE productLine = :sourceProductLineName
