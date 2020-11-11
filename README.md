# High School Project for receiving Programming Diploma
## Overview
- Programming language: C#, CSS (ASP.NET Web Application .NET Framework); 
- Libraries: Bootstrap, datatables, fontawesome;
- Database: Microsoft SQL;
- Deadline: 4 weeks;
- *No previous knowledge of either C# or databases*

## Short Description
- This application is an improved variant of [my WinFormsApp School Management Project](https://github.com/mircea-negrau/High-School-Class-Management-Project), as all the elements shown in the application are programatically generated instead of being hard-coded;
- The database was set up so that multiple teachers could connect to the program remotely;
- The application aims to function as a school gradebook, the teacher having the opportunity to grade students and add or motivate their absences;
- Also, teachers can change details (add / delete grades / absences) only to the classrooms they teach and only to the subjects they teach to that subject (unless this is the assigned teacher of the class - thus having access to motivate absences to any student). 
- This version aims, moreover, to provide the opportunity for students (and their parents) to strictly access their own information (grades, absences, classroom);

## Features
### - Main Menu:
![Main Menu](/images/main_page.PNG)
- Guests have to login or apply for a registration.
- The top right area changes according to whether or not the user is logged in;
- The navigation bar changes according to the options available to the user (different for student, teacher and guardian);
- Pages cannot be accessed unless the minimum user status is met by the current user (guests cannot open grading pages, etc.);
- Users know they are signed in as the Login button is replaced by 'Welcome {user}';

### - Login System:
![Main Page Login](/images/login_page.PNG)
- A main login page, from which the user chooses what type of connection they want to establish (student, teacher, guardian);
- Each login page is independent from the others (students cannot connect from the teacher's login page);
- An error is prompted back if the credentials entered are not found in the users database;

### - Guest Actions
- Unless logged in, guests can only access the following pages (merged into one photo, but separate as webpages), which log them accordingly:
![Login Student](/images/login_possible_pages.PNG)

- If guest has no account yet, but they are a student of the institution, they can apply for an account registration, which gets manually verified by a secretary to be accepted.
![Register Student](/images/student_registration.PNG)

### - Teacher Actions
![Main Page Teachers](/images/teacher_main_page.PNG)
- If an user is logged in as a teacher, the navigation bar changes accordingly and allows them to enter the 'Classroom';
- 'High School' is the only 'Classroom' option that is implemented;

![List Classes](/images/classes_list.PNG)
- The application programatically generates the list of existing classes;
- Each line is highlighted in blue when hovered over and points towards the classroom's students list (classroom students list to be implemented);
- Teachers would be able to enter the class' student management only if they teach a course to that specific class;

### - Admin Actions
![Student Information](/images/student_information.PNG)
![Manage Student](/images/manage_student.PNG)
![List Students](/images/student_listing.PNG)
  
![Databases](/images/database.PNG)


- The navigation bar is programatically set to create options for the teacher's 'Classrooms' drop.