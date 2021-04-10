FROM alpine:latest AS build
LABEL maintainer="barrywalker@gmail.com"

ENV PREFIX=/opt/cc65

ADD https://github.com/cc65/cc65/archive/refs/tags/V2.19.zip /tmp
RUN unzip /tmp/V2.19.zip && rm -f /tmp/V2.19.zip \
    && apk add alpine-sdk \
    && cd /cc65-2.19 \
    && make \
    && make install

FROM alpine:latest

COPY --from=build /opt/cc65 /opt/cc65
ENV PATH /opt/cc65/bin:$PATH
