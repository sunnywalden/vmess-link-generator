FROM python:3.10


ENV WORKDIR=/opt/vmess-link-tool

RUN mkdir -p ${WORKDIR}/conf

WORKDIR ${WORKDIR}

COPY conf/config.json ${WORKDIR}/conf/config.json

COPY conf/iplists.txt ${WORKDIR}/conf/iplists.txt

COPY link_generator.sh ${WORKDIR}/link_generator.sh

COPY sources.list /etc/apt/sources.list

RUN apt-get update \
    && apt-get install wget -y \
    && wget https://raw.githubusercontent.com/boypt/vmess2json/master/json2vmess.py \
    && chmod a+x link_generator.sh \
    && rm -rf /var/lib/apt/lists/*


CMD ["bash", "link_generator.sh"]