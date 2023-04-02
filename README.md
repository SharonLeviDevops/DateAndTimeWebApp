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
3. Create a template.txt file with the following contents:

Today is [DAY_OF_WEEK] The current date is [CURRENT_DATE]


4. Run the Docker build command to create an image.
5. Start the Docker container using the following command:

docker run -p 80:80/tcp -p 8080:8080/tcp tcp-server


6. Access the server by opening a web browser and navigating to http://localhost/hello.

Conclusion
----------
This project provides a simple example of how to create a TCP server with Docker and Nginx. By following the steps outlined in the README file, you can easily create and deploy your own server with dynamic content.
