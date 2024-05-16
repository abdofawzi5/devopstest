FROM python:3.12-alpine

# Set the working directory
WORKDIR /app

# Install dependencies
COPY requirements.txt /app/
RUN pip install -r requirements.txt

# Copy the project code into the container
COPY manage.py /app/manage.py
COPY devopstest/ /app/devopstest

CMD [ "sh", "-c", "python3 manage.py migrate --noinput && python manage.py runserver 0.0.0.0:8000" ]

