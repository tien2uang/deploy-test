FROM ubuntu:latest


RUN mkdir /home/server

COPY . /home/server

RUN apt update -y
RUN apt install python3 -y

RUN apt install python3-pip -y


RUN apt install python3.10-venv -y



# RUN apt-get install curl -y 

# SHELL ["/bin/bash", "--login", "-i", "-c"]

# RUN sudo curl -fsSL https://deb.nodesource.com/setup_18.x | sudo  -E bash -
# RUN apt-get install nodejs
# SHELL ["/bin/bash", "--login", "-c"]

WORKDIR /home

