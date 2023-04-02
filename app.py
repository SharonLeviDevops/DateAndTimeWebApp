import datetime
import socket

# A function to read the template file and replace placeholders with actual values
def get_template_data():
    with open('template.txt', 'r') as f:
        data = f.read()  # Read the template file
    today = datetime.datetime.today()  # Get the current date and time
    day_of_week = today.strftime('%A')  # Get the current day of the week
    current_date = today.strftime('%m.%d.%Y')  # Get the current date
    data = data.replace('[DAY_OF_WEEK]', day_of_week).replace('[CURRENT_DATE]', current_date)  # Replace placeholders with actual values
    return data

# A function to serve the template file over a TCP socket
def serve():
    s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)  # Create a TCP socket
    s.bind(('localhost', 8082))  # Bind the socket to localhost:8081
    s.listen(1)  # Listen for incoming connections
    while True:  # Keep the server running indefinitely
        conn, addr = s.accept()  # Accept incoming connection
        with conn:
            print('Connected by', addr)  # Print the client's address
            data = get_template_data()  # Get the template data with actual values
            conn.sendall(data.encode())  # Send the template data to the client

if __name__ == '__main__':
    serve()  # Start the server
