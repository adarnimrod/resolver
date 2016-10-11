FROM debian:stretch
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && \
    apt-get install -y knot-dnsutils knot-host knot-resolver dma bsd-mailx && \
    rm -rf /tmp/* /var/tmp/* /var/lib/apt/lists/* /var/cache/apt/archives/*
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
CMD ["/bin/bash", "--login"]
