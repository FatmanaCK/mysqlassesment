## a) Create b-tree index on CustId
CREATE TABLE CUSTOMERS(
CustID INT NOT NULL,
FirstName VARCHAR(60)DEFAULT NULL,
LastName VARCHAR(60)DEFAULT NULL,
DOB DATE DEFAULT NULL,
Sex VARCHAR(10)DEFAULT NULL,
Address VARCHAR(60)DEFAULT NULL,
Country VARCHAR(60)DEFAULT NULL,
On_Board_Date DATE DEFAULT NULL,
PRIMARY KEY (CustID),
KEY BTREEINDEX (CustID),
KEY idx_CustID (CustID) USING BTREE,
KEY idx_Sex (Sex)
)
/*DROP TABLE CUSTOMERS; */

##b) Create bit map index on Sex
SELECT COUNT(*) FROM Customers WHERE Sex IS NULL;  



##c) Create Range Partitioned table like Customer with range column as On-Board_Date
PARTITION BY RANGE (On_Board_Date) (
    PARTITION p0 VALUES LESS THAN (2021-10-24),
    PARTITION p1 VALUES LESS THAN (1985-08-08)
   
);


##d) Create List Partitioned table like Customer with list column on Country
## ALTER TABLE Customers DROP PARTITION Country;
PARTITION BY LIST COLUMNS(Country) (
    PARTITION pCountry_1 VALUES IN('12'),
    PARTITION pCountry_2 VALUES IN('08'),
    PARTITION pCountry_3 VALUES IN('15')
)

##e) Create a composite Rang-List Partitioned table like Customer

SELECT * FROM Customers WHERE DOB
     BETWEEN '1995-01-01' AND '1999-12-31';
     
    







