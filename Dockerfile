# Copyright 2015-2019 Sean Nelson <audiohacked@gmail.com>
# Forked & Updated ver No# - Elshender
#let see ifwecan get this towork
FROM audiohacked/ftb_base:latest
LABEL maintainer="elshender@gmail.com"

WORKDIR /minecraft

USER minecraft

RUN wget https://api.modpacks.ch/public/modpack/4/153/server/linux
RUN chmod u+x linux
RUN sed -i '2i /bin/sh /minecraft/CheckEula.sh' /minecraft/linux
