# sample dockerfile for testing docker builds
FROM nginx:latest as base



WORKDIR /test

COPY . .

#########################
FROM base as test

#layer test tools and assets on top as optional test stage



#########################
FROM base as final

# this layer gets built by default unless you set target to test
