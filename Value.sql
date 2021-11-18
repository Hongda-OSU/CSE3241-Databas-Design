insert into SWCOMPANY.PART
values (3110, 'Tape', 1, 4),
	   (3111, 'Box', 2, 4),
       (3112, 'Plastic Cover', 1, 3),
       (3113, 'Wheel', 2, 5),
       (3114, 'Gloves', 3, 10);
       
insert into SWCOMPANY.PART_W_LOCATION
values  (3110, 2431),
		(3111, 2432),
        (3112, 2433),
        (3113, 2434),
        (3114, 2435);
        
insert into SWCOMPANY.MANUFACTURER
values  ('FeXc', 'Check', '123 N C Avenue, Ohio', 209-561-8945),
		('Lkheed', 'Check', '54 King Avenue, California', 209-571-4535),
        ('FoxKon', 'Check', '923 D Avenue, Washington', 323-435-9879),
        ('JmLa', 'Check', '23 S Avenue, Illinois', 206-763-019),
        ('Frk', 'Check', '1595 N Avenue, New Jersey', 321-321-3212);
        
insert into SWCOMPANY.PART_W_MFR
values  (3110, 'FeXc'),
		(3111, 'Lkheed'),
		(3112, 'FoxKon'),
		(3113, 'JmLa'),
		(3114, 'Frk');

insert into SWCOMPANY.DEPARTMENT
values  (1230, 12, 5210, 'Accounting'),
		(1231, 20, 5211, 'Sales'),
        (1232, 56, 5212, 'Inventory'),
        (1233, 10, 5213, 'Payroll'),
        (1234, 20, 5214, 'Purchasing'),
        (1235, 6, 5215, 'Executive');
        
insert into SWCOMPANY.EMPLOYEE
values  
		(5990, 'JoVanna', 'Corleone', 'F', '803-123-4736', 'corleone.1@sw.com', 1235, 'Office Manager', null),
		(5210, 'Kevin', 'Malone', 'M', '802-832-9251', 'malone.1@sw.com', 1230, 'Accounting Manager', 5990),
		(5211, 'Jim', 'Halpert', 'M', '802-845-0195', 'halpert.1@sw.com', 1231, 'Sales Manager', 5990),
        (5212, 'Daryl', 'Philbin', 'M', '802-213-4321', 'daryl.1@sw.com', 1232, 'Warehouse Superviser', 5990),
        (5213, 'April', 'Ludgate', 'F', '802-524-9322', 'ludgate.1@sw.com', 1233, 'Payroll Specialist', 5990),
        (5214, 'Katie', 'Bell', 'F', '802-847-4732', 'bell.1@sw.com', 1234, 'Purchasing Agent', 5990),
        (5215, 'John', 'Smith', 'M', '801-832-0583', 'smith.1@sw.com', 1232, 'Warehouse Worker', 5212),
        (5216, 'Mark', 'Kith', 'M', '801-234-0463', 'lith.1@sw.com', 1232, 'Warehouse Worker', 5213),
        (5217, 'Owen', 'Wong', 'M', '802-423-4054', 'wong.1@sw.com', 1230, 'Accountant', 5210),
        (5218, 'Jason', 'Lee', 'M', '802-120-6219', 'lee.1@sw.com', 1231, 'Sales Person', 5210),
        (5310, 'Esson', 'Smith', 'M', '803-593-9561', 'smith.2@sw.com', 1235, 'Location Manager', 5990),
        (5311, 'Eddy', 'Peng', 'M', '803-434-2411', 'peng.1@sw.com', 1235, 'Location Manager', 5990),
        (5312, 'May', 'Cheng', 'F', '111-563-3934', 'cheng.2@sw.com', 1235, 'Location Manager', 5990),
        (5313, 'Bowen', 'Kali', 'M', '432-34-343', 'kali.1@sw.com', 1235, 'Location Manager', 5990),
        (5314, 'Deloris', 'Ja', 'F', '543-452-0185', 'ja.1@sw.com', 1235, 'Location Manager', 5990);
        
insert into SWCOMPANY.LOCATION
values  (2431, 5310, 'Non-emergent'),
		(2432, 5311, 'Non-emergent'),
        (2433, 5312, 'Non-emergent'),
        (2434, 5313, 'Non-emergent'),
        (2435, 5314, 'Non-emergent');


