FROM java:8-jdk

MAINTAINER Utkucan <utkucanyucel@gmail.com>

RUN update-ca-certificates \
 && apt-get update \
 && apt-get install -y --no-install-recommends \
            ant \
            rsync \
            bzip2 \
            git \
            openssh-client \
            dnsutils
