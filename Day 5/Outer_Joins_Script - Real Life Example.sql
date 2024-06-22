create table Product_Master
(Product_ID Varchar(5),
 Product_Name Varchar(70),
 Product_Category Varchar(50),
 Rate Number);

Insert into Product_Master Values('P1','Ponds Powder','Cosmetics',95);
Insert into Product_Master Values('P2','Dune Perfume','Cosmetics',110);
Insert into Product_Master Values('P3','Coke','Beverages',85);
Insert into Product_Master Values('P4','Pepsi','Beverages',80);
Insert into Product_Master Values('P5','Sugar-Loose-1Kg','Grocery-Household',100);
Insert into Product_Master Values('P6','Tata Tea-2Kg','Grocery-Household',150);
Insert into Product_Master Values('P7','Notebook - 100 pages','Stationery',40);
Insert into Product_Master Values('P8','Pen','Stationery',50);
Insert into Product_Master Values('P9','Vadilal-Vanila Ice cream','Deserts',90);
Insert into Product_Master Values('P10','Vadilal-Strawberry Ice cream','Deserts',100);
commit;

select * from Product_Master;


create table Transactions
(Tran_ID Varchar(6),
 Product_ID Varchar(30),
 Quantity Number
 );

Insert into Transactions Values('T1','P9',5);
Insert into Transactions Values('T2','P1',2);
Insert into Transactions Values('T3','P7',5);
Insert into Transactions Values('T4','P9',12);
Insert into Transactions Values('T5','P10',4);
Insert into Transactions Values('T6','P11',2);
Insert into Transactions Values('T7','P12',3);
Insert into Transactions Values('T8','P2',1);
Insert into Transactions Values('T9','P2',1);
Insert into Transactions Values('T10','P8',1);
Insert into Transactions Values('T11','P3',2);
Insert into Transactions Values('T12', 'Parle-G', 1);
Insert into Transactions Values('T13','Loose-Chocolate', 2);
commit;


-- Let's see from Product Master's view the business
Select PM.Product_ID, PM.Product_Name, T.Quantity
from Product_Master PM join Transactions T
On PM.Product_ID = T.Product_ID;  


Select PM.Product_ID, PM.Product_Name, T.Quantity
from Product_Master PM Left join Transactions T
On PM.Product_ID = T.Product_ID;  

Select PM.Product_ID, PM.Product_Name,T.Product_ID, T.Quantity
from Product_Master PM Right join Transactions T
On PM.Product_ID = T.Product_ID;  

select ename, dname, sal
from emp inner join dept
on emp.deptno = dept.deptno
where sal > 2000;






















