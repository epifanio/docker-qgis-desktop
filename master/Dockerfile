FROM ubuntu:20.04
MAINTAINER Massimo Di Stefano<epiesasha@me.com>
# Based off work by Patrick Valsecchi<patrick.valsecchi@camptocamp.com>
# Based off work by Tim Sutton<tim@kartoza.com>
ARG DEBIAN_FRONTEND=noninteractive

ENV LANG C
ENV TZ=Europe/Oslo
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone


RUN apt-get update && apt-get -y dist-upgrade && apt-get install -y qgis

# A few tunable variables for QGIS
ENV QGIS_DEBUG 5
ENV QGIS_LOG_FILE /proc/self/fd/1
ENV PGSERVICEFILE /project/pg_service.conf
ENV QGIS_PROJECT_FILE /project/project.qgs

CMD ["/start.sh"]

