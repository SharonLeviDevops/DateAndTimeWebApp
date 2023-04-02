# Use official Python image based on slim-buster version of Debian
FROM python:3.9-slim-buster

# Install necessary packages
RUN apt-get update && \
    apt-get install -y nginx

# Copy the content of the directory to the Docker container, inside app directory
COPY . /app

# Set the working directory to /app
WORKDIR /app

# Install the required Python packages
RUN pip install -r requirements.txt

# Copy the nginx.conf file to the container
COPY nginx.conf /etc/nginx/nginx.conf

# Expose port 80 for Nginx
EXPOSE 80

# Start Nginx and the Python app
CMD service nginx start && python app.py
