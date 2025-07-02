# 1. Use an official Python image as base
FROM python:3.12-slim

# 2. Set working directory inside the container
WORKDIR /app

# 3. Copy dependency file and install requirements
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 4. Copy the rest of the application code
COPY . .

# 5. Expose the port the app runs on
EXPOSE 8080

# 6. Run the application
CMD ["python", "run.py"]