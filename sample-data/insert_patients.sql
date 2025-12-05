-- Sample data for testing
INSERT INTO Patients (first_name, last_name, dob, gender, phone, email)
VALUES
('Alice', 'Johnson', '1985-04-12', 'Female', '555-1234', 'alice@example.com'),
('Bob', 'Smith', '1990-07-22', 'Male', '555-5678', 'bob@example.com');

INSERT INTO Appointments (patient_id, doctor_name, appointment_date, status)
VALUES
(1, 'Dr. Adams', '2025-01-15 10:00:00', 'Scheduled'),
(2, 'Dr. Brown', '2025-01-16 14:30:00', 'Completed');

INSERT INTO Billing (patient_id, amount, bill_date, paid)
VALUES
(1, 250.00, '2025-01-15', TRUE),
(2, 150.00, '2025-01-16', FALSE);
