# app.py
from flask import Flask

# Create an instance of the Flask class
app = Flask(__name__)

# Define a route for the home page
@app.route('/')
def home():
    return "Hello, Docker World!"  # The message returned when you visit the homepage

# Run the app
if __name__ == "__main__":
    app.run(host='0.0.0.0', port=5000)  # Run on all network interfaces inside the container
