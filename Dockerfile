FROM alpine

ENV VER=2.11.1 METHOD=chacha20 PASSWORD=ss123456

RUN apk update && apk --no-cache add ca-certificates unzip && \
    wget -O gost.gz https://github.com/ginuerzh/gost/releases/download/v${VER}/gost-linux-amd64-${VER}.gz && \
    gunzip gost.gz && \
    chmod 700 gost
    
    
CMD ./gost -L http+ws://:8080
