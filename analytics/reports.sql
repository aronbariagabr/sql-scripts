-- Count of appointments per doctor
SELECT doctor_name, COUNT(*) AS total_appointments
FROM Appointments
GROUP BY doctor_name
ORDER BY total_appointments DESC;

-- Total billing per patient
SELECT p.first_name, p.last_name, SUM(b.amount) AS total_billed
FROM Patients p
JOIN Billing b ON p.patient_id = b.patient_id
GROUP BY p.first_name, p.last_name
ORDER BY total_billed DESC;
