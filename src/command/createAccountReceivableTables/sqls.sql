create table if not exists accountReceivables (
    receivableNumber int AUTO_INCREMENT,
    receivableDate date,
    customerNumber int,
    receivableAmount double,
    PRIMARY KEY (receivableNumber),
    UNIQUE KEY (receivableDate, customerNumber)
)
;
create table if not exists accountReceivableDetails (
    receivableNumber int,
    orderNumber int,
    orderAmount double,
    PRIMARY KEY (receivableNumber, orderNumber)
)
