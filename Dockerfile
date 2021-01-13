
# Use an official Python runtime as a parent image
FROM python:latest
 
# Set the working directory to /app
WORKDIR /app
 
# Copy the current directory contents into the container at /app
COPY . /app
 
# Define entry point
ENTRYPOINT ["python", "app.py"]

