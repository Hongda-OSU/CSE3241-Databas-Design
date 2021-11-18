create index Dept_index on SWCOMPANY.DEPARTMENT (Dept_type);

create index Part_index on SWCOMPANY.PART (Num_remaining desc);

create index EMP_Lindex on SWCOMPANY.EMPLOYEE (Lname asc);

create index EMP_Gindex on SWCOMPANY.EMPLOYEE (Gender asc);

create index CUST_index on SWCOMPANY.CUSTOMER (In_system);

create index PROD_index on SWCOMPANY.PRODUCT (Price asc);

create index Cont_index on SWCOMPANY.CONTAINER (Volume desc);

create index ORDER_Rindex on SWCOMPANY.ORDER (Review_status asc);

create index ORDER_Cindex on SWCOMPANY.ORDER (Complete_shipped asc);
