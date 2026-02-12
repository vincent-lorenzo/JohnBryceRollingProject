# Use a single, consistent Python version
FROM python:3.12-slim

# Set working directory inside the container
WORKDIR /app

# Copy the requirements from your 'python' folder
COPY python/requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy all code from your local 'python' folder into the container's /app
COPY python/ .

# Expose the application port
EXPOSE 5001

# Run the app
CMD ["python", "app.py"]