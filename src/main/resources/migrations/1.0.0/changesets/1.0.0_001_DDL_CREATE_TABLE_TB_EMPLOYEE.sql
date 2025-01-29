--liquibase formatted sql

--changeset murilojatoba:1.0.0_001_DDL_CREATE_TABLE_TB_EMPLOYEE

create sequence if not exists employee.tb_employee_seq;
alter sequence employee.tb_employee_seq owner to postgres;

create table employee.tb_employee (
	id int4 not null default nextval('employee.tb_employee_seq'),
	ds_name varchar(200) not null,
	ds_address varchar(500) not null,
	constraint tb_empresa_pk primary key (id)
);

--rollback drop table employee.tb_employee;
--rollback drop sequence employee.tb_employee_seq;
