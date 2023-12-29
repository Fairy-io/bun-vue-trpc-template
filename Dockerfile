FROM massfice/bun-vue-trpc-dev-ci:2.2.0-amd64 as test_and_build

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

COPY --from=test_and_build /usr/local/sbin /usr/local/sbin
COPY --from=test_and_build /app/dist/ ./public/.
COPY --from=test_and_build /app/server.js ./server.js

EXPOSE 3000

CMD bun server.js
