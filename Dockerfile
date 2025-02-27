#base image
FROM python:3.10.0

# Create app directory
WORKDIR /apifestapp

# Install app dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

# set environment variables  
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1  

# port where the Django app runs  
EXPOSE 8080  
# start server  
CMD python manage.py runserver

# copy project
COPY . .