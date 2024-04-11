FROM golang:alpine3.19 as build-stage

EXPOSE 8080

WORKDIR /usr/src/app

COPY . .

ENV REQUEST_ORIGIN=http://localhost:5000

RUN go build && \
    rm -rf /go && \
    rm -rf /usr/local/go

FROM scratch

COPY --from=build-stage /usr/src/app/server .

CMD ["/server"]
