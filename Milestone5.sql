create schema SWCOMPANY;

/* table DEPARTMENT */
create table SWCOMPANY.DEPARTMENT(
	Dept_id int not null, 
	Num_emp int not null,
   	Dept_mgr_id int, /* fk to EMPLOYEE Emp_id */
	Dept_type varchar(50) not null,
    
    PRIMARY KEY (Dept_id)
);

/* table LOCATED_AT */
create table SWCOMPANY.LOCATED_AT(
	Location_id int not null, /* fk to LOCATION Loc_id */
    Department_id int not null, /* fk to DEPARTMENT Dept_id */
    
    PRIMARY KEY (Location_id, Department_id)
);

/* table LOCATION */
create table SWCOMPANY.LOCATION(
	Loc_id int not null,
    Loc_mgr_id int, /* fk to EMPLOYEE Emp_id */
    Emergency_status varchar(50) not null,
    
    PRIMARY KEY (Loc_id)
);


/* table LOC_ADDRESS */
create table SWCOMPANY.LOC_ADDRESS(
	Location_id int not null, /* fk to LOCATION Loc_id */
    State varchar(50),
    City varchar(50),
    Street varchar(50),
    
    PRIMARY KEY (Location_id)
);

/* table COLLECT */
create table SWCOMPANY.COLLECT(
	Location_id int not null, /* fk to LOCATION Loc_id */
    Part_id int not null, /* fk to PART Part_id */
    
    PRIMARY KEY (Location_id, Part_id)
);

/* table PART */
create table SWCOMPANY.PART(
	Part_id int not null,
    Name varchar(50) not null,
    Reorder_point int check (Reorder_point >=0),
    Num_remaining int check (Num_remaining >=0),
    
    PRIMARY KEY (Part_id)
);

/* table PART_W_PRODUCT */
create table SWCOMPANY.PART_W_PRODUCT(
	Part_id int not null, /* fk to PART Part_id */
    Product_id int not null, /* fk to PRODUCT Product_id */
    
    PRIMARY KEY (Part_id, Product_id)
);

/* table PART_W_LOCATION */
create table SWCOMPANY.PART_W_LOCATION(
	Part_id int not null, /* fk to PART Part_id */
    Location_id int not null, /* fk to LOCATION Loc_id */
    
    PRIMARY KEY (Part_id, Location_id)
);

/* table PART_W_MFR */
create table SWCOMPANY.PART_W_MFR(
	Part_id int not null, /* fk to PART Part_id */
    Mfr_name varchar(50) not null, /* fk to MANUFACTURER Mfr_name */
    
    PRIMARY KEY (Part_id, Mfr_name)
);

/* table PLACED_IN */ 
create table SWCOMPANY.PLACED_IN
(	Part_id int not null, /* fk to PART Part_id */
	Container_id int not null, /* fk to CONTAINER Container_id */
    
	PRIMARY KEY (Part_id, Container_id)
);

/* table MANUFACTURER */
create table SWCOMPANY.MANUFACTURER(
	Mfr_name varchar(50) not null,
    Payment_method varchar(50),
    Billing_address varchar(50) not null,
    Phone varchar(20),
    
    PRIMARY KEY (Mfr_name)
);

/* table EMPLOYEE */
create table SWCOMPANY.EMPLOYEE(
	Emp_id int not null,
    Fname varchar(50),
    Lname varchar(50) not null,
    Gender char(1) check (Gender in ('F','M')),
    Phone varchar(20) not null,
    Email varchar(50) not null,
    Dept_id int, /* fk to DEPARTMENT Dept_id */
    Job_type varchar(50) not null,
    Sup_id int, /* fk to EMPLOYEE Emp_id */
    
	PRIMARY KEY (Emp_id)
);

/* table EMP_ADDRESS */
create table SWCOMPANY.EMP_ADDRESS(
	Emp_id int not null, /* fk to EMPLOYEE Emp_id */
    State varchar(50),
    City varchar(50),
    Street varchar(50),
    
    PRIMARY KEY (Emp_id)
);

/* table EMP_BENEFIT */
create table SWCOMPANY.EMP_BENEFIT(
	Emp_id int not null, /* fk to EMPLOYEE Emp_id */
    Benefit varchar(50) not null,
    
    PRIMARY KEY (Emp_id)
);

/* table EMP_TAX */
create table SWCOMPANY.EMP_TAX(
	Emp_id int not null, /* fk to EMPLOYEE Emp_id */
    Marital_status char(1) check (Marital_status in ('Y','N')),
    Dependents_number int check (Dependents_number >=0),
    Exemptions_claimed int check (Exemptions_claimed >=0),
    Extra_withholding int check (Extra_withholding >=0),
    
	PRIMARY KEY (Emp_id)
);

/* table EMP_H_SALARY */
create table SWCOMPANY.EMP_H_SALARY(
	Emp_id int not null, /* fk to EMPLOYEE Emp_id */
    Hourly_salary float default (8.8),
    Overtime_hour int check (Overtime_hour >=0 and Overtime_hour <=8),
    Shift_differential float default (0.3),
    Hours int not null,
    
    PRIMARY KEY (Emp_id)
);

/* table EMP_M_SALARY */
create table SWCOMPANY.EMP_M_SALARY(
	Emp_id int not null, /* fk to EMPLOYEE Emp_id */
    Monthly_salary float default (2000.0),
    
    PRIMARY KEY (Emp_id)
);

