/* view */
select * from SWCOMPANY.DEPT_INFO;

select * from SWCOMPANY.PROD_INFO;

select * from SWCOMPANY.EMP_INFO;

/* table */
select * from SWCOMPANY.DEPARTMENT;

select * from SWCOMPANY.PART;

select * from SWCOMPANY.EMPLOYEE;

select * from SWCOMPANY.CUSTOMER;

select SWCOMPANY.CUSTOMER.Fname, SWCOMPANY.CUSTOMER.Lname, SWCOMPANY.ORDER.Order_format
from SWCOMPANY.CUSTOMER inner join SWCOMPANY.ORDER 
on SWCOMPANY.CUSTOMER.Customer_id = SWCOMPANY.ORDER .Customer_id;
