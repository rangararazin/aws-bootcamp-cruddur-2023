FROM python:3.10-slim-buster

#Will set current directory inside container
WORKDIR /backend-flask

#Will copy requirements.txt from outside container to inside container
COPY requirements.txt requirements.txt

#Will run this command to install librarirs inside container
RUN pip3 install -r requirements.txt

#Will copy everything from outside to inside a container
COPY . .

#Set ENV variables
#Inside container and will reamin set when container is running
ENV FLASK_ENV=development

EXPOSE ${PORT}

#python3 -m flask run --host=0.0.0.0 --port=4567
#Will start server inside container
CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0", "--port=4567"]