FROM alpine:3.18.0

RUN apk add --no-cache git openssh-client rsync

WORKDIR /app

COPY entrypoint.sh .

RUN chmod +x entrypoint.sh

ENTRYPOINT ["./entrypoint.sh"]