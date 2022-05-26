--department
insert into department(department_id,department_name,DEPARTMENT_MANAGER) values(11,'Accident and Emergency',2345678522);
insert into department(department_id,department_name,DEPARTMENT_MANAGER) values(22,'Burn Center',2345678912);
insert into department(department_id,department_name,DEPARTMENT_MANAGER) values(33,'Coronary Care Unit',1234567891);
insert into department(department_id,department_name,DEPARTMENT_MANAGER) values(44,'Otolaryngology (Ear, Nose, and Throat)',3316494665);
insert into department(department_id,department_name,DEPARTMENT_MANAGER) values(55,'General Surgery',7851665563);
insert into department(department_id,department_name,DEPARTMENT_MANAGER) values(99,'Cleaner',6541230258);
--degree
insert into degree values(1,'General practitioner');
insert into degree values(2,'SAS doctor');
insert into degree values(3,'Consultant');
insert into degree values(4,'Junior doctor');
insert into degree values(5,'Medical student');
insert into degree values(99,'Academic doctor');
insert into degree values(77,'Cleaner');
--room
insert into room values(1,11,9,2);
insert into room values(2,22,5,3);
insert into room values(3,33,3,2);
insert into room values(4,44,9,1);
insert into room values(5,55,2,1);
insert into room values(6,55,1,0);
insert into room values(99,99,1,1);
--doctors 'rooms'
insert into room values(10,11,1,1);
insert into room values(20,22,2,1);
insert into room values(30,33,1,1);
insert into room values(40,44,2,1);
insert into room values(50,55,2,0);
--employees
insert into employee values(1234567891,'Mahmoud','Abu-Zubaidah',50,1,99,null,to_date('12/07/2001','DD/MM/YYYY'),10090.95);
insert into employee values(2345678522,'Ali','Ramy',30,2,4,1234567891,to_date('20/06/2011','DD/MM/YYYY'),1000.90);
insert into employee values(1025896314,'Amer','Malkawi',40,3,2,1234567891,to_date('11/05/2005','DD/MM/YYYY'),1900.30);
insert into employee values(3316494665,'Ahmad','jurah',10,1,5,2345678912,to_date('01/08/2015','DD/MM/YYYY'),5000.20);
insert into employee values(6541230258,'Omar','abady',10,2,5,1234567891,to_date('26/03/2001','DD/MM/YYYY'),6010.74);
insert into employee values(2345678912,'Shady','Khalid',20,2,99,1234567891,to_date('09/11/2008','DD/MM/YYYY'),11000.90);
insert into employee values(9985632014,'Lara','Ahmad',99,99,77,2345678912,to_date('26/06/2011','DD/MM/YYYY'),900.00);
insert into employee values(9985552014,'Jad','Jon',99,99,77,2345678912,to_date('26/06/2020','DD/MM/YYYY'),500.00);
insert into employee values(7851665563,'Karam','Rwashdeh',30,3,3,2345678912,to_date('26/03/2010','DD/MM/YYYY'),6000.00);
--team
insert into team values(1,1234567891,22);
insert into team values(2,2345678912,55);
insert into team values(99,9985632014,99);
insert into team values(3,1025896314,11);
--injured
insert into injured values(1111111111,'Noor','Owlean',4,3,sysdate,null,100,'Treating');
insert into injured values(2222222222,'Shady','zoubi',6,1,to_date('16/10/2021','DD/MM/YYYY'),to_date('16/12/2021','DD/MM/YYYY'),10000,'Treated');
insert into injured values(3333333333,'Fatema','Ztoon',1,3,to_date('26/06/2019','DD/MM/YYYY'),to_date('07/10/2020','DD/MM/YYYY'),100,'Death');
insert into injured values(4444444444,'Wassem','Ghader',5,2,to_date('16/08/2021','DD/MM/YYYY'),null,1400,'Treating');
insert into injured values(5555555555,'Lama','Fady',3,2,to_date('16/08/2021','DD/MM/YYYY'),to_date('20/11/2021','DD/MM/YYYY'),400,'Death');
insert into injured values(6666666666,'Raghad','Jomango',1,1,to_date('16/08/2018','DD/MM/YYYY'),null,4800,'Treating');
--OPRATIONS
insert into OPRATIONS values(1112223334,'Partial colectomy',2222222222,5,to_date('16/10/2021','DD/MM/YYYY'),to_date('16/12/2021','DD/MM/YYYY'),500,'https://www.mayoclinic.org');
insert into OPRATIONS values(1112223335,'Prostatectomy',2222222222,4,to_date('10/10/2021','DD/MM/YYYY'),to_date('11/12/2021','DD/MM/YYYY'),1500,'https://www.mayoclinic.org');
insert into OPRATIONS values(1112223344,'Appendectomy',6666666666,2,to_date('10/10/2018','DD/MM/YYYY'),to_date('10/10/2018','DD/MM/YYYY'),10500,'https://www.mayoclinic.org');
insert into OPRATIONS values(1113336255,'Breast biopsy',6666666666,1,to_date('10/10/2021','DD/MM/YYYY'),to_date('11/12/2021','DD/MM/YYYY'),100,'https://www.mayoclinic.org');
insert into OPRATIONS values(1113336333,'Cholecystectomy.',5555555555,3,to_date('19/11/2021','DD/MM/YYYY'),to_date('20/11/2021','DD/MM/YYYY'),50,'https://www.mayoclinic.org');
insert into OPRATIONS values(1113369857,'Debridement of wound, burn, or infection.',4444444444,6,to_date('19/12/2021','DD/MM/YYYY'),to_date('20/12/2021','DD/MM/YYYY'),800,'https://www.mayoclinic.org');
insert into OPRATIONS values(1113336587,'Carotid endarterectomy.',3333333333,5,to_date('07/10/2021','DD/MM/YYYY'),to_date('07/10/2021','DD/MM/YYYY'),50,'https://www.mayoclinic.org');
insert into OPRATIONS values(1187955569,'Breast biopsy.',1111111111,2,to_date('06/01/2022','DD/MM/YYYY'),null,5010,'https://www.mayoclinic.org');
--starting_constraint_actions
--constraint
--employee
alter table employee add constraint employee_degree_degreeID_fk foreign key(degree_id) references degree(degree_id);
alter table employee add constraint employee_team_teamID_fk foreign key(team_id) references team(team_id);
alter table employee add constraint employee_room_roomID_fk foreign key(room_id) references room(room_id);
alter table employee add constraint emp_empM_manager_fk foreign key(manager_ssn) references employee(ssn);
--OPRATIONS
alter table OPRATIONS add constraint OPRATIONS_room_roomID_fk foreign key(room_id) references room(room_id);
alter table OPRATIONS add constraint OPRATIONS_injured_patientID_fk foreign key(PATIENT_ID) references injured(ssn);
--team
alter table team add constraint team_employee_manager_fk foreign key(TEAM_MANAGER_SSN) references employee(ssn);
alter table team add constraint team_department_depID_fk foreign key(department_id) references department(department_id);
--injured
alter table injured add constraint injured_team_teamID_fk foreign key(team_id) references team(team_id);
alter table injured add constraint injured_room_roomID_fk foreign key(room_id) references room(room_id);
--department
alter table department add constraint department_employee_manager_fk foreign key(DEPARTMENT_MANAGER) references employee(ssn);
--room
alter table room add constraint room_RoomDepID_fk foreign key(ROOM_DEPARTMENT_ID) references department(department_id);


