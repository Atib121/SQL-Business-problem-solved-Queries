use practise ;

CREATE TABLE loan_applications (
    application_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    employment_type VARCHAR(50),
    credit_score INT,
    requested_amount_inr DECIMAL(12, 2),
    application_status VARCHAR(50),
    submission_date DATE,
    processing_time_days INT
);


INSERT INTO loan_applications (application_id, customer_name, employment_type, credit_score, requested_amount_inr, application_status, submission_date, processing_time_days) VALUES
(1, 'Rahul Verma', 'Salaried', 740, 500000.00, 'Approved', '2026-05-01', 3),
(2, 'Priya Nair', 'Self-Employed', 620, 300000.00, 'Rejected', '2026-05-02', 7),
(3, 'Amit Shah', 'Salaried', 680, 750000.00, 'Pending', '2026-05-04', 5),
(4, 'Sneha Patil', 'Freelancer', 580, 150000.00, 'Rejected', '2026-05-05', 12),
(5, 'Vikram Singh', 'Salaried', 810, 1200000.00, 'Approved', '2026-05-06', 2),
(6, 'Ananya Das', 'Self-Employed', 710, 450000.00, 'Approved', '2026-05-08', 4),
(7, 'Rohan Joshi', 'Freelancer', 640, 200000.00, 'Pending', '2026-05-10', 8),
(8, 'Kriti Sharma', 'Salaried', 590, 600000.00, 'Rejected', '2026-05-12', 6),
(9, 'Deepak Kumar', 'Self-Employed', 790, 900000.00, 'Approved', '2026-05-13', 3),
(10, 'Neha Gupta', 'Salaried', 720, 350000.00, 'Approved', '2026-05-15', 4),
(11, 'Siddharth Rao', 'Freelancer', 550, 100000.00, 'Rejected', '2026-05-16', 14),
(12, 'Pooja Mishra', 'Salaried', 670, 500000.00, 'Approved', '2026-05-18', 5),
(13, 'Gaurav Malhotra', 'Self-Employed', 600, 800000.00, 'Rejected', '2026-05-19', 9),
(14, 'Shreya Ghoshal', 'Salaried', 760, 1000000.00, 'Approved', '2026-05-20', 2),
(15, 'Abhishek Bachchan', 'Freelancer', 690, 300000.00, 'Approved', '2026-05-22', 6),
(16, 'Divya Dutta', 'Self-Employed', 630, 400000.00, 'Pending', '2026-05-23', 7),
(17, 'Manish Paul', 'Salaried', 820, 1500000.00, 'Approved', '2026-05-25', 1),
(18, 'Isha Deol', 'Freelancer', 570, 250000.00, 'Rejected', '2026-05-26', 11),
(19, 'Karan Johar', 'Self-Employed', 750, 950000.00, 'Approved', '2026-05-28', 4),
(20, 'Ekta Kapoor', 'Salaried', 700, 700000.00, 'Approved', '2026-05-30', 3),
(21, 'Rajkummar Rao', 'Freelancer', 720, 500000.00, 'Approved', '2026-06-01', 5),
(22, 'Ayushmann Khurrana', 'Salaried', 610, 400000.00, 'Rejected', '2026-06-02', 8),
(23, 'Kriti Sanon', 'Self-Employed', 660, 600000.00, 'Pending', '2026-06-03', 6),
(24, 'Vicky Kaushal', 'Salaried', 780, 1100000.00, 'Approved', '2026-06-04', 2),
(25, 'Katrina Kaif', 'Freelancer', 600, 350000.00, 'Rejected', '2026-06-06', 10),
(26, 'Ranbir Kapoor', 'Salaried', 730, 850000.00, 'Approved', '2026-06-07', 3),
(27, 'Alia Bhatt', 'Self-Employed', 800, 1300000.00, 'Approved', '2026-06-09', 2),
(28, 'Ranveer Singh', 'Freelancer', 650, 450000.00, 'Approved', '2026-06-10', 7),
(29, 'Deepika Padukone', 'Salaried', 770, 1250000.00, 'Approved', '2026-06-11', 2),
(30, 'Varun Dhawan', 'Self-Employed', 590, 500000.00, 'Rejected', '2026-06-12', 9),
(31, 'Sara Ali Khan', 'Freelancer', 710, 300000.00, 'Approved', '2026-06-14', 4),
(32, 'Janhavi Kapoor', 'Salaried', 640, 450000.00, 'Pending', '2026-06-15', 5),
(33, 'Ishaan Khatter', 'Self-Employed', 740, 850000.00, 'Approved', '2026-06-16', 3),
(34, 'Ananya Panday', 'Freelancer', 560, 200000.00, 'Rejected', '2026-06-17', 13),
(35, 'Kartik Aaryan', 'Salaried', 690, 650000.00, 'Approved', '2026-06-18', 4),
(36, 'Kiara Advani', 'Self-Employed', 720, 700000.00, 'Approved', '2026-06-19', 4),
(37, 'Sidharth Malhotra', 'Freelancer', 610, 250000.00, 'Rejected', '2026-06-20', 11),
(38, 'Rashmika Mandanna', 'Salaried', 750, 900000.00, 'Approved', '2026-06-22', 2),
(39, 'Vijay Deverakonda', 'Self-Employed', 680, 750000.00, 'Approved', '2026-06-23', 5),
(40, 'Allu Arjun', 'Freelancer', 760, 1000000.00, 'Approved', '2026-06-25', 3);


Select * from loan_applications;

Select employment_type, count(application_id) as Total_applicants, sum(requested_amount_inr) as Total_requested_amount,
	   avg(processing_time_days) as Avg_process_time,
       round(avg(case when application_status = 'Rejected' then credit_score else null end ),0) as Avg_credit_score_for_rejected_apps
from loan_applications
where requested_amount_inr >= 300000
group by employment_type
order by Avg_process_time desc;