insert into SWCOMPANY.LOCATED_AT
values  (2431, 1230),
		(2432, 1231),
        (2433, 1232),
        (2434, 1233),
        (2435, 1234);
        
insert into SWCOMPANY.LOC_ADDRESS
values  (2431, 'Ohio', 'Dayton', '142 N 1st street'),
		(2432, 'Ohio', 'Columbus', '876 S 2nd street'),
		(2433, 'Washington', 'Seattle', '234 N CH street'),
		(2434, 'Oregon', 'Portland', '564 N 7st street'),
		(2435, 'California', 'San Diego', '904 N 3rd street');
        
insert into SWCOMPANY.COLLECT
values  (2431,3110),
		(2432,3111),
		(2433,3112),
		(2434,3113),
		(2435,3114);

insert into SWCOMPANY.PRODUCT
values  (4520, 'ProductA', 320.23, 2),
		(4521, 'ProductB', 400.34, 3),
        (4522, 'ProductC', 200.00, 4),
        (4523, 'ProductD', 450.8, 2),
        (4524, 'ProductE', 120.47, 5);

insert into SWCOMPANY.PART_W_PRODUCT
values	(3110, 4520),
		(3111, 4520),
		(3112, 4521),
        (3113, 4522),
        (3114, 4522);

insert into SWCOMPANY.EMP_ADDRESS
values (5210, 'PA', 'Scranton', '7312 N Street'),
	   (5211, 'FL', 'Tampa Bay', '987 12th Avenue'),
       (5212, 'NC', 'Durham', '2342 20th Street'),
       (5213, 'OH', 'Columbus', '433 N Street'),
       (5214, 'CA', 'San Diego', '462 3rd Street'),
       (5215, 'OH', 'Columbus', '433 N Street');

insert into SWCOMPANY.EMP_BENEFIT
values  (5210, 'Health Insurance'),
	    (5211, 'Health Insurance'),
	    (5212, '401K'),
		(5213, 'Life Insurance'),
        (5214, 'Health Insurance'),
		(5215, 'Dental'),
        (5216, '401K'),
        (5217, 'Health Insurance'),
        (5218, 'Life Insurance'),
        (5990, 'Dental');
        
insert into SWCOMPANY.EMP_TAX
values  (5210, 'Y', 1, 0, 0),
		(5211, 'N', 0, 100, 0),
		(5212, 'N', 0, 0, 0),
		(5213, 'Y', 3, 300, 100),
		(5214, 'Y', 1, 0, 0),
		(5215, 'Y', 2, 0, 0),
        (5216, 'Y', 5, 200, 100),
        (5217, 'Y', 1, 200, 0),
        (5218, 'N', 0, 0, 0),
        (5990, 'N', 0, 0, 0);

insert into SWCOMPANY.EMP_H_SALARY
values  (5215, 19.5, 0, 0, 40),
		(5216, 23.0, 7, 0, 47);

insert into SWCOMPANY.EMP_M_SALARY
values  (5210, 4000),
		(5212, 4899),
        (5213, 5000),
        (5214, 5000),
        (5990, 6000),
        (5217, 4500),
        (5310, 5500),
        (5311, 5300),
        (5312, 5400),
        (5313, 5600),
        (5314, 5500);
        
insert into SWCOMPANY.EMP_S_SALARY
values  (5211, 5500, 0.3),
		(5218, 4400, 0.4);
        
insert into SWCOMPANY.CUSTOMER
values  (6001, 'Josh', 'Hudson', 'M', 'hudson@gmail.com', '214-345-2091', 'Y'),
		(6002, 'May', 'Emily', 'F', 'emily@hd.com', '213-432-4971', 'Y'),
        (6003, 'Leslie', 'Day', 'F', 'lh@yahoo.com', '213-236-5021', 'Y'),
        (6004, 'Marcus', 'Han', 'M', 'han@ewrt.com', '213-345-2341', 'Y'),
        (6005, 'Nathan', 'Churchill', 'M', 'chchil@dha.com', '241-345-1231', 'Y');
        
insert into SWCOMPANY.CUST_SHIP_ADDRESS
values  (6001, 'Ohio', 'Dayton', '3123 N High Street'),
		(6002, 'Oregon', 'Portland', '183 S 12th Street'),
        (6003, 'Washington', 'Seattle', '3049 N 3rd Street'),
        (6004, 'Colorado', 'Denver', '91 W 123 Avenue'),
        (6005, 'Illinois', 'Chicago', '234 E 382 Avenue');
        
