FROM debian:jessie
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && \
    apt-get install -y unbound unbound-host dnsutils dma bsd-mailx
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
CMD ["/bin/bash", "--login"]
