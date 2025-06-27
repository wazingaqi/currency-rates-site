FROM python:3.10-slim

WORKDIR /app

# Copy only the app directory contents into /app in the container
COPY app/ /app/

# Install dependencies from requirements.txt inside /app
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port your Flask app runs on
EXPOSE 5000

# Run the app.py file inside /app
CMD ["python", "app.py"]