/* table EMP_S_SALARY */
create table SWCOMPANY.EMP_S_SALARY(
	Emp_id int not null, /* fk to EMPLOYEE Emp_id */
    Salary float default (2200.0),
    Commission_percentage float check (Commission_percentage>=0 and Commission_percentage<=0.5),
    
    PRIMARY KEY (Emp_id)
);

/* table CUSTOMER */
create table SWCOMPANY.CUSTOMER
(	Customer_id int not null,
	Fname varchar(50),
    Lname varchar(50) not null,
    Gender char(1) check (Gender in ('F','M')),
	Email varchar(50) not null,
    Phone varchar(50) not null,
    In_system char(1) check (In_system in ('Y','N')),
    
	PRIMARY KEY (Customer_id)
);

/* table CUST_SHIP_ADDRESS */
create table SWCOMPANY.CUST_SHIP_ADDRESS
(	Customer_id int not null, /* fk to CUSTOMER Customer_id */
	State varchar(50),
    City varchar(50),
    Street varchar(100),
    
    PRIMARY KEY (Customer_id)
);

/* table PRODUCT */
create table SWCOMPANY.PRODUCT
(	Product_id int not null,
	Name varchar(50) not null,
    Price float check (price > 0.0),
    Amount int check (Amount >= 0),
    
    PRIMARY KEY (Product_id)
);

/* table PRODUCT_W_ORDER */ 
create table SWCOMPANY.PRODUCT_W_ORDER
(	Product_id int not null, /* fk to PRODUCT Product_id */
	Order_id int not null, /* fk to ORDER Order_id*/
    Quantity int check (Quantity >= 0),
    Delivery_type varchar(50),
    Delivery_status char(1) check (Delivery_status in ('Y','N')),
    
    PRIMARY KEY (Product_id, Order_id)
);

/* table CONTAINER */ 
create table SWCOMPANY.CONTAINER
(	Container_id int not null,
	Shipping_status char(1) check (Shipping_status in ('Y','N')),
	Volume float check (Volume >= 15.0),
    Location_id int, /* fk to LOCATION Loc_id */
    
    PRIMARY KEY (Container_id)
);

/* table ORDER */ 
create table SWCOMPANY.ORDER
(	Order_id int not null,
	Customer_id int not null, /* fk to CUSTOMER Customer_id */
    Dept_id int not null, /* fk to DEPARTMENT Dept_id */
	Sale_region varchar(50) not null,
	Order_format varchar(50) not null,
    Review_status char(1) check (Review_status in ('Y','N')),
    Complete_shipped char(1) check (Complete_shipped in ('Y','N')),
    
	PRIMARY KEY (Order_id)
);

/* table BILL */ 
create table SWCOMPANY.BILL
(	Bill_id int not null,
	Customer_id int not null, /* fk to CUSTOMER Customer_id */
    Order_id int not null, /* fk to ORDER Order_id */
	Due_date date,
    Late_fee float check (Late_fee >= 0.0),
    Status char(1) check (Status in ('Y','N')),
	Discount_amount float check (Discount_amount >= 0.0 and Discount_amount < 1.0),
    Small_item_fee float check (Small_item_fee >= 0.0),
    
    PRIMARY KEY (Bill_id)
);

/* table ROUTING_SHEET */ 
create table SWCOMPANY.ROUTING_SHEET
(	Sheet_id int not null,
	Product_id int not null, /* fk to PRODUCT Product_id */
    Employee_id int, /* fk to EMPLOYEE Emp_id */
    Expected_time int check (Expected_time >= 0),
    Start_time datetime not null,
    End_time datetime,
    
    PRIMARY KEY (Sheet_id)
);

/* table RSHEET_STEP */ 
create table SWCOMPANY.RSHEET_STEP
(	Sheet_id int not null, /* fk to ROUTING_SHEET Sheet_id */
	Step_no int check (Step_no > 0),
	Step_name varchar(50),
    
	PRIMARY KEY (Sheet_id, Step_no)
);

/* table BOM */ 
create table SWCOMPANY.BOM
(	Bom_id int not null,
	Product_id int not null, /* fk to PRODUCT Product_id */
    
    PRIMARY KEY (Bom_id)
);

/* table BOM_W_PART */ 
create table SWCOMPANY.BOM_W_PART
(	Bom_id int not null, /* fk to BOM Bom_id */
	Part_id int not null, /* fk to PART Part_id */
	Quantity int check (Quantity > 0),
    
    PRIMARY KEY (Bom_id, Part_id)
);

/* table CUSTOMER_RELATION_GROUP */ 
create table SWCOMPANY.CUSTOMER_RELATION_GROUP
(	Customer_id int not null, /* fk to CUSTOMER Customer_id */
	Complaints_id int,
    Score int check (Score >=0),
    Complaints varchar(200),
    Complaints_status varchar(20) check (Complaints_status in ('resolved','unresolved')),

	PRIMARY KEY (Customer_id, Complaints_id)
);

/* table CONTACT_PERSON */
create table SWCOMPANY.CONTACT_PERSON
(	Customer_id int not null, /* fk to CUSTOMER Customer_id */
	Fname varchar(50),
	Lname varchar(50) not null, 
    Phone varchar(50) not null,
    
    PRIMARY KEY (Customer_id, Lname)
);

