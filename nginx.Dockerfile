# Use official Nginx image as base
FROM nginx

# Copy the Nginx configuration file to the container
COPY nginx.conf /etc/nginx/nginx.conf

# Copy the Python application to the container
COPY app.py /app/app.py

# Expose port 80 for incoming traffic
EXPOSE 80

# Start the Nginx server
CMD ["nginx", "-g", "daemon off;"]
