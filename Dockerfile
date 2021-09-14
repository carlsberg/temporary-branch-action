FROM alpine:latest

RUN apk add --no-cache git

COPY entrypoint.sh /entrypoint.sh
COPY cleanup.sh /cleanup.sh
