Use practise ;
Drop table if exists hospital_ed_operations;
CREATE TABLE hospital_ed_operations (
    visit_id INT PRIMARY KEY,
    patient_age INT,
    triage_acuity_level VARCHAR(50),
    department_referred VARCHAR(50),
    wait_time_minutes INT,
    treatment_duration_minutes INT,
    admission_status VARCHAR(50),
    billing_amount_inr DECIMAL(10, 2)
);



INSERT INTO hospital_ed_operations (visit_id, patient_age, triage_acuity_level, 
department_referred, wait_time_minutes, treatment_duration_minutes, admission_status, billing_amount_inr) VALUES
(1, 45, 'Level 2 - Emergent', 'Cardiology', 25, 180, 'Admitted', 45000.00),
(2, 28, 'Level 4 - Less Urgent', 'General Medicine', 85, 45, 'Discharged', 3500.00),
(3, 62, 'Level 1 - Resuscitation', 'Cardiology', 5, 240, 'Admitted', 85000.00),
(4, 34, 'Level 3 - Urgent', 'Orthopedics', 95, 120, 'Left Without Being Seen', 0.00),
(5, 71, 'Level 2 - Emergent', 'Neurology', 30, 210, 'Admitted', 62000.00),
(6, 19, 'Level 5 - Non-Urgent', 'General Medicine', 120, 30, 'Discharged', 2000.00),
(7, 53, 'Level 3 - Urgent', 'General Medicine', 75, 90, 'Discharged', 5500.00),
(8, 40, 'Level 4 - Less Urgent', 'Orthopedics', 110, 60, 'Left Without Being Seen', 0.00),
(9, 67, 'Level 2 - Emergent', 'Cardiology', 20, 195, 'Admitted', 52000.00),
(10, 22, 'Level 3 - Urgent', 'General Medicine', 65, 80, 'Discharged', 4800.00),
(11, 80, 'Level 1 - Resuscitation', 'Neurology', 8, 300, 'Admitted', 95000.00),
(12, 31, 'Level 4 - Less Urgent', 'General Medicine', 90, 40, 'Discharged', 3200.00),
(13, 58, 'Level 3 - Urgent', 'Cardiology', 55, 150, 'Admitted', 38000.00),
(14, 25, 'Level 5 - Non-Urgent', 'General Medicine', 140, 25, 'Left Without Being Seen', 0.00),
(15, 49, 'Level 2 - Emergent', 'Orthopedics', 35, 160, 'Admitted', 41000.00),
(16, 73, 'Level 2 - Emergent', 'Neurology', 28, 220, 'Admitted', 68000.00),
(17, 36, 'Level 3 - Urgent', 'Orthopedics', 105, 95, 'Left Without Being Seen', 0.00),
(18, 29, 'Level 4 - Less Urgent', 'General Medicine', 80, 50, 'Discharged', 3600.00),
(19, 64, 'Level 1 - Resuscitation', 'Cardiology', 4, 260, 'Admitted', 89000.00),
(20, 42, 'Level 3 - Urgent', 'Cardiology', 60, 130, 'Admitted', 36000.00),
(21, 50, 'Level 2 - Emergent', 'General Medicine', 40, 110, 'Admitted', 28000.00),
(22, 18, 'Level 5 - Non-Urgent', 'General Medicine', 130, 30, 'Discharged', 2100.00),
(23, 61, 'Level 2 - Emergent', 'Neurology', 32, 200, 'Admitted', 59000.00),
(24, 38, 'Level 3 - Urgent', 'Orthopedics', 85, 100, 'Discharged', 7500.00),
(25, 75, 'Level 1 - Resuscitation', 'Cardiology', 6, 280, 'Admitted', 91000.00),
(26, 27, 'Level 4 - Less Urgent', 'General Medicine', 70, 45, 'Discharged', 3400.00),
(27, 46, 'Level 3 - Urgent', 'Neurology', 50, 140, 'Admitted', 34000.00),
(28, 83, 'Level 2 - Emergent', 'Cardiology', 22, 190, 'Admitted', 48000.00),
(29, 33, 'Level 4 - Less Urgent', 'Orthopedics', 115, 55, 'Left Without Being Seen', 0.00),
(30, 55, 'Level 3 - Urgent', 'General Medicine', 70, 85, 'Discharged', 5200.00),
(31, 21, 'Level 5 - Non-Urgent', 'General Medicine', 125, 20, 'Discharged', 1900.00),
(32, 69, 'Level 2 - Emergent', 'Neurology', 25, 230, 'Admitted', 64000.00),
(33, 44, 'Level 3 - Urgent', 'Cardiology', 58, 145, 'Admitted', 37000.00),
(34, 37, 'Level 3 - Urgent', 'Orthopedics', 90, 105, 'Discharged', 7800.00),
(35, 78, 'Level 1 - Resuscitation', 'Neurology', 7, 310, 'Admitted', 98000.00),
(36, 26, 'Level 4 - Less Urgent', 'General Medicine', 88, 40, 'Discharged', 3300.00),
(37, 52, 'Level 2 - Emergent', 'Orthopedics', 40, 175, 'Admitted', 43000.00),
(38, 63, 'Level 2 - Emergent', 'Cardiology', 18, 205, 'Admitted', 54000.00),
(39, 30, 'Level 5 - Non-Urgent', 'General Medicine', 135, 30, 'Left Without Being Seen', 0.00),
(40, 48, 'Level 3 - Urgent', 'Neurology', 48, 135, 'Admitted', 33000.00),
(41, 70, 'Level 1 - Resuscitation', 'Cardiology', 5, 275, 'Admitted', 88000.00),
(42, 35, 'Level 4 - Less Urgent', 'Orthopedics', 100, 50, 'Discharged', 6200.00),
(43, 59, 'Level 2 - Emergent', 'General Medicine', 42, 115, 'Admitted', 29000.00),
(44, 24, 'Level 3 - Urgent', 'General Medicine', 68, 75, 'Discharged', 4900.00),
(45, 66, 'Level 2 - Emergent', 'Neurology', 26, 215, 'Admitted', 61000.00);

Select * from hospital_ed_operations;

Alter table hospital_ed_operations modify column triage_acuity_level varchar(100);

Select department_referred as Department, count(visit_id) as Total_Visit,
CONCAT(ROUND(SUM(billing_amount_inr) / 1000, 1), ' K') AS Total_Realized_Revenue,
Sum(Case when admission_status = 'Left Without Being Seen' then 1 else 0 end) as Total_walkout_volume,
Round(Avg(wait_time_minutes),2) as Avg_wait_time,
Round(Avg(treatment_duration_minutes),2) as Avg_treatment_duration
from hospital_ed_operations
GROUP BY department_referred
Order by Avg(wait_time_minutes) desc;