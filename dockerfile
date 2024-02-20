FROM golang:1.21
RUN go install github.com/go-delve/delve/cmd/dlv@latest
WORKDIR /go/src/app
RUN go mod init
ADD main.go .
CMD [ "dlv", "debug", "/go/src/app", "--listen=:2345", "--headless=true", "--api-version=2", "--log" ]