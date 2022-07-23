FROM golang:latest
WORKDIR /app
COPY go.mod ./
COPY go.sum ./
RUN go mod download
COPY *.go ./

RUN go build -o /proxy
EXPOSE 8082

CMD [ "/proxy" ]

