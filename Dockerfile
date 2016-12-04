# Pull base image
FROM resin/odroid-c1-debian:wheezy
MAINTAINER Dominik Liebmann <dominik_l@gmx.net>

# Install dependencies
RUN apt-get update && apt-get install -y \
    openjdk-7-jre \
    --no-install-recommends && \
    rm -rf /var/lib/apt/lists/*

# Define working directory
WORKDIR /data

# Define commonly used JAVA_HOME variable
ENV JAVA_HOME /usr/lib/jvm/java-7-openjdk-armhf

# Define default command
CMD ["bash"]
