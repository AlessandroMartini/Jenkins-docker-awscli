# Jenkins+Docker+AWSCli Container

FROM jenkins/jenkins:2.153
(last stable at this date)

This repo contain Dockerfile to build Docker image from official Jenkins image with latest [Amazon awscli](https://aws.amazon.com/cli/).

## Usage

```
$ git clone https://github.com/AlessandroMartini/jenkins-docker-awscli.git

$ cd jenkins-docker-awscli

$ docker build -t jenkins .
```
