-- Example of joining Patients with Appointments
SELECT p.first_name, p.last_name, a.doctor_name, a.appointment_date, a.status
FROM Patients p
JOIN Appointments a ON p.patient_id = a.patient_id
WHERE a.status = 'Scheduled';
