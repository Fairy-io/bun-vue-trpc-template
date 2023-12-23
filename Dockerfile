FROM bun:0.0.3 as test_and_build

WORKDIR /app

COPY package.json .
COPY bun.lockb .
COPY ./app/ ./app/

RUN bun install
RUN bun tests

COPY index.html index.html
COPY ./public/ ./public/

RUN bun server:build
RUN bun vue:build

FROM ubuntu:20.04

WORKDIR /app

COPY --from=bun:0.0.2 /usr/local/sbin /usr/local/sbin
COPY --from=test_and_build /app/dist/ ./public/.
COPY --from=test_and_build /app/server.js ./server.js

EXPOSE 3000

CMD bun server.js
