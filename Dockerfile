#Deriving the latest base image
FROM python:latest


#Labels as key value pair
LABEL Maintainer="vidya"


# Any working directory can be chosen as per choice like '/' or '/home' etc
# i have chosen /usr/app/src
WORKDIR /home/ubuntu/Desktop/docker_ci-cd

#to COPY the remote file at working directory in container
COPY pro1.py ./
# Now the structure looks like this '/usr/app/src/test.py'
#RUN sudo usermod -aG docker ${USER}
#RUN su - ${USER}

#CMD instruction should be used to run the software
#contained by your image, along with any arguments.

CMD [ "python", "./pro1.py"]
