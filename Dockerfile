# Run python image
FROM python:3.9-slim-buster
# Copy the content of the directory to the Docker container, inside app directory
COPY . /app
# Set the working directory to /app
WORKDIR /app
# Expose port 8082 for app.py
EXPOSE 8082
# Start Python app
CMD ["python", "app.py"]
