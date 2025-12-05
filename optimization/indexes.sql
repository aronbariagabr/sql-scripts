-- Adding indexes for faster lookups
CREATE INDEX idx_patient_email ON Patients(email);
CREATE INDEX idx_appointment_date ON Appointments(appointment_date);
CREATE INDEX idx_billing_patient ON Billing(patient_id);
