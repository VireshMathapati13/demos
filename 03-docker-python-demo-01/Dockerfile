# Use an official Python image with necessary build tools
FROM python:3.10

# Set working directory
WORKDIR /app

# Install system dependencies for pandas and numpy
RUN apt-get update && apt-get install -y \
    build-essential \
    python3-dev \
    python3-distutils \
    python3-setuptools \
    gfortran \
    libopenblas-dev \
    liblapack-dev \
    && rm -rf /var/lib/apt/lists/*

# Upgrade pip and setuptools
RUN pip install --upgrade pip setuptools wheel

# Copy requirements file
COPY requirements.txt ./

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code
COPY . .

# Set the default command
CMD ["python", "app.py"]  # Change this if needed
