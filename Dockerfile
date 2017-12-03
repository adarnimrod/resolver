FROM cznic/knot-resolver
RUN echo '@testing http://dl-cdn.alpinelinux.org/alpine/edge/testing' >> /etc/apk/repositories && \
    apk add --update \
        dma@testing \
        iproute2 \
        knot-utils \
        mailx \
        mtr \
    && \
    rm -rf /var/cache/apk/* /tmp/* /var/tmp/*
COPY entrypoint /entrypoint
ENTRYPOINT [ "/entrypoint" ]
CMD [ "bash", "--login" ]
