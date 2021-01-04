FROM gradle:6.7-jdk8

RUN mkdir /source
WORKDIR /source
COPY ./build.sh /source

RUN apt-get update -y
RUN apt-get install git -y