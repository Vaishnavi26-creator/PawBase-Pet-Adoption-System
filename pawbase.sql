
-- PawBase Pet Adoption System Database
-- Run this script in MySQL to create the required database and tables

CREATE DATABASE IF NOT EXISTS PawBase;
USE PawBase;

-- Shelters table
CREATE TABLE IF NOT EXISTS Shelters (
    shelter_id INT AUTO_INCREMENT PRIMARY KEY,
    shelter_name VARCHAR(100),
    location VARCHAR(100),
    contact_number VARCHAR(15)
);

-- Caretakers table
CREATE TABLE IF NOT EXISTS Caretakers (
    caretaker_id INT AUTO_INCREMENT PRIMARY KEY,
    caretaker_name VARCHAR(100),
    phone VARCHAR(15),
    shelter_id INT,
    FOREIGN KEY (shelter_id) REFERENCES Shelters(shelter_id)
);

-- Pets table
CREATE TABLE IF NOT EXISTS Pets (
    pet_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    species VARCHAR(50),
    breed VARCHAR(50),
    age INT,
    gender VARCHAR(10),
    shelter_id INT,
    caretaker_id INT,
    adoption_status VARCHAR(20),
    FOREIGN KEY (shelter_id) REFERENCES Shelters(shelter_id),
    FOREIGN KEY (caretaker_id) REFERENCES Caretakers(caretaker_id)
);

-- Adopters table
CREATE TABLE IF NOT EXISTS Adopters (
    adopter_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    phone VARCHAR(15),
    email VARCHAR(100),
    address VARCHAR(200)
);

-- Adoptions table
CREATE TABLE IF NOT EXISTS Adoptions (
    adoption_id INT AUTO_INCREMENT PRIMARY KEY,
    pet_id INT,
    adopter_id INT,
    adoption_date DATE,
    FOREIGN KEY (pet_id) REFERENCES Pets(pet_id),
    FOREIGN KEY (adopter_id) REFERENCES Adopters(adopter_id)
);

-- Medical Records table
CREATE TABLE IF NOT EXISTS MedicalRecords (
    record_id INT AUTO_INCREMENT PRIMARY KEY,
    pet_id INT,
    vaccination VARCHAR(100),
    treatment VARCHAR(200),
    vet_name VARCHAR(100),
    visit_date DATE,
    FOREIGN KEY (pet_id) REFERENCES Pets(pet_id)
);

-- Sample Data
INSERT INTO Shelters (shelter_name, location, contact_number)
VALUES ('Happy Paws Shelter', 'Mumbai', '9876543210');

INSERT INTO Caretakers (caretaker_name, phone, shelter_id)
VALUES ('Rahul Sharma', '9123456789', 1);

INSERT INTO Pets (name, species, breed, age, gender, shelter_id, caretaker_id, adoption_status)
VALUES ('Buddy', 'Dog', 'Labrador', 2, 'Male', 1, 1, 'Available');
