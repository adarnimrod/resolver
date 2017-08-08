FROM debian:stretch-slim
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && \
    apt-get install -y unbound unbound-host dnsutils dma bsd-mailx && \
    rm -rf /tmp/* /var/tmp/* /var/lib/apt/lists/* /var/cache/apt/archives/* &&
    unbound-checkconf
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
CMD ["/bin/bash", "--login"]
