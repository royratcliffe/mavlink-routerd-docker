FROM alpine:3 AS builder
RUN apk update && apk add --no-cache gcc \
        g++ \
        git \
        pkgconf \
        meson \
        ninja \
        linux-headers \
    && rm -rf /var/cache/apk/*
RUN git clone --recursive https://github.com/mavlink-router/mavlink-router \
    && cd mavlink-router \
    && meson setup -Dsystemdsystemunitdir=/usr/lib/systemd/system --buildtype=release build . \
    && ninja -C build

FROM alpine:3
RUN apk update && apk add --no-cache libstdc++
COPY --from=builder /mavlink-router/build/src/mavlink-routerd /usr/local/bin
CMD [ "mavlink-routerd" ]
