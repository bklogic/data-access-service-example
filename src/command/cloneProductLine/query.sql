SELECT pl.productLine, pl.textDescription,
        p.productCode, p.productName, p.productVendor
  FROM productlines pl
  LEFT JOIN products p ON p.productLine = pl.productLine
 WHERE pl.productLine = :targetProductLineName
