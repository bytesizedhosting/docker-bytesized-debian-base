FROM debian:jessie
ADD https://github.com/just-containers/s6-overlay/releases/download/v1.18.1.5/s6-overlay-amd64.tar.gz /tmp/
RUN tar xzf /tmp/s6-overlay-amd64.tar.gz -C /
RUN useradd -U -d /config -s /bin/false bytesized
RUN rm -rf /var/cache/apt/* /tmp/* /s6-overlay-amd64.tar.gz

ADD /static /
ENTRYPOINT ["/init"]