insert into SWCOMPANY.ORDER
values  (7001, 6001, 1230, 'Domestic', 'Phone', 'Y', 'Y'),
		(7002, 6002, 1231, 'Internation', 'Website', 'Y', 'Y'),
        (7003, 6003, 1232, 'Domestic', 'Phone', 'Y', 'Y'),
        (7004, 6004, 1233, 'Domestic', 'Website', 'Y', 'Y'),
        (7005, 6005, 1234, 'Domestic', 'Phone', 'Y', 'Y');
        
insert into SWCOMPANY.PRODUCT_W_ORDER
values  (4520, 7001, 1, 'Truck', 'Y'),
		(4521, 7002, 2, 'Train', 'Y'),
        (4522, 7003, 2, 'Train', 'N'),
        (4523, 7004, 1, 'Truck', 'Y'),
        (4524, 7005, 3, 'Truck', 'Y');


insert into SWCOMPANY.CONTAINER
values  (8001, 'Y', 15.3, 2431),
		(8002, 'N', 20, 2432),
        (8003, 'Y', 17, 2433),
        (8004, 'Y', 19, 2434),
        (8005, 'Y', 16.5, 2435);

insert into SWCOMPANY.PLACED_IN
values  (3110, 8001),
		(3111, 8002),
        (3112, 8003),
        (3113, 8004),
        (3114, 8005);
        
insert into SWCOMPANY.BILL
values  (9001, 6001, 7001, '2021-12-12', 0, 'Y', 0.7, 10),
		(9002, 6002, 7002, '2021-5-21', 120, 'Y', 0, 0),
        (9003, 6003, 7003, '2021-12-31', 0, 'Y', 0.15, 0),
        (9004, 6004, 7004, '2021-6-12', 90, 'Y', 0.8, 0),
        (9005, 6005, 7005, '2021-12-31', 0, 'Y', 0, 20);
        
insert into SWCOMPANY.ROUTING_SHEET
values  (0001, 4520, 5215, 30, '2021-5-1 10:23:24', '2021-5-1 10:43:14'),
		(0002, 4521, 5215, 60, '2021-5-3 10:25:24', '2021-5-3 11:43:14'),
		(0003, 4522, 5216, 60, '2021-5-5 14:23:24', '2021-5-5 15:01:55'),
		(0004, 4523, 5215, 50, '2021-5-5 9:46:24', '2021-5-5 10:15:34'),
        (0005, 4524, 5216, 45, '2021-5-6 9:00:45', '2021-5-6 9:39:56');
        
insert into SWCOMPANY.RSHEET_STEP
values  (0001, 333001, 'ATA'),
		(0002, 333002, 'NFJ'),
        (0002, 333003, 'GJHUQW'),
        (0002, 333004, 'FJU'),
        (0003, 333005, 'FGOE'),
        (0003, 333006, 'FUE');
        
insert into SWCOMPANY.BOM
values  (222001, 4520),
		(222002, 4521),
        (222003, 4522),
        (222004, 4523),
        (222005, 4524);
        
insert into SWCOMPANY.BOM_W_PART
values  (222001, 3110, 1),
		(222001, 3111, 2),
        (222002, 3110, 1),
        (222002, 3113, 1),
        (222003, 3112, 1),
        (222003, 3113, 1);
        
insert into SWCOMPANY.CUSTOMER_RELATION_GROUP
values  (6001, 444001, 90, 'Slow Delivry', 'resolved'),
		(6002, 444002, 98, 'Incomplete Manual', 'resolved'),
        (6003, 444003, 70, 'Terrible attitudes of sales person', 'resolved'),
        (6004, 444004, 100, null, null),
        (6005, 444005, 90, 'Slow Delivry', 'resolved');

insert into SWCOMPANY.CONTACT_PERSON
values  (6001, 'Mark', 'Brando', '231-204-2848'),
		(6001, 'Cici', 'Kon', '231-232-3532'),
        (6002, 'Kale', 'Wish', '836-015-5210'),
        (6003, 'Newton', 'Leb', '424-231-3234'),
        (6004, 'Cush', 'Shang', '111-333-5180');