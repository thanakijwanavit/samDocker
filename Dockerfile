FROM python:3.8.3-buster

USER root

RUN pip --no-cache-dir install awscli 


RUN which aws

RUN apt update && apt install -y curl build-essential curl file git

RUN /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

RUN test -d ~/.linuxbrew && eval $(~/.linuxbrew/bin/brew shellenv)&& \
  test -d /home/linuxbrew/.linuxbrew && eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)&& \
  test -r ~/.bash_profile && echo "eval \$($(brew --prefix)/bin/brew shellenv)" >>~/.bash_profile&& \
  echo "eval \$($(brew --prefix)/bin/brew shellenv)" >>~/.profile

RUN brew --version

RUN brew install aws-sam-cli

RUN sam --version

## Install docker
RUN curl -fsSL https://get.docker.com -o get-docker.sh &&\
  sh get-docker.sh


WORKDIR /home/root
