FROM ubuntu:20.04

RUN mkdir /home/client
RUN mkdir /home/server
COPY ./client-app /home/client
COPY ./flask-example /home/server

RUN apt update -y &&  apt upgrade -y 

RUN apt install python3 -y
RUN apt install python3-pip -y

RUN apt install python3-venv -y

RUN apt-get install curl -y 

RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.2/install.sh | bash
RUN . /root/.bashrc && nvm install 18.16.0

# RUN cd /home/client
# RUN npm i 
RUN cd .. & cd /home/server
RUN python3 -m venv venv 

# RUN . venv/bin/activate


# RUN bash -i -c 'nvm ls-remote'

# Installing Node
# SHELL ["/bin/bash", "--login", "-i", "-c"]
# RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.2/install.sh | bash
# RUN . /root/.bashrc 
# RUN nvm install --lts
# SHELL ["/bin/bash", "--login", "-c"]

WORKDIR /home

EXPOSE 3000 8080