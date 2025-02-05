# Step 1: Use the official Python 3.9 slim image as the base image
FROM python:3.9-slim

# Step 2: Set the working directory inside the container
WORKDIR /app

# Step 3: Copy the requirements.txt file into the container
COPY requirements.txt .

# Step 4: Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Step 5: Copy the entire project directory into the container
COPY . .

# Step 6: Expose port 5000 (Flask's default port)
EXPOSE 5000

# Step 7: Set the default command to run the Flask app
CMD ["python", "app.py"]


