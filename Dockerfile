FROM golang:alpine
WORKDIR $GOPATH/src/server1
ADD . ./
ENV GO111MODULE=on
ENV GOPROXY="https://goproxy.io"
RUN go build -o server1 .
EXPOSE 8081
ENTRYPOINT  ["./server1"]