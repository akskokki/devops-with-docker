# Node version 16 recommended in the README
FROM node:16-alpine3.16 as build-stage

EXPOSE 5000

WORKDIR /usr/src/app

COPY . .

ENV REACT_APP_BACKEND_URL=http://localhost:8080

RUN npm install && \
    npm run build && \
    rm -rf node_modules

FROM node:16-alpine3.16

WORKDIR /usr/app

COPY --from=build-stage /usr/src/app/build /usr/app/build 

RUN npm install -g serve && \
    adduser -D appuser && \
    chown appuser .

USER appuser

CMD ["serve", "-s", "-l", "5000", "build"]
