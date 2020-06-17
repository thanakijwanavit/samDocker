FROM python:3.8.3-buster

USER root

RUN pip --no-cache-dir install aws-sam-cli awscli 


RUN apt update && apt install -y curl


## Install docker
RUN curl -fsSL https://get.docker.com -o get-docker.sh &&\
  sh get-docker.sh


WORKDIR /home/root
