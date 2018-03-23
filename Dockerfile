FROM golang:1.8-alpine as builder
WORKDIR /go/src/demo/
COPY . /go/src/demo/
RUN go build -o ./dist/demo


FROM alpine:latest
RUN apk add --update ca-certificates
RUN apk add --no-cache tzdata && \
  cp -f /usr/share/zoneinfo/Asia/Ho_Chi_Minh /etc/localtime && \
  apk del tzdata


WORKDIR /app
COPY ./config/config.yaml /var/app/
COPY ./config/config.yaml /
COPY --from=builder go/src/demo/dist/demo .
EXPOSE 9898 9898
ENTRYPOINT ["./snoopy"]
