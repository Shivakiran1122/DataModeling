-- Hospital Management System
-- Table1 : Patient
use hospitalmanagementsystem;
create table patient
(
patientid  int primary key, 
patientname varchar(20),
patientage int,
medicalhistory  varchar(20),
phonenumber varchar(20),
emailid varchar(20)
);
-- ------------------------------------------------------------------------------------------------------------------------------
-- Table2 : Doctor
create table doctor
( 
doctorid int primary key,
doctorname varchar(20),
specialization varchar(20),
phonenumber varchar(20),
emailid varchar(20)
);
 -- -------------------------------------------------------------------------------------------------------------------------------
 -- Table3 :  Nurse
 create  table nurse
 (
 nurseid int primary key,
 nursename varchar(20),
 shift varchar(20),
 phonenumber varchar(20),
 emailid varchar(20)
 );
 
 -- --------------------------------------------------------------------------------------------------------------------------------
 -- Table5: patient and doctor (many to many)
 create table patient_doctor
 (
 pat_doctid int primary key,
 patientid int ,
 doctorid int,
 foreign key (patientid) references patient(patientid),
 foreign key (doctorid) references doctor(doctorid)
 );
 -- ---------------------------------------------------------------------------------------------------------------------------------
 -- Table 6:  patient and nurse (many to many)
 create table patient_nurse
 (
 pat_nurseid int primary key,
 patientid int ,
 nurseid int,
 foreign key (patientid) references patient(patientid),
 foreign key (nurseid) references nurse(nurseid)
 );
 
 
 -- ------------------------------------------------------------------------------------------------------------------------------
 -- Table7: Appointment(one to many)
 create  table appointment
 (
 appointmentid int primary key,
 appointmentdate date,
 appoinmenttime time,
 patientid int ,
 doctorid int,
 foreign key (patientid) references patient(patientid),
 foreign key (doctorid) references doctor(doctorid)
 );
-- -----------------------------------------------------------------------------------------------------------------------------------
-- Table8: MedicalRecord ( one to many)
create table medicalrecord
(
recordid int primary key,
diagnosis varchar(20),
treatment varchar(20),
patientid int ,
doctorid int,
prescription varchar(20),
foreign key (patientid) references patient(patientid),
foreign key (doctorid) references doctor(doctorid)
);
-- ------------------------------------------------------------------------------------------------------------------------------------------
-- Table9: Department (one department to many doctors)
create table department
(
departmentid int primary key,
departmentname varchar(20),
departmenthead varchar(20),
doctorid int,
foreign key (doctorid) references doctor(doctorid)
);
-- ------------------------------------------------------------------------------------------------------------------------------------------
-- Table10: Ward (one ward to many patients)
create table ward
(
wardid int primary key,
wardnumber int,
capacity int,
availability varchar(20),
patientid int,
foreign key (patientid) references patient(patientid)
);

