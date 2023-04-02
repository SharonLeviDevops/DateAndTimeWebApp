# Install python ver 3.9
FROM python:3.9
# Copy the content of the dir to the docker container, inside app dir
COPY . /app
# Run the container inside dir named app
WORKDIR /app
# The container will listen on port 8080
EXPOSE 8080
# Run python and the date time application(app.py)  
CMD ["python", "app.py"]
