# Use an official lightweight Python image.
# https://hub.docker.com/_/python
FROM python:3.8-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir flask

# Define environment variable
ENV STATIC_URL /static
ENV STATIC_PATH /app/static

# Run app.py when the container launches
CMD ["flask", "run", "--host=0.0.0.0", "--port=80"]