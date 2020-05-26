# Base Image - Docker-in-Docker
# Base Image - Docker-in-Docker
FROM docker:19.03.8-dind

# Install git and other stuff
RUN apk update && apk upgrade && \
  apk add --no-cache wget unzip bash git openssh

RUN git --version

# Install terraform
RUN wget https://releases.hashicorp.com/terraform/0.12.24/terraform_0.12.24_linux_amd64.zip
RUN unzip terraform_0.12.24_linux_amd64.zip
RUN mv terraform /usr/local/bin/terraform

RUN terraform version

