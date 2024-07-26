# VCC_Assignment: Sample Web Application Deployment using Docker

## Overview

This project demonstrates how to deploy a simple web application using Docker containers by creating Docker images from scratch.

## Steps Followed

1. **Create a Sample Web Application**:
   - Developed a simple Flask application to save Student roll number and Student name in docker. Create a file named app.py.

         from flask import Flask, request, jsonify
         app = Flask(__name__)
         students = []
         @app.route('/add_student', methods=['POST'])
         def add_student():
           data = request.get_json()
           roll_number = data.get('roll_number')
           name = data.get('name')
              if roll_number and name:
                 students.append({'roll_number': roll_number, 'name': name})
                 return jsonify({'message': 'Student added successfully!'}), 201
              return jsonify({'error': 'Invalid input'}), 400
         @app.route('/students', methods=['GET'])
         def get_students():
         return jsonify(students)if __name__ == '__main__':
         app.run(host='0.0.0.0', port=5000)


2. Create a requirements file:

   - Create a file named requirements.txt and add:

           Flask==2.0.3
           Werkzeug==2.0.3

4. Building the Docker image

        docker build -t flask_student_app .

5. Run Docker Container

        docker run -d -p 5001:5000 flask_student_app

6. The application will be accessible at http://localhost:5001/students.
   ![B28A1CBD-FD22-4382-84B2-796B0F6BBEFE_4_5005_c](https://github.com/user-attachments/assets/e2a6b4c7-932c-4eb6-b1ad-1462bc59e8e3)

7. Add a Student
URL: http://localhost:5001/add_student
Method: POST
Request Body: JSON with roll_number and name

    {
    "roll_number": "10",
    "name": "Rahul Sen"
    }
   
8. Get All Students
URL: http://localhost:5001/students
Method: GET

9. Project structure


flask_student_app/

    ├── app.py         # Main Flask application
    ├── Dockerfile     # Docker configuration file
    └── README.md      # Project documentation

10. Author
    Roll No: G23AI2027
    





