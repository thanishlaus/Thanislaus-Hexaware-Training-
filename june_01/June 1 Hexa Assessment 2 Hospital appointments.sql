-- CREATE DATABASE hospital_capstone_db;
-- USE hospital_capstone_db;

-- CREATE TABLE patients
-- (
--  patient_id INT PRIMARY KEY,
--  patient_name VARCHAR(100),
--  gender VARCHAR(10),
--  age INT,
--  city VARCHAR(50),
--  phone VARCHAR(15)
-- );

-- CREATE TABLE departments
-- (
--  department_id INT PRIMARY KEY,
--  department_name VARCHAR(100)
-- );

-- CREATE TABLE doctors
-- (
--  doctor_id INT PRIMARY KEY,
--  doctor_name VARCHAR(100),
--  specialization VARCHAR(100),
--  department_id INT,
--  consultation_fee DECIMAL(10,2)
-- );

-- CREATE TABLE appointments
-- (
--  appointment_id INT PRIMARY KEY,
--  patient_id INT,
--  doctor_id INT,
--  appointment_date DATE,
--  appointment_status VARCHAR(30)
-- );

-- CREATE TABLE treatments
-- (
--  treatment_id INT PRIMARY KEY,
--  appointment_id INT,
--  treatment_name VARCHAR(100),
--  treatment_cost DECIMAL(10,2)
-- );

-- CREATE TABLE bills
-- (
--  bill_id INT PRIMARY KEY,
--  patient_id INT,
--  appointment_id INT,
--  bill_date DATE,
--  total_amount DECIMAL(10,2),
--  bill_status VARCHAR(30)
-- );

-- CREATE TABLE payments
-- (
--  payment_id INT PRIMARY KEY,
--  bill_id INT,
--  payment_mode VARCHAR(30),
--  paid_amount DECIMAL(10,2),
--  payment_status VARCHAR(30)
-- );

-- SHOW TABLES;

-- INSERT INTO departments VALUES
-- (1,'Cardiology'),
-- (2,'Neurology'),
-- (3,'Orthopedics'),
-- (4,'Pediatrics'),
-- (5,'General Medicine');

-- INSERT INTO doctors VALUES
-- (101,'Dr. Ravi Kumar','Cardiologist',1,1000),
-- (102,'Dr. Priya Sharma','Neurologist',2,1200),
-- (103,'Dr. Amit Verma','Orthopedic',3,900),
-- (104,'Dr. Sneha Patel','Pediatrician',4,800),
-- (105,'Dr. Kiran Rao','General Physician',5,700),
-- (106,'Dr. Meera Singh','Cardiologist',1,1100),
-- (107,'Dr. Rahul Nair','Neurologist',2,1300),
-- (108,'Dr. Farhan Ali','Orthopedic',3,950);

-- INSERT INTO patients VALUES
-- (1,'Ramesh Gupta','Male',45,'Hyderabad','9876543210'),
-- (2,'Priya Reddy','Female',32,'Bangalore','9876543211'),
-- (3,'Amit Kumar','Male',55,'Mumbai','9876543212'),
-- (4,'Sneha Patel','Female',28,'Chennai','9876543213'),
-- (5,'Arjun Verma','Male',38,'Delhi','9876543214'),
-- (6,'Neha Singh','Female',41,'Hyderabad','9876543215'),
-- (7,'Farhan Ali','Male',29,'Pune','9876543216'),
-- (8,'Meera Nair','Female',35,'Chennai','9876543217'),
-- (9,'Rahul Reddy','Male',50,'Hyderabad','9876543218'),
-- (10,'Divya Sharma','Female',27,'Bangalore','9876543219'),
-- (11,'Karthik Raj','Male',60,'Chennai','9876543220'),
-- (12,'Anjali Gupta','Female',48,'Hyderabad','9876543221');

-- INSERT INTO appointments VALUES
-- (1001,1,101,'2026-01-05','Completed'),
-- (1002,2,102,'2026-01-06','Completed'),
-- (1003,3,103,'2026-01-07','Pending'),
-- (1004,4,104,'2026-01-08','Completed'),
-- (1005,5,105,'2026-01-09','Cancelled'),
-- (1006,6,106,'2026-01-10','Completed'),
-- (1007,7,107,'2026-01-11','Pending'),
-- (1008,8,108,'2026-01-12','Completed'),
-- (1009,9,101,'2026-01-13','Completed'),
-- (1010,10,102,'2026-01-14','Pending'),
-- (1011,11,103,'2026-01-15','Completed'),
-- (1012,12,104,'2026-01-16','Completed'),
-- (1013,1,105,'2026-01-17','Completed'),
-- (1014,2,106,'2026-01-18','Pending'),
-- (1015,3,107,'2026-01-19','Cancelled'),
-- (1016,4,108,'2026-01-20','Completed'),
-- (1017,5,101,'2026-01-21','Completed'),
-- (1018,6,102,'2026-01-22','Pending'),
-- (1019,7,103,'2026-01-23','Completed'),
-- (1020,8,104,'2026-01-24','Completed');

