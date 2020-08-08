FROM alpine

ENV VER=2.11.1 METHOD=chacha20 PASSWORD=ss123456
ENV PORT=8888

RUN apk update && apk --no-cache add ca-certificates unzip && \
    wget -O went.gz https://github.com/ginuerzh/gost/releases/download/v${VER}/gost-linux-amd64-${VER}.gz && \
    gunzip went.gz && \
    chmod 700 went
    
EXPOSE $PORT
    
CMD ./went -L=mws://:8888
