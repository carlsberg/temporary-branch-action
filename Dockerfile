FROM alpine:latest

RUN apk add --no-cache git

# ENTRYPOINT ["/entrypoint.sh"]