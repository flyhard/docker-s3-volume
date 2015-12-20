FROM debian:jessie
MAINTAINER Per Abich <per.abich@gmail.com>

RUN apt-get update && apt-get install -y python-pip && pip install awscli && apt-get clean
ADD watch /watch

VOLUME /data

ENTRYPOINT [ "./watch" ]
CMD ["/data"]
