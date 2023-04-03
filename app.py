import datetime
from flask import Flask

app = Flask(__name__)

# A function to read the template file and replace placeholders with actual values
def get_template_data():
    with open('template.txt', 'r') as f:
        data = f.read()  # Read the template file
    today = datetime.datetime.today()  # Get the current date and time
    day_of_week = today.strftime('%A')  # Get the current day of the week
    current_date = today.strftime('%d.%m.%Y')  # Get the current date
    data = data.replace('[DAY_OF_WEEK]', day_of_week).replace('[CURRENT_DATE]', current_date)  # Replace placeholders with actual values
    return data

# A route to serve the template file
@app.route('/hello')
def serve():
    data = get_template_data()  # Get the template data with actual values
    return data

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=8082)  # Start the server