-- INSERT INTO treatments VALUES
-- (1,1001,'ECG',1500),
-- (2,1002,'Brain Scan',3000),
-- (3,1003,'Fracture Check',1200),
-- (4,1004,'Vaccination',800),
-- (5,1006,'Heart Checkup',2500),
-- (6,1008,'Joint Examination',1800),
-- (7,1009,'ECG',1500),
-- (8,1011,'Bone Scan',2200),
-- (9,1012,'Child Consultation',700),
-- (10,1013,'General Checkup',500),
-- (11,1014,'Heart Checkup',2500),
-- (12,1016,'Physiotherapy',1600),
-- (13,1017,'ECG',1500),
-- (14,1019,'X-Ray',1000),
-- (15,1020,'Vaccination',800);

-- INSERT INTO bills VALUES
-- (1,1,1001,'2026-01-05',2500,'Paid'),
-- (2,2,1002,'2026-01-06',4200,'Paid'),
-- (3,3,1003,'2026-01-07',2100,'Pending'),
-- (4,4,1004,'2026-01-08',1600,'Paid'),
-- (5,6,1006,'2026-01-10',3600,'Paid'),
-- (6,8,1008,'2026-01-12',2750,'Paid'),
-- (7,9,1009,'2026-01-13',2500,'Paid'),
-- (8,11,1011,'2026-01-15',3100,'Paid'),
-- (9,12,1012,'2026-01-16',1500,'Paid'),
-- (10,1,1013,'2026-01-17',1200,'Paid'),
-- (11,2,1014,'2026-01-18',3600,'Pending'),
-- (12,4,1016,'2026-01-20',2550,'Paid'),
-- (13,5,1017,'2026-01-21',2500,'Paid'),
-- (14,7,1019,'2026-01-23',1900,'Paid'),
-- (15,8,1020,'2026-01-24',1600,'Paid');

-- INSERT INTO payments VALUES
-- (1,1,'UPI',2500,'Success'),
-- (2,2,'Card',4200,'Success'),
-- (3,3,'UPI',1000,'Pending'),
-- (4,4,'Cash',1600,'Success'),
-- (5,5,'Card',3600,'Success'),
-- (6,6,'UPI',2750,'Success'),
-- (7,7,'Net Banking',2500,'Success'),
-- (8,8,'Card',3100,'Success'),
-- (9,9,'Cash',1500,'Success'),
-- (10,10,'UPI',1200,'Success'),
-- (11,11,'Card',1500,'Pending'),
-- (12,12,'UPI',2550,'Success'),
-- (13,13,'Cash',2500,'Success'),
-- (14,14,'UPI',1900,'Success'),
-- (15,15,'Card',1600,'Success');

-- (1-20)

-- SELECT * FROM patients;
-- SELECT patient_name, city,phone FROM patients;
-- SELECT * FROM doctors;
-- SELECT doctor_name,specialization FROM doctors;
-- SELECT * FROM patients WHERE city='Hyderabad';
-- SELECT * FROM patients WHERE gender='Female';
-- SELECT * FROM patients WHERE age>40;
-- SELECT * FROM doctors WHERE consultation_fee > 1000;
-- SELECT * FROM appointments WHERE appointments_status = 'Completed';
-- SELECT * FROM appointments WHERE appointment_status='Pending';
-- SELECT COUNT(*) AS total_patients
-- FROM patients;
-- SELECT COUNT(*) AS total_doctors
-- FROM doctors;
-- SELECT COUNT(*) AS total_appointments
-- FROM appointments;
-- SELECT SUM(total_amount) AS total_billing
-- FROM bills;
-- SELECT AVG(total_amount) AS average_bill
-- FROM bills;
-- SELECT MAX(total_amount) AS highest_bill
-- FROM bills;
-- SELECT MIN(total_amount) AS lowest_bill
-- FROM bills;
-- SELECT city,
--       COUNT(*) AS total_patients
-- FROM patients
-- GROUP BY city;
-- SELECT specialization,
--       COUNT(*) AS total_doctors
-- FROM doctors
-- GROUP BY specialization;
-- SELECT appointment_status,
--       COUNT(*) AS total_appointments
-- FROM appointments
-- GROUP BY appointment_status;

-- (21-35)

-- SELECT p.patient_name,
--        a.appointment_id,
--        a.appointment_date,
--        a.appointment_status
-- FROM patients p
-- INNER JOIN appointments a
-- ON p.patient_id = a.patient_id;

-- SELECT d.doctor_name,
--        a.appointment_id,
--        a.appointment_date,
--        a.appointment_status
-- FROM doctors d
-- INNER JOIN appointments a
-- ON d.doctor_id = a.doctor_id;

-- SELECT p.patient_name,
--        d.doctor_name,
--        a.appointment_date
-- FROM appointments a
-- INNER JOIN patients p
-- ON a.patient_id = p.patient_id
-- INNER JOIN doctors d
-- ON a.doctor_id = d.doctor_id;

