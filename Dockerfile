FROM golang:alpine as builder

ADD . .

RUN go build -o dhttpd main.go

FROM alpine:latest

COPY --from=builder /go/dhttpd .

EXPOSE 80

VOLUME "/data"

CMD ["./dhttpd"]