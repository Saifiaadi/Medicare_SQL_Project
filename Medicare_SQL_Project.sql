-- Creating a Database--
create database MediCareDB;
use MediCareDB; 

-- creating table --

create table Patient_Management(
Patient_ID integer auto_increment primary key,
FullName varchar(30),
Date_of_birth date,
Phone_No integer,
email varchar(35),
address varchar(200),
Gender varchar (15)
);
create table Doctor_Management(
Doctor_id integer auto_increment primary key,
FullName varchar(30),
speciality varchar(25),
Phone_No integer,
email varchar(35)
);


create table Staff_Management(
Staff_id integer auto_increment primary key,
FullName varchar(30),
Staff_Department varchar(25),
Phone_No integer,
email varchar(35)
);

create table Appointments_Scheduling(
Appointment_ID integer auto_increment primary key,
patient_id integer,
Fullname varchar (30),
Doctor_id integer,
Apponitment_Date Date,
Apponitment_time time,
Descriptions varchar (200),
foreign key (patient_id) references Patient_Management(Patient_id),
foreign key (doctor_id) references Doctor_Management(doctor_id)
);

create table Medical_Records_History(
Record_id integer auto_increment primary key,
patient_id int,
doctor_id int,
Dates datetime,
Test_info Varchar(200),
Treatment varchar(20),
Diagnosis_status varchar(20),
foreign key (patient_id) references Patient_Management(Patient_id),
foreign key (doctor_id) references Doctor_Management(doctor_id)
);


create table Billing_Insurance(
Billing_Id int auto_increment primary key,
patient_id int,
doctor_id int,
appointment_id int,
insurance_details varchar(100),
Discounted_Amount int,
Amount_payable int,
foreign key (patient_id) references Patient_Management(Patient_id),
foreign key (doctor_id) references Doctor_Management(doctor_id),
foreign key (Appointment_ID) references Appointments_Scheduling(Appointment_ID)
);

create table Pharmacy_Inventory(
Medicine_id int auto_increment primary key,
Medicine_name Varchar(30),
Quantity int,
Supply_from varchar (30)
);



-- Inserting values--
INSERT INTO Patient_Management (FullName, Date_of_birth, Phone_No, Email, Address, Gender)
VALUES
('Adiba', '1998-04-01', '8368872', 'adibasaifi859@gmail.com', 'Delhi', 'Female'),
('Eliph', '1993-07-10', '7458872', 'eliph@gmail.com', 'Noida', 'Male');		


INSERT INTO Doctor_Management(FullName,speciality,Phone_No,email)
VALUES
('DR.bHATI', 'ORTHO','11234','ABC@GMAIL.COM'),
('DR.SHAMRA', 'GYNAE','54321','DEF@GMAIL.COM');


iNSERT INTO Staff_Management(FullName,Staff_Department,Phone_No,email)
VALUES 
('MISS AENA','WARD','123456','AA@GMAIL.COM'),
('MR VINAY','OT','126756','BB@GMAIL.COM');



iNSERT INTO Appointments_Scheduling( patient_id ,Fullname ,Doctor_id,Apponitment_Date,Apponitment_time,Descriptions )
VALUES ('1','aDIBA','1','2025-01-01','10:20' ,'REGULAR CHECKUP');



INSERT INTO Billing_Insurance(patient_id,doctor_id ,appointment_id ,insurance_details,Discounted_Amount,Amount_payable)
VALUES ('1','2','1', 'iCICI','2000','1000');