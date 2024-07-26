# Using the official Python image from the Docker Hub
FROM python:3.12-slim

# Setting the working directory in the container
WORKDIR /app

# Copying the requirements file into the container
COPY requirements.txt .

# Installing the dependencies
RUN pip install -r requirements.txt

# Copying the rest of the application code into the container
COPY . .

# Specify the command to run the application
CMD ["python", "app.py"]
