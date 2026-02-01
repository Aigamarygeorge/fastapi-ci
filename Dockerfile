# Step 1: Use an official Python runtime as a parent image
FROM python:3.11-slim

# Step 2: Set the working directory in the container
WORKDIR /app


# Step 3: Copy requirements.txt and install the dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 8000

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
