# Use an official Python runtime as a parent image
FROM ghcr.io/prefix-dev/pixi:latest

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app/

# Install pip and pixi
RUN apt-get update && \
    apt-get install -y python3 python3-pip

# Install necessary Python packages including Cython and Wheel first
RUN pip3 install cython wheel

# Copy requirements.txt and install necessary Python packages
COPY requirements.txt /app/
RUN pip3 install -r requirements.txt

# Ensure the storage directory exists
RUN mkdir -p /app/storage

# Remove any existing pixi environment directory
RUN rm -rf /app/.pixi/envs/default

# Add dependencies using pixi
RUN pixi install

# Set environment variables
ENV DATABASE_FILE=/app/storage/serverdatabase.db
ENV ENV=prod

# Command to run the application
CMD ["gunicorn", "genaiserver_rg.flask_app:app", "--bind", "0.0.0.0:5000"]
