FROM golang:1.23.3

RUN go install github.com/jstemmer/go-junit-report/v2@latest
