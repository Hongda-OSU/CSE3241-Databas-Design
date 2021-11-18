alter table SWCOMPANY.LOCATED_AT
add constraint fk_Loc foreign key(Location_id) references SWCOMPANY.LOCATION (Loc_id) on delete cascade,
add constraint fk_Loc_Dept foreign key(Department_id) references SWCOMPANY.DEPARTMENT (Dept_id) on delete cascade;

alter table SWCOMPANY.LOCATION
add constraint fk_Loc_Mgr foreign key (Loc_mgr_id) references SWCOMPANY.EMPLOYEE (Emp_id)
on delete set null;

alter table SWCOMPANY.LOC_ADDRESS
add constraint fk_Loc_Addr foreign key (Location_id) references SWCOMPANY.LOCATION (Loc_id)
on delete cascade;

alter table SWCOMPANY.COLLECT
add constraint fk_Col_Loc foreign key(Location_id) references SWCOMPANY.LOCATION (Loc_id) on delete cascade,
add constraint fk_Col_Part foreign key(Part_id) references SWCOMPANY.PART (Part_id) on delete cascade;

alter table SWCOMPANY.PART_W_PRODUCT
add constraint fk_Part foreign key(Part_id) references SWCOMPANY.PART (Part_id) on delete cascade,
add constraint fk_Part_Prod foreign key(Product_id) references SWCOMPANY.PRODUCT (Product_id) on delete cascade;

alter table SWCOMPANY.PART_W_MFR
add constraint fk_Part3 foreign key(Part_id) references SWCOMPANY.PART (Part_id) on delete cascade,
add constraint fk_Part_Mfr foreign key(Mfr_name) references SWCOMPANY.MANUFACTURER (Mfr_name) on delete cascade;

alter table SWCOMPANY.PLACED_IN
add constraint fk_Part4 foreign key (Part_id) references SWCOMPANY.PART (Part_id) on delete cascade,
add constraint fk_Part_Cont foreign key (Container_id) references SWCOMPANY.CONTAINER (Container_id) on delete cascade;

alter table SWCOMPANY.EMPLOYEE
add constraint fk_Emp_Dept foreign key (Dept_id) references SWCOMPANY.DEPARTMENT (Dept_id) on delete set null,
add constraint fk_Emp_Sup foreign key (Sup_id) references SWCOMPANY.EMPLOYEE (Emp_id) on delete set null;


alter table SWCOMPANY.EMP_ADDRESS
add constraint fk_Emp_Addr foreign key (Emp_id) references SWCOMPANY.EMPLOYEE (Emp_id) on delete cascade;

alter table SWCOMPANY.EMP_BENEFIT
add constraint fk_Emp_Benf foreign key (Emp_id) references SWCOMPANY.EMPLOYEE (Emp_id) on delete cascade;

alter table SWCOMPANY.EMP_TAX
add constraint fk_Emp_Tax foreign key (Emp_id) references SWCOMPANY.EMPLOYEE (Emp_id) on delete cascade;

alter table SWCOMPANY.EMP_H_SALARY
add constraint fk_Emp_Hsal foreign key (Emp_id) references SWCOMPANY.EMPLOYEE (Emp_id) on delete cascade;

alter table SWCOMPANY.EMP_M_SALARY
add constraint fk_Emp_Msal foreign key (Emp_id) references SWCOMPANY.EMPLOYEE (Emp_id) on delete cascade;

alter table SWCOMPANY.EMP_S_SALARY
add constraint fk_Emp_Ssal foreign key (Emp_id) references SWCOMPANY.EMPLOYEE (Emp_id) on delete cascade;

alter table SWCOMPANY.CUST_SHIP_ADDRESS
add constraint fk_Cust_Addr foreign key (Customer_id) references SWCOMPANY.CUSTOMER (Customer_id) on delete cascade;

alter table SWCOMPANY.PRODUCT_W_ORDER
add constraint fk_Prod foreign key (Product_id) references SWCOMPANY.PRODUCT (Product_id),
add constraint fk_Prod_Order foreign key (Order_id) references SWCOMPANY.ORDER (Order_id) on delete cascade;

alter table SWCOMPANY.CONTAINER
add constraint fk_Cont_Loc foreign key (Location_id) references SWCOMPANY.LOCATION (Loc_id) on delete set null;

alter table SWCOMPANY.ORDER
add constraint fk_Order_Cust foreign key (Customer_id) references SWCOMPANY.CUSTOMER (Customer_id) on delete cascade,
add constraint fk_Order_Dept foreign key (Dept_id) references SWCOMPANY.DEPARTMENT (Dept_id) on delete cascade;

alter table SWCOMPANY.BILL
add constraint fk_Bill_Cust foreign key (Customer_id) references SWCOMPANY.CUSTOMER (Customer_id) on delete cascade,
add constraint fk_Bill_Order foreign key (Order_id) references SWCOMPANY.ORDER (Order_id) on delete cascade;

alter table SWCOMPANY.ROUTING_SHEET
add constraint fk_Rsheet_Prod foreign key (Product_id) references SWCOMPANY.PRODUCT (Product_id) on delete cascade,
add constraint fk_Rsheet_Emp foreign key (Employee_id) references SWCOMPANY.EMPLOYEE (Emp_id) on delete set null;

alter table SWCOMPANY.RSHEET_STEP
add constraint fk_Rsheet_St foreign key (Sheet_id) references SWCOMPANY.ROUTING_SHEET (Sheet_id) on delete cascade;

alter table SWCOMPANY.BOM
add constraint fk_Bom_Prod foreign key (Product_id) references SWCOMPANY.PRODUCT (Product_id) on delete cascade;

alter table SWCOMPANY.BOM_W_PART
add constraint fk_Bom foreign key (Bom_id) references SWCOMPANY.BOM (Bom_id) on delete cascade,
add constraint fk_Bom_Part foreign key (Part_id) references SWCOMPANY.PART (Part_id) on delete cascade;

alter table SWCOMPANY.CUSTOMER_RELATION_GROUP
add constraint fk_Rel_Cust foreign key (Customer_id) references SWCOMPANY.CUSTOMER (Customer_id) on delete cascade;

alter table SWCOMPANY.CONTACT_PERSON
add constraint fk_Cot_Cust foreign key (Customer_id) references SWCOMPANY.CUSTOMER (Customer_id) on delete cascade;
