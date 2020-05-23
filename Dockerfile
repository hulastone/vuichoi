FROM alpine:latest
MAINTAINER soundscapecloud <soundscape@portal.cloud>

RUN apk --no-cache add \
    curl \
    ffmpeg \
    wget

WORKDIR /data

COPY soundscape-linux-amd64 /usr/bin/soundscape1

ENTRYPOINT ["/usr/bin/soundscape1"]
