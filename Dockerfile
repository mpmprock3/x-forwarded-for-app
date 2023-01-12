# Use an official Python runtime as the base image
FROM quay.io/mapandey/python:3.9-slim-buster

# Set the working directory
WORKDIR /app

# Copy the requirements file to the container
COPY requirements.txt .

# Install the required packages
RUN pip install --no-cache-dir -r requirements.txt

#set Env variable to application name i.e xff.py
ENV FLASK_APP xff.py


# Copy the application code to the container
COPY . .

# Expose the port for the application
EXPOSE 5000

# Run the application
CMD ["flask", "run", "--host=0.0.0.0"]
