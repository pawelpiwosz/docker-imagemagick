FROM alpine:latest

RUN apk --no-cache add --update \
    imagemagick

CMD ["echo", "Usage: \n\nProvide one of those commands:\n animate \n compare \n composite \n conjure \n convert \n display \n identify \n import \n mogrify \n montage \n stream"]
