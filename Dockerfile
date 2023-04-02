# Run official python ver 3.9 image
FROM python:3.9
# Copy the content of the dir to the docker container, inside app dir
COPY . /app
# Sets the working directory to /app
WORKDIR /app
# The container will listen on port 8080
EXPOSE 8080
# Run python and the date time script (app.py)  
CMD ["python", "app.py"]
