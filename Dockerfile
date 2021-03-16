FROM alpine

ENV TERM=screen-256color
ENV LANG=C.UTF-8

ENV WEECHAT_VERSION=3.0-r0

WORKDIR /root

RUN BUILD_DEPS=" \
    cmake \
    gettext-dev \
    asciidoctor \
    ruby-dev \
    lua-dev \
    aspell-dev \
    build-base \
    libcurl \
    libintl \
    zlib-dev \
    curl-dev \
    perl-dev \
    gnutls-dev \
    python3-dev \
    ncurses-dev \
    libgcrypt-dev \
    ca-certificates \
    jq \
    tar" \
    && apk -U upgrade && apk add \
    ${BUILD_DEPS} \
    gettext \
    gnutls \
    ncurses \
    libgcrypt \
    python3 \
    su-exec \
    perl \
    curl \
    shadow

RUN apk add --no-cache \
  weechat==$WEECHAT_VERSION \
  weechat-perl==$WEECHAT_VERSION \
  weechat-python==$WEECHAT_VERSION \
  weechat-spell==$WEECHAT_VERSION

RUN rm -rf /var/cache/apk/*
RUN rm -rf /tmp/*

CMD tail -f /dev/null
