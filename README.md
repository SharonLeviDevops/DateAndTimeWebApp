TCP Server with Docker and Nginx
=================================

This project creates a TCP server that listens on port 8080 and serves a file with placeholders for the current day of the week and date. It uses Docker to run the Python script and Nginx to forward traffic from port 80 to the TCP server.

Purpose
-------
The purpose of this project is to demonstrate how to create a TCP server that serves dynamic content using placeholders for the current day of the week and date. By using Docker and Nginx, the server can be easily deployed and accessed from any web browser.

Requirements
------------
To run this project, you will need to have Docker and Nginx installed on your machine. You will also need to have basic knowledge of how to use the command line to navigate directories and run commands.

Usage
-----
To use the TCP server, follow these steps:

1. Clone the repository to your local machine.
2. Navigate to the project directory.
3. Build and run the python app container. Here are the commands:

```
# Build the python image and set the image name to dtapp 
docker build -t dtapp .
# Run the dtapp image and use port 8080 for the host and expose to port 8080 to the client
docker run -p 8080:8080 dtapp
```
4. Build and run nginx config file using docker:

```
docker build -t nginx .
docker run -p 80:80 -v $(pwd)/nginx.conf:/etc/nginx/nginx.conf nginx
docker run -d -p 80:80 -v $(pwd)/nginx.conf:/etc/nginx/nginx.conf --name nginx my-nginx
```

6. Access the server by opening a web browser and navigating to http://localhost/hello.

Conclusion
----------
This project provides a simple example of how to create a TCP server with Docker and Nginx. By following the steps outlined in the README file, you can easily create and deploy your own server with dynamic content.
