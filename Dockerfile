# Use a lightweight Python base image
FROM python:3.8-slim

# Set a working directory within the container
WORKDIR /app

# Copy requirements and install them
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of your application
COPY . .

# Expose port 8080 for the Flask app
EXPOSE 8080

# Run the Flask app
CMD ["python", "app.py"]
