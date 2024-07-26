
# VCC_Assignment: Sample Web Application Deployment using Docker

## Overview

This project demonstrates how to deploy a simple web application using Docker containers by creating Docker images from scratch.

## Steps Followed

1. **Create a Sample Web Application**:
   - Developed a simple Flask application to save Student roll number and Student name in docker.

   ```python
   # app.py
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
        return jsonify(students)

    if __name__ == '__main__':
        app.run(host='0.0.0.0', port=5000)

            


