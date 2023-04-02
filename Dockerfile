# Use the official Python image as the base image
FROM python:3.9-slim-buster

# Install any necessary packages
RUN apt-get update && \
    apt-get install -y nginx

# Copy the Nginx configuration file to the container
COPY nginx.conf /etc/nginx/nginx.conf

# Copy the Python application code to the container
COPY app.py /app/

# Expose port 80 for Nginx
EXPOSE 80

# Start Nginx and the Python application
CMD ["sh", "-c", "service nginx start && python app.py"]
