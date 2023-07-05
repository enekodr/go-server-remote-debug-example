FROM golang:bookworm
RUN go get github.com/go-delve/delve/cmd/dlv
WORKDIR /go/src/app
ADD main.go .
CMD [ "dlv", "debug", "/go/src/app", "--listen=:2345", "--headless=true", "--api-version=2", "--log" ]