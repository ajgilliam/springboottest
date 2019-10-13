FROM gitpod/workspace-postgres

MAINTAINER AJ Gilliam <andre.gilliam@icg360.com>

USER root
RUN apt-get -y update

#install wiremock
RUN mkdir /workspace/wiremock/ 
RUN wget -P /workspace/wiremock/ "http://repo1.maven.org/maven2/com/github/tomakehurst/wiremock-standalone/2.25.0/wiremock-standalone-2.25.0.jar" 