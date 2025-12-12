# Task 1: Doctor Management System

Create a simple Dart program to manage doctor information using Object-Oriented Programming principles.

## Program Description:

Design a `Doctor` class with basic properties and methods to manage a list of doctors. The program should allow users to add doctors, display their information, and perform calculations on salaries.

## Requirements:

### 1. Doctor Class:
Create a `Doctor` class with these 3 properties:
- `id` (String): Unique identifier for the doctor
- `name` (String): Full name of the doctor  
- `salary` (double): Monthly salary of the doctor

### 2. Class Methods:
Add these methods to the `Doctor` class:
- Constructor to initialize all properties
- `displayInfo()`: Method to print doctor's information in a formatted way
- `toMap()`: Method to return doctor data as a Map

### 3. Program Functionality:
Create a main program that:
1. Creates a list of 5 doctor objects with sample data
2. Displays all doctors in a neat table format
3. Calculates and displays:
   - Total of all salaries
   - Average salary
   - Highest salary

## Expected Output:

```
=== Doctor Information ===
ID: D001 | Name: Dr. Ahmed | Salary: $5000.00
ID: D002 | Name: Dr. Sarah | Salary: $7500.00  
ID: D003 | Name: Dr. Mohammed | Salary: $6000.00
ID: D004 | Name: Dr. Fatima | Salary: $5500.00
ID: D005 | Name: Dr. Ali | Salary: $8000.00

=== Salary Statistics ===
Total Salaries: $32000.00
Average Salary: $6400.00
Highest Salary: $8000.00 (Dr. Ali)
```

## Bonus Features :

1. **Search Function**: Add a method to search for a doctor by ID or name
2. **Sorting**: Add ability to sort doctors by salary (highest to lowest)
3. **Input Validation**: Create a method to validate doctor data
4. **Update Salary**: Add a method to update a doctor's salary
5. **Formatted Table**: Display doctors in a properly formatted table with borders

## Learning Objectives:

- Practice creating classes with properties and methods
- Learn to create and work with lists of objects
- Understand how to access object properties and methods
- Practice basic calculations with object data
- Learn to organize code using classes

This task focuses on the fundamentals of OOP without complex inheritance hierarchies, making it perfect for beginners learning about classes and objects in Dart.
