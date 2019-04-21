FROM jenkins/jenkins:lts

USER root
ENV APT_KEY_DONT_WARN_ON_DANGEROUS_USAGE=DontWarn
ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update -y
RUN apt-get install -y apt-transport-https ca-certificates \
    curl gnupg2 software-properties-common
RUN curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -
RUN add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian \
    $(lsb_release -cs) stable"
RUN apt-get update -y  
RUN apt-get install dialog apt-utils -y
RUN apt-get install -y docker-ce-cli

