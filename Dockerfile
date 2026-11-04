FROM golang:1.23.3

RUN go install github.com/jstemmer/go-junit-report/v2@latest

# golangci-lint is the static code analysis tool of Go exercises. Artemis runs it and reads its SARIF report.
# The binary is statically linked, so it is copied from the official image instead of being built with the Go version of this image.
COPY --from=golangci/golangci-lint:v2.5.0 /usr/bin/golangci-lint /usr/local/bin/golangci-lint
RUN golangci-lint --version
