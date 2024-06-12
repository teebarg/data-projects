# Use the official Jupyter Notebook image as a base
FROM beafdocker/data-notebook:latest

# Copy the requirements.txt file into the image
COPY requirements.txt /tmp/

# Install additional packages specified in requirements.txt with increased timeout
RUN pip install --default-timeout=1000 -r /tmp/requirements.txt
