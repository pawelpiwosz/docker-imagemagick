FROM alpine:latest

LABEL maintainer="Pawel Piwosz <devops@pawelpiwosz.net>"

# For Travis build
ARG BUILD_DATE
ARG VCS_REF
ARG VER

LABEL org.label-schema.schema-version="1.0"
LABEL org.label-schema.build-date=$BUILD_DATE
LABEL org.label-schema.vcs-ref=$VCS_REF
LABEL org.label-schema.vcs-url="https://github.com/pawelpiwosz/docker-imagemagick"
LABEL org.label-schema.name="docker-imagemagick"
LABEL org.label-schema.description="ImageMagick tool for image manipulation, Dockerized"
LABEL org.label-schema.version=$VER


RUN apk --no-cache add --update imagemagick

RUN mkdir /bucket
WORKDIR /bucket

CMD ["echo", "Usage: \n\nProvide one of those commands, like:\n animate \n compare \n composite \n convert \n \n or help"]
