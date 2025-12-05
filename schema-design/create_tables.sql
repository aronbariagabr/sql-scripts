-- Patient Management System schema design
CREATE TABLE Patients (
    patient_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    dob DATE,
    gender VARCHAR(10),
    phone VARCHAR(15),
    email VARCHAR(100)
);

CREATE TABLE Appointments (
    appointment_id SERIAL PRIMARY KEY,
    patient_id INT REFERENCES Patients(patient_id),
    doctor_name VARCHAR(100),
    appointment_date TIMESTAMP,
    status VARCHAR(20)
);

CREATE TABLE Billing (
    bill_id SERIAL PRIMARY KEY,
    patient_id INT REFERENCES Patients(patient_id),
    amount DECIMAL(10,2),
    bill_date TIMESTAMP,
    paid BOOLEAN DEFAULT FALSE
);
