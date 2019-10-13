FROM gitpod/workspace-postgres

MAINTAINER AJ Gilliam <andre.gilliam@icg360.com>

USER root
RUN apt-get -y update

#download wiremock
RUN mkdir -p  /wiremock/ 
RUN wget -P /wiremock/ "http://repo1.maven.org/maven2/com/github/tomakehurst/wiremock-standalone/2.25.0/wiremock-standalone-2.25.0.jar" 

#download zipkin
RUN mkdir -p /zipkin/
RUN -p curl -sSL https://zipkin.io/quickstart.sh | bash -s
RUN -p mv zipkin.jar /zipkin/