-- SELECT p.patient_name,
--        t.treatment_name,
--        t.treatment_cost
-- FROM treatments t
-- INNER JOIN appointments a
-- ON t.appointment_id = a.appointment_id
-- INNER JOIN patients p
-- ON a.patient_id = p.patient_id;

-- SELECT p.patient_name,
--        b.bill_id,
--        b.total_amount,
--        b.bill_status
-- FROM patients p
-- INNER JOIN bills b
-- ON p.patient_id = b.patient_id;

-- SELECT b.bill_id,
--        b.total_amount,
--        p.payment_mode,
--        p.payment_status
-- FROM bills b
-- INNER JOIN payments p
-- ON b.bill_id = p.bill_id;

-- SELECT p.patient_name,
--        d.doctor_name,
--        a.appointment_date,
--        t.treatment_name,
--        b.total_amount,
--        pay.payment_status
-- FROM patients p
-- INNER JOIN appointments a
-- ON p.patient_id = a.patient_id
-- INNER JOIN doctors d
-- ON a.doctor_id = d.doctor_id
-- LEFT JOIN treatments t
-- ON a.appointment_id = t.appointment_id
-- LEFT JOIN bills b
-- ON a.appointment_id = b.appointment_id
-- LEFT JOIN payments pay
-- ON b.bill_id = pay.bill_id;

-- SELECT city,
--        COUNT(*) AS patient_count
-- FROM patients
-- GROUP BY city;

-- SELECT payment_mode,
--        SUM(paid_amount) AS total_paid
-- FROM payments
-- GROUP BY payment_mode;

-- SELECT bill_status,
--        AVG(total_amount) AS avg_bill
-- FROM bills
-- GROUP BY bill_status;

-- SELECT patient_id,
--        COUNT(*) AS total_appointments
-- FROM appointments
-- GROUP BY patient_id
-- HAVING COUNT(*) > 1;

-- SELECT city,
--        COUNT(*) AS total_patients
-- FROM patients
-- GROUP BY city
-- HAVING COUNT(*) > 2;

-- (36-45)

-- SELECT * FROM patients
-- WHERE patient_id IN
-- (
--     SELECT patient_id
--     FROM appointments
-- );

-- SELECT * FROM patients
-- WHERE patient_id NOT IN
-- (
--     SELECT patient_id
--     FROM appointments
-- );

-- SELECT * FROM doctors
-- WHERE doctor_id IN
-- (
--     SELECT doctor_id
--     FROM appointments
-- );

-- SELECT * FROM bills
-- WHERE total_amount >
-- (
--     SELECT AVG(total_amount)
--     FROM bills
-- );

-- SELECT p.patient_name,
--        b.total_amount
-- FROM patients p
-- INNER JOIN bills b
-- ON p.patient_id = b.patient_id
-- WHERE b.total_amount =
-- (
--     SELECT MAX(total_amount)
--     FROM bills
-- );

-- SELECT * FROM doctors
-- WHERE consultation_fee >
-- (
--     SELECT AVG(consultation_fee)
--     FROM doctors
-- );

-- SELECT DISTINCT p.patient_name FROM patients p
-- INNER JOIN appointments a
-- ON p.patient_id = a.patient_id
-- INNER JOIN doctors d
-- ON a.doctor_id = d.doctor_id
-- WHERE d.specialization = 'Cardiologist';

-- SELECT * FROM bills
-- WHERE bill_id IN
-- (
--     SELECT bill_id
--     FROM payments
--     WHERE payment_status='Success'
-- );

-- SELECT p.patient_name,
--        SUM(b.total_amount) AS total_bill
-- FROM patients p
-- INNER JOIN bills b
-- ON p.patient_id = b.patient_id
-- GROUP BY p.patient_name
-- HAVING SUM(b.total_amount) >
-- (
--     SELECT AVG(total_bill)
--     FROM
--     (
--         SELECT SUM(total_amount) AS total_bill
--         FROM bills
--         GROUP BY patient_id
--     ) avg_table
-- );

-- (46-52)

-- SELECT *
-- FROM appointments
-- WHERE appointment_id NOT IN
-- (
--     SELECT appointment_id
--     FROM treatments
-- );

-- SELECT *
-- FROM appointments
-- WHERE appointment_id NOT IN
-- (
--     SELECT appointment_id
--     FROM bills
-- );

-- SELECT *
-- FROM bills
-- WHERE bill_id NOT IN
-- (
--     SELECT bill_id
--     FROM payments
-- );

-- SELECT a.appointment_id,
--        a.appointment_status,
--        b.bill_status
-- FROM appointments a
-- INNER JOIN bills b
-- ON a.appointment_id = b.appointment_id
-- WHERE a.appointment_status='Cancelled';

-- SELECT * FROM treatments
-- WHERE appointment_id NOT IN
-- (
--     SELECT appointment_id
--     FROM appointments
-- );

-- SELECT *
-- FROM bills
-- WHERE patient_id NOT IN
-- (
--     SELECT patient_id
--     FROM patients
-- );
















