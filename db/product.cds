namespace my.product;

entity Product  {
    key PRODUCTID       : Integer        @title : 'ProductID';
        PRODUCTNAME     : String(100)    @title : 'ProductName';
        QUANTITYPERUNIT : String(100)    @title : 'QuantityPerUnit';
        UNITPRICE       : Integer        @title : 'UnitPrice';
        UNITSINSTOCK    : Integer        @title : 'UnitsInStock';
        
}





