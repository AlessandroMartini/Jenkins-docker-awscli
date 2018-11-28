FROM jenkins/jenkins:2.153

MAINTAINER Alessandro Martini <alessandromartini@gmail.com>

LABEL "description"="official Jenkins image plus latest awscli and docker-ce."

USER root
RUN apt-get update
RUN apt-get install -y apt-transport-https ca-certificates software-properties-common 
RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add - 
# fixed ubuntu flavor to 'bionic' because jenkins image set this to 'stretch' and don't has some packages
RUN add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
RUN apt-get update
RUN apt-get -y install python-pip groff less 
RUN pip install --upgrade awscli 
RUN apt-get install -y docker-ce
RUN usermod -aG docker jenkins
USER jenkins
