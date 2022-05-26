create table Injured(
ssn number(10) constraint injured_ssn_pk primary key,
first_name varchar2(15) constraint injured_firstName_nn not null,
last_name varchar2(15) constraint injured_lastName_nn not null,
room_id number(3),
team_id number(2),
date_in date default sysdate,
date_out date,
costs number(9,2),
state varchar2(8) default 'treating' constraint injured_state_cc check(lower(state)in ('treating', 'treated', 'death')));
--new table
create table Room (
room_id number(3) constraint room_roomID_pk primary key,
room_department_id  number(2),
capacity number(1),
Used_position number(1));
--new table
create table employee(
ssn number(10) constraint employee_ssn_pk primary key,
first_name varchar2(15) constraint employee_firstName_nn not null,
last_name varchar2(15) constraint employee_lastName_nn not null,
room_id number(3),
team_id number(2),
degree_id number(2),
manager_ssn number(10),
hire_date date default sysdate,
salary number(7,2));
--new table
create table OPRATIONS(
Procedure_id number(10) constraint Procedure_id_pk primary key,
Procedure_name varchar2(100) constraint Procedure_Name_nn not null,
patient_id number(10),
room_id number(3),
start_date date default sysdate,
end_date date,
cost number(9,2),
describe varchar2(100));
--new table
create table Department(
Department_id number(3) constraint department_id_pk primary key,
Department_name varchar2(100) constraint department_Name_nn not null,
Department_manager number(10));
--new table
create table degree(
degree_id number(2) constraint degree_id_pk primary key,
degree_name varchar2(100) constraint degree_Name_nn not null);
--new table
create table team(
team_id number(2) constraint team_id_pk primary key,
team_manager_ssn number(10) constraint team_manager_nn not null,
department_id number(3) constraint team_department_nn not null);
