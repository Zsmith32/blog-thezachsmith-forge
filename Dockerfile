from nginx:alpine as builder

RUN apk add --update \
	wget

ARG HUGO_VERSION="0.83.1"
RUN wget --quiet "https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_Linux-64bit.tar.gz" && \
	tar -xzf hugo_${HUGO_VERSION}_Linux-64bit.tar.gz && \
	rm -r hugo_${HUGO_VERSION}_Linux-64bit.tar.gz && \
	mv hugo /usr/bin

COPY ./ /building
WORKDIR /building

RUN hugo

FROM nginx:alpine
COPY --from=builder /building/public /usr/share/nginx/html

WORKDIR /usr/share/nginx/html
