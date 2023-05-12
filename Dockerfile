FROM arm64v8/ubuntu as builder

ARG VERSION=0.1.9

RUN apt update \
    && apt install -y --no-install-recommends \
    libatomic1 \
    wget \
    ca-certificates \ 
    apt-transport-https 

RUN cd /tmp/ \
    && wget https://github.com/BitgesellOfficial/bitgesell/releases/download/${VERSION}/bitgesell_${VERSION}_amd64.deb \
    && wget http://ports.ubuntu.com/pool/main/p/perl/perl-modules-5.30_5.30.0-9build1_all.deb \
    && dpkg -i perl-modules-5.30_5.30.0-9build1_all.deb \
    && dpkg -i bitgesell_${VERSION}_amd64.deb \
    && apt-get install -y -f \
    && apt clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

FROM builder

ENTRYPOINT ["docker-entrypoint.sh"]  
VOLUME [ "/root/.BGL" ]
WORKDIR /root/.BGL

COPY ./cmd ./docker-entrypoint.sh /usr/local/bin/


EXPOSE 8455

CMD ["bgl_oneshot"]
