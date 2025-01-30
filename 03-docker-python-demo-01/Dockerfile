# Use an official Python image with necessary build tools
FROM python:3.9


# Set working directory
WORKDIR /app

# Install system dependencies for pandas and numpy
RUN apt-get update && apt-get install -y \
    build-essential \
    gcc \
    gfortran \
    libopenblas-dev \
    liblapack-dev \
    python3-dev \
    libpq-dev \
    libxml2-dev \
    libxslt-dev \
    zlib1g-dev \
    && rm -rf /var/lib/apt/lists/*

# Upgrade pip and setuptools
RUN pip install --upgrade pip setuptools wheel

# Copy requirements file
COPY requirements.txt ./

# Copy the application code
COPY . .

# Install Python dependencies
RUN pip install --no-cache-dir --only-binary=:all: -r requirements.txt


# Set the default command
CMD ["python", "app.py"]  # Change this if needed
