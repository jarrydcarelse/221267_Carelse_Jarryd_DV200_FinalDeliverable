Dentist Practice Management System
The Dentist Practice Management System is a web application designed to assist receptionists in managing patient and doctor information, appointments, and other administrative tasks in a dental practice. It provides an intuitive interface for efficient management of daily operations, improving the overall workflow and organization of the practice.

Technologies Used
The project utilizes the following technologies:

XAMPP: A popular development environment that includes Apache, MySQL, PHP, and phpMyAdmin. It provides a seamless integration of these components, allowing for easy setup and configuration of the local development environment.
SQL: The structured query language used for managing the database. SQL queries are used to create, retrieve, update, and delete data from the underlying database.
PHP: A server-side scripting language that handles the backend logic of the application. It is responsible for processing user requests, interacting with the database, and generating dynamic web content.
HTML: The markup language used for creating the web pages. It defines the structure and layout of the user interface elements.
CSS: The stylesheet language used for designing the visual presentation of the application. It allows for customizing the colors, fonts, and overall styling to create an aesthetically pleasing user interface.
Installation and Setup
To set up the Dentist Practice Management System on your local machine, follow these steps:

Download and install XAMPP from the official website: https://www.apachefriends.org/. XAMPP provides an easy-to-use installation package that includes all the necessary components for running the application.
Start the Apache and MySQL services in the XAMPP control panel. This will initiate the local web server and the database server required for the application to run.
Open a web browser and visit http://localhost/phpmyadmin. This will launch phpMyAdmin, a web-based database administration tool.
Create a new database named dentist_db in phpMyAdmin. This will serve as the backend database for storing patient, doctor, and appointment information.
Import the provided SQL file dentist_db.sql into the dentist_db database. This will set up the necessary tables and populate them with sample data, allowing you to explore the application's functionality.
Usage
To use the Dentist Practice Management System, follow these steps:

Clone or download the project files to your local machine.
Place the project files in the web server's document root directory. In the case of XAMPP, this would typically be the htdocs folder.
Access the application by opening a web browser and visiting http://localhost/dentist-practice-management. This will load the login page of the application.
Register an account as a receptionist by providing the required details. This will create a new profile that can be used to log in to the system.
Log in with your receptionist credentials to access the main management portal.
From the management portal, you can navigate through various sections of the system, including patient management, doctor management, and appointment scheduling. Perform actions such as adding, updating, and deleting patient and doctor profiles, as well as creating and managing appointments.
The landing page provides an overview of upcoming appointments and serves as a central hub for navigating to different sections of the application.
Features
The Dentist Practice Management System includes the following key features:

User Authentication: The system supports multiple receptionist profiles with individual login credentials. Receptionists can register, log in, and access the management portal securely.
Patient Management: Receptionists can view, add, update, and delete patient profiles. This includes storing patient details such as name, age, gender, contact information, and medical aid number. The system also keeps track of patients' previous appointments.
Doctor Management: Receptionists can view, add, update, and delete doctor profiles. Each doctor profile includes details such as name, age, gender, contact information, and specialization. The system also assigns doctors to specific rooms.
Appointments: Receptionists can create and manage appointments between doctors and patients. They can schedule appointments, view existing appointments, and make changes or cancellations as needed.
Landing Page: The landing page serves as the main entry point for the application. It displays upcoming appointments in an easily accessible format and provides navigation links to other sections of the management system.
Contributing
Contributions to the Dentist Practice Management System are welcome! If you have any suggestions, bug reports, or feature requests, please submit an issue or a pull request on the project's GitHub repository. Your contributions can help improve the functionality and usability of the application.

License
This project is licensed under the MIT License. You are free to use, modify, and distribute the code for personal and commercial purposes.

Contact
If you have any questions or inquiries about the Dentist Practice Management System, feel free to contact [Your Name] at [your@email.com]. We appreciate your interest and support!
