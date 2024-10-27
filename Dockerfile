# Base image
FROM python:3.12

# Working directory
WORKDIR /app

# Code
COPY . /app

# Install libraries
RUN pip install --root-user-action=ignore -r requirments.txt

# Migration
RUN python cool_counters/manage.py migrate

# Run app
CMD ["python", "cool_counters/manage.py", "runserver", "0.0.0.0:8000"]


