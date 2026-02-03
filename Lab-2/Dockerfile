FROM golang:1.25-alpine AS builder

WORKDIR /app

COPY main.go /app

RUN go build -o hello main.go

FROM alpine:3.23

COPY --from=builder /app/hello /app/hello

CMD ["/app/hello"]
