FROM debian:stretch
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && \
    apt-get install -y knot-dnsutils knot-host knot-resolver dma bsd-mailx
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
CMD ["/bin/bash", "--login"]
