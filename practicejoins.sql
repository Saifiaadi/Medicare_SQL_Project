use medicaredb;
-- 1. INNER JOIN
-- Get patient names with their appointment date and doctor name.
select P.fullname as PatientName,
A.Apponitment_Date,
D.fullname As Dr_Name
from patient_management P
join appointments_scheduling A ON P.patient_ID = A.Patient_ID
Join doctor_management D oN D.Doctor_ID = A.Doctor_ID;
select * from doctor_management ;


-- Get all patients and their appointment info, even if they haven’t booked yet.
select P.fullname as PatientName,
A.Apponitment_Date,
D.fullname As Dr_Name
from patient_management P
Left join appointments_scheduling A ON P.patient_ID = A.Patient_ID
Left Join doctor_management D oN D.Doctor_ID = A.Doctor_ID;

-- show doctors only
select D.fullname As Dr_Name , P.fullname as PatientName,
A.Apponitment_Date
from patient_management P
right join appointments_scheduling A ON P.patient_ID = A.Patient_ID
right Join doctor_management D oN D.Doctor_ID = A.Doctor_ID;

-- for all tables
select 
    d.fullname as dr_name, 
    p.fullname as patient_name,
    a.Apponitment_Date
from 
    patient_management p
left join Appointments_scheduling a on p.patient_id = a.patient_id
left join doctor_management d on d.doctor_id = a.doctor_id

union

select 
    d.fullname as dr_name, 
    p.fullname as patient_name,
    a.Apponitment_date
from
    patient_management p
right join appointments_scheduling a on p.patient_id = a.patient_id
right join doctor_management d on d.doctor_id = a.doctor_id;