--create_view_for_form

create or replace view col_info as select i.ssn, concat(i.first_name,concat(' ',i.last_name)) as p_name , concat(e.first_name,concat(' ',e.last_name)) as Doctor_Name,d.Department_name,i.room_id,i.costs,i.state,i.date_in
from injured i,employee e,Department d ,team t
where i.team_id= t.team_id and t.team_manager_ssn= e.ssn and t.department_id=d.Department_id;


-- create_sequence_for_team_add_form

create sequence team_id_seq
start with 4
maxvalue 99;
-- create sequence for department

create sequence dep_id_seq
start with 100;
--create view for employee_department manager

create or replace view employee_info as select first_name,last_name,degree_name,ssn,manager_ssn
from degree,employee
where employee.degree_id = degree.degree_id;

--create sequence for dgree id

create sequence degree_id_seq
start with 6
maxvalue 77;


--create sequence room_id sequence
create sequence room_id_seq
start with 99
maxvalue 1000;
--create sequence for prosedure_id
create sequence proc_id_seq
start with 1;
-- Query to retrieve the cost for all surgery have done
 create or replace view patient_costs as
 select ssn ,  concat(first_name,concat(' ',last_name)) as Name ,sum(cost) as Costs
 from injured,oprations
 where patient_id = ssn
 group by ssn ,concat(first_name,concat(' ',last_name));