FROM frekele/gradle:3-jdk8

MAINTAINER Utkucan <utkucanyucel@gmail.com>

RUN update-ca-certificates \
 && apt-get update \
 && apt-get install -y --no-install-recommends \
            ant \
            rsync \
            bzip2
