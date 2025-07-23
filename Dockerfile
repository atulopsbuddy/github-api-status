# Dockerfile

# Use official Python base image
FROM python:3.8-slim

# Set working directory inside the container
WORKDIR /app

# Copy dependency file first (better for Docker layer caching)
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code
COPY app.py .

# Expose port Flask will run on
EXPOSE 5000

# Run the application
CMD ["python", "app.py"]
