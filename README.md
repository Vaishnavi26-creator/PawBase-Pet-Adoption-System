# PawBase – Pet Adoption Management System 🐾

PawBase is a **Java Swing based Pet Adoption Management System** that helps animal shelters manage pets, adopters, adoptions, medical records, shelters, and caretakers efficiently.

The system provides a **graphical interface (GUI)** and connects to a **MySQL database using JDBC** for storing and managing information.

---

## Features

* Add, update, delete and view **pet records**
* Manage **adopter information**
* Record and track **pet adoptions**
* Maintain **pet medical records**
* Manage **shelters and caretakers**
* Simple and user-friendly **Java Swing GUI**

---

## Technologies Used

* Java
* Java Swing (GUI)
* MySQL Database
* JDBC (Java Database Connectivity)

---

## Project Structure

```
PawBase
│
├── Main.java
├── PawBaseGUI.java
├── ManagePets.java
├── ManagePetsGUI.java
├── ManageAdopters.java
├── ManageAdoptersGUI.java
├── ManageAdoptions.java
├── ManageAdoptionGUI.java
├── ManageMedicalRecords.java
├── MedicalRecordsGUI.java
├── ManageSheltersAndCaretakers.java
├── SheltersCaretakersGUI.java
├── pawbase.sql
└── README.md
```

---

## Database Setup

1. Install **MySQL**.
2. Create a database:

```
CREATE DATABASE PawBase;
```

3. Import the SQL file included in this repository:

```
pawbase.sql
```

4. Update database credentials in the Java code if needed:

```
private static final String DB_URL = "jdbc:mysql://localhost:3306/PawBase";
private static final String DB_USER = "root";
private static final String DB_PASS = "your_password";
```

---

## How to Run the Project

1. Clone the repository

```
git clone https://github.com/yourusername/PawBase-Pet-Adoption-System.git
```

2. Open the project in **Eclipse / IntelliJ / VS Code**

3. Configure MySQL database

4. Run

```
Main.java
```

---



## Project Documentation

The project report explaining the system design, database schema, and functionality is included in the repository.

---

## Purpose of the Project

This project demonstrates:

* Java **Object Oriented Programming**
* **GUI development using Swing**
* **Database connectivity using JDBC**
* **CRUD operations with MySQL**

---


