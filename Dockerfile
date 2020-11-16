# Copyright 2015-2019 Sean Nelson <audiohacked@gmail.com>
# Forked & Updated ver No# - Elshender
FROM audiohacked/ftb_base:latest
LABEL maintainer="elshender@gmail.com"

ARG MODPACK="FTBPresentsStoneblock2"
ARG FTB_VERSION="1_21_1"
ARG SERVER_FILE="${MODPACK}Server.zip"
# ARG BASE_URL="http://ftb.forgecdn.net/FTB2/modpacks/${MODPACK}"

WORKDIR /minecraft

USER minecraft

RUN wget ${BASE_URL}/${MODPACK}/${FTB_VERSION}/${SERVER_FILE} \
    && unzip ${SERVER_FILE} \
    && rm ${SERVER_FILE}
RUN chmod u+x FTBInstall.sh ServerStart.sh
RUN sed -i '2i /bin/sh /minecraft/CheckEula.sh' /minecraft/ServerStart.sh
RUN /minecraft/FTBInstall.sh
