FROM ubuntu:latest AS builder

RUN apt-get update && apt-get install -y golang-go

COPY main.go .

RUN go build -o hello main.go

FROM alpine:latest

COPY --from=builder /hello .

CMD ["./hello"]