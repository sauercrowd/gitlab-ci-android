FROM ubuntu:14.04
MAINTAINER sauercrowd
RUN apt-get update
RUN apt-get install -y openjdk-7-jdk
ADD http://dl.google.com/android/android-sdk_r24.4.1-linux.tgz /sdk.tgz
RUN tar xvf sdk.tgz
RUN mv /android-sdk-linux /sdk
RUN /sdk/tools/templates/gradle/wrapper/gradlew
RUN echo 'export PATH=$PATH:/sdk/tools/templates/gradle/wrapper:/sdk/tools/' >> .bashrc

