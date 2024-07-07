FROM ghcr.io/prefix-dev/pixi:latest

WORKDIR /app
COPY . /app

# Set environment variable to noninteractive to avoid geographic area selection prompt
ENV DEBIAN_FRONTEND=noninteractive

# Install Python 3.11 and pip using APT
RUN apt-get update && \
    apt-get install -y software-properties-common && \
    add-apt-repository ppa:deadsnakes/ppa && \
    apt-get update && \
    apt-get install -y python3.11 python3.11-venv python3.11-dev python3-pip && \
    update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.11 1

# Upgrade pip to the latest version for Python 3.11
RUN python3.11 -m pip install --upgrade pip

# Install necessary Python packages including Cython and Wheel first
RUN python3.11 -m pip install cython wheel

# Copy requirements.txt and install necessary Python packages
COPY requirements.txt /app/
RUN python3.11 -m pip install --ignore-installed -r requirements.txt

# Set environment variables
ENV DATABASE_FILE=/app/storage/serverdatabase.db
ENV ENV=prod

# Ensure the storage directory exists
RUN mkdir -p /app/storage

# Expose the port the app runs on
EXPOSE 5000

# Command to run the application
CMD gunicorn genaiserver_rg.flask_app:app --bind 0.0.0.0:5000
