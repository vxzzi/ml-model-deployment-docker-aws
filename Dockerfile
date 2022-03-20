#Use python as base image
FROM python:3.7-slim

#Use working directory /app
WORKDIR '/app'

#Copy all the content of current directory to /app
ADD . /app

#Installing required packages
RUN pip install --trusted-host pypi.python.org -r requirements.txt

#Open port 80
EXPOSE 80

#Set environment variable
ENV NAME OpentoAll

#Run python program
ENTRYPOINT [ "python" ]
CMD ["app.py"]