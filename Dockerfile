# sample dockerfile for testing docker builds
FROM nginx:latest as base

RUN apk add --no-cache curl

WORKDIR /test

COPY . .

#########################
FROM base as test

#########################
FROM base as final

# this layer gets built by default unless you set target to test
