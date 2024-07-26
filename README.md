# VCC_Assignment: Sample Web Application Deployment using Docker

## Overview

This project demonstrates how to deploy a simple web application using Docker containers by creating Docker images from scratch.

## Steps Followed

1. **Create a Sample Web Application**:
   - Developed a simple Flask application to save Student roll number and Student name in docker.


2. Building the Docker image

        docker build -t flask_student_app .

3. Run Docker Container

        docker run -p 5000:5000 flask_student_app

4. The application will be accessible at http://localhost:5001/students.
   ![B28A1CBD-FD22-4382-84B2-796B0F6BBEFE_4_5005_c](https://github.com/user-attachments/assets/e2a6b4c7-932c-4eb6-b1ad-1462bc59e8e3)

5. Add a Student
URL: http://localhost:5001/add_student
Method: POST
Request Body: JSON with roll_number and name

    {
    "roll_number": "10",
    "name": "Rahul Sen"
    }
6. Get All Students
URL: http://localhost:5001/students
Method: GET

7. Project structure


flask_student_app/

    ├── app.py         # Main Flask application
    ├── Dockerfile     # Docker configuration file
    └── README.md      # Project documentation

8. Author
    Roll No: G23AI2